<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;
use Faker\Factory as Faker;

class Prisoners extends JsonResource
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
            'id_prisoner' => $this->id_prisoner,
            'nama' => $this->nama,
            'nik' => $this->nik,
            'status' => $this->status,
            'created_at' => $this->created_at->format('m/d/Y'),
            'updated_at' => $this->updated_at->format('m/d/Y'),
        ];
    }
}
