<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Maatwebsite\Excel\Facades\Excel;
use App\Exports\DataExport;
use Dotenv\Regex\Result;
use KubAT\PhpSimple\HtmlDomParser;
use App\Result as Hasil;
use App\Scrapping;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
class ScrappingController extends Controller
{
    public function scrapping_start($scrapping_id)
    {
        $url = 'http://sdgs.ilkomunila.com/img/scrapping/Manajemen_BKD_V2_bag1.txt';
        // $url = 'https://www113.zippyshare.com/d/U9RbK6QD/630/Manajemen%20BKD%20V2%20dikjar1.htm';
        // $url = 'http://127.0.0.1:8000/admin/';
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_FOLLOWLOCATION, 1);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        $response = curl_exec($ch);
        curl_close($ch);

        $dom = HtmlDomParser::str_get_html($response);

            // $bg_orange = [];
            // foreach ($dom->find('.col-md-6 > .bg-orange') as $test) {
            //     $string_array = $test->innertext;
            //     $bg_orange[] = $string_array;
            // }
            // $sorting_1 = [];
            // foreach ($dom->find('.sorting_1') as $test) {
            //     $string_array = $test->innertext;
            //     $sorting_1[] = $string_array;
            // }
            // $result =[];
            foreach ($dom->find('.col-md-6 > .bg-orange') as $title) {
                $title_array = $title->innertext;
                foreach ($dom->find('.sorting_1') as $desc) {
                    $desc_array = $desc->innertext;
                    Hasil::create([
                        'scrapping_id'=> $scrapping_id,
                        'title'=> $title_array,
                        'desc'=>$desc_array
                    ]);
                    // array_push($result,[$title_array=>$desc->innertext]);
                }
            }
            $all = Hasil::all();
            return redirect()->route('admin.scrappings.result',$scrapping_id)->with(compact('all','scrapping_id'));
    }
    public function scrapping_result($scrapping_id){
        $all = Hasil::where('scrapping_id',$scrapping_id)->take(12)->get();
        return view('admin.scrappings.result',compact('all','scrapping_id'));
        // return $all;
    }
    public function scrapping_result_update(Request $request){
        $all = Hasil::where('scrapping_id',$request->scrapping_id)->where('id',$request->row_id)
        ->update([
            'nilai' => $request->input('nilai'),
            'form_type' => $request->input('form_type'),
            'sks' => $request->input('sks'),
        ]);
        // return view('admin.scrappings.result',compact('all','scrapping_id'));
        return redirect()->back();
        // return $all;
    }
    public function index()
    {
        abort_unless(\Gate::allows('scrapping_access'), 403);

        $scrappings = Scrapping::all();

        return view('admin.scrappings.index', compact('scrappings'));
    }
    public function url()
    {
        abort_unless(\Gate::allows('scrapping_access'), 403);

        return view('admin.scrappings.start');
    }

    public function create()
    {
        abort_unless(\Gate::allows('scrapping_create'), 403);

        return view('admin.scrappings.create');
    }

    public function store(Request $request)
    {
        abort_unless(\Gate::allows('scrapping_create'), 403);

        // $scrapping = Hasil::create($request->all());
		$file = $request->file('file');

		$nama_file = time()."_".$file->getClientOriginalName().'.txt';

      	        // isi dengan nama folder tempat kemana file diupload
		$tujuan_upload = 'file/input';
		$file->move($tujuan_upload,$nama_file);
 		$hasil = Scrapping::create([
             'kategori'=>$request->kategori,
             'ta'=>$request->ta,
             'semester'=>$request->semester,
             'file'=>$nama_file,
        ]);
        // return $hasil;
        return redirect()->route('admin.scrappings.index');
    }

    public function edit(Scrapping $scrapping)
    {
        abort_unless(\Gate::allows('scrapping_edit'), 403);

        return view('admin.scrappings.edit', compact('scrapping'));
    }

    public function update(Request $request, Scrapping $scrapping)
    {
        abort_unless(\Gate::allows('scrapping_edit'), 403);

        $scrapping->update($request->all());

        return redirect()->route('admin.scrappings.index');
    }

    public function show(Hasil $scrapping)
    {
        abort_unless(\Gate::allows('scrapping_show'), 403);

        return view('admin.scrappings.show', compact('scrapping'));
    }

    public function destroy(Hasil $scrapping)
    {
        abort_unless(\Gate::allows('scrapping_delete'), 403);

        $scrapping->delete();

        return back();
    }

    public function massDestroy(Request $request)
    {
        Hasil::whereIn('id', request('ids'))->delete();

        return response(null, 204);
    }
    public function bulk_update(Request $request)
    {
        // Hasil::whereIn('id', request('ids'))->delete();

        // return response(null, 204);
        $hasil = Hasil::where('scrapping_id',$scrapping_id)->update([
            'nilai' => $request->nilai['angka_kredit'][1],
        ]);
        return $hasil;
        // return $request;
    }
}
