<?php

namespace App\Http\Controllers\api;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

use App\Http\Controllers\api\BaseController as BaseController;
use App\Models\Checkpoint;

class CheckpointController extends BaseController
{
    public function create(Request $request)
    {
        $fields = [
            'id_pengajuan' => $request->id_pengajuan,
            'pesan' => $request->pesan,
            'waktu' => $request->waktu
        ];

        $rules = [
            'id_pengajuan' => ['exists:pengajuans,id'],
            'pesan' => ['required' ,'string'],
            'waktu' => ['required', 'date', 'date_format:Y-m-d H:i:s']
        ];

        $validator = Validator::make($fields, $rules);

        if ($validator->fails())
            return $this->sendError($validator->errors());

        $data = Checkpoint::create($fields);
        return $this->sendResponse($data, 'Checkpoint created successfully.');
    }

    public function destroy($id)
    {
        $fields = [
            'id' => $id,
        ];

        $rules = [
            'id' => 'exists:checkpoints,id'
        ];

        $messages = [
            'id' => "checkpoint with id $id doesn't exists"
        ];

        $validator = Validator::make($fields, $rules, $messages);

        if ($validator->fails())
            return $this->sendError($validator->errors());

        $data = Checkpoint::find($id);
        $data->delete();
        return $this->sendResponse($data, 'Checkpoint deleted successfully.');
    }

    public function edit(Request $request, $id)
    {
        $fields = [
            'id' => $id,
            'id_pengajuan' => $request->id_pengajuan,
            'pesan' => $request->pesan,
            'waktu' => $request->waktu
        ];

        $rules = [
            'id' => ['exists:checkpoints,id'],
            'id_pengajuan' => ['exists:pengajuans,id'],
            'pesan' => ['required' ,'string'],
            'waktu' => ['required', 'date', 'date_format:Y-m-d H:i:s']
        ];

        $validator = Validator::make($fields, $rules);

        if ($validator->fails())
            return $this->sendError($validator->errors());

        $data = Checkpoint::find($id);
        $data->id_pengajuan = $request->id_pengajuan;
        $data->pesan = $request->pesan;
        $data->waktu = $request->waktu;
        $data->save();

        return $this->sendResponse($data->toArray(), 'Checkpoint updated successfully');
    }
}
