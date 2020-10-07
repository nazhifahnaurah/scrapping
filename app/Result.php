<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Result extends Model
{
    protected $fillable=['scrapping_id','title','desc'];
    public const KATEGORI_SELECT = [
        'dikjar' => 'Dikjar',
        'pengabdian' => 'Pengabdian',
        'penelitian' => 'Penelitian',
        'penunjang' => 'Penunjang'
    ];
    public const TA_SELECT = [
        '2020' => '2020-2021',
        '2019' => '2019-2020',
        '2018' => '2018-2019',
        '2017' => '2017-2018'
    ];
    public const CAT_SELECT = [
        'A0.' => '10',
        'A1.' => '20',
        'A1.5' => '30',
        'A3' => '40',
    ];
    public const SEMESTER_SELECT = [
        'gare' => 'Ganjil Rencana',
        'gere' => 'Genap Rencana',
        'gala' => 'Ganjil Laporan',
        'gela' => 'Genap Laporan'
    ];
}
