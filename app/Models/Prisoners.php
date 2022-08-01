<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Prisoners extends Model
{
    use HasFactory;

    protected $fillable = [
        'id_prisoner',
        'nama',
        'nik',
        'status',
    ];
}
