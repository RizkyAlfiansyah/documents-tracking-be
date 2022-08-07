<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Pengajuan extends Model
{
    use HasFactory;
    protected $fillable = [
        'id_document',
        'nama',
        'resi',
        'status',
        'checkpoint',
    ];

    public function checkpoints()
    {
        return $this->hasMany(Checkpoint::class, 'id_pengajuan')
                    ->orderBy('waktu', 'desc');
    }

    public function lastCheckpoint()
    {
        return $this->hasOne(Checkpoint::class, 'id_pengajuan')
                    ->orderBy('waktu', 'desc');
    }
}
