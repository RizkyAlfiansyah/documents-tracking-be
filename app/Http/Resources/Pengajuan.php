<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;
use Faker\Factory as Faker;

class Pengajuan extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
        return [
            'id' => $this->id,
            'id_document' => $this->id_document,
            'nama' => $this->nama,
            'resi' => $this->resi,
            'nik' => $this->nik,
            'checkpoint' => $this->checkpoint,
            'status' => $this->status,
            'created_at' => $this->created_at->format('m/d/Y'),
            'updated_at' => $this->updated_at->format('m/d/Y'),
        ];
    }
}
