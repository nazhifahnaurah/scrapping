<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Scrapping extends Model
{
    protected $fillable=['kategori','ta','semester','file'];
    public const FORM_TYPE_SELECT = [
        'A0' => 'AO',
        'A1' => 'A1',
        'A2' => 'A2',
        'A3' => 'A3',
    ];
    public const NILAI_PENDIDIKAN_SELECT = [
        'k' => 'Asisten Ahli',
        'A0' => 'Lektor',
        'A2' => 'Lektor Kepala',
        'A3' => 'Profesor',
    ];
}
