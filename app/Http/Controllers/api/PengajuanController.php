<?php

namespace App\Http\Controllers\api;

use Illuminate\Http\Request;
use App\Http\Controllers\api\BaseController as BaseController;
use App\Models\Pengajuan;
use App\Http\Resources\Pengajuan as PengajuanResource;
use Illuminate\Support\Facades\Validator;
use Faker\Generator as Faker;

class PengajuanController extends BaseController
{
    public function index()
    {
        $pengajuan = Pengajuan::with(['lastCheckpoint'])->get();
        return $this->sendResponse($pengajuan, 'Posts fetched.');
    }

    public function store(Request $request)
    {

        $faker = app(Faker::class);

        $request->request->add([
            'id_document' => "_" . $faker->unique()->randomNumber(8),
            'resi' => $faker->unique()->randomNumber(8) . "MRS",
            'created_at' => now(),
        ]);

        $input = $request->all();

        $validator = Validator::make($input, [
            'nama' => 'required',
            'resi' => 'required',
            'status' => 'required'
        ]);

        if ($validator->fails()) {
            return $this->sendError($validator->errors());
        }

        $Pengajuan = Pengajuan::create($input);

        return $this->sendResponse(new PengajuanResource($Pengajuan), 'Post created.');
    }

    public function show($id)
    {
        $fields = ['id' => $id];

        $rules = [
            'id' => ['exists:pengajuans,id']
        ];

        $validator = Validator::make($fields, $rules);

        if ($validator->fails())
            return $this->sendError('Post does not exist.');

        $pengajuan = Pengajuan::where('id', $id)
                                ->with(['checkpoints'])
                                ->first()
                                ->toArray();

        $pengajuan['created_at'] = (new \DateTime($pengajuan['created_at']))->format('m/d/Y');
        $pengajuan['updated_at'] = (new \DateTime($pengajuan['updated_at']))->format('m/d/Y');

        return $this->sendResponse($pengajuan, 'Post fetched.');
    }

    public function update(Request $request, $id)
    {
        $input = $request->all();
        $validator = Validator::make($input, [
            'nama' => 'required',
            'resi' => 'required',
            'status' => 'required',
            'checkpoint' => 'required'
        ]);

        if ($validator->fails())
            return $this->sendError($validator->errors());

        $data = Pengajuan::findOrFail($id);

        if (is_null($data))
            return $this->sendError('Post does not exist.');

        $data->update($input);
        return $this->sendResponse(new PengajuanResource($data), 'Post updated.');
    }

    public function destroy($id)
    {
        $data = Pengajuan::findOrFail($id);
        $data->delete();
        return $this->sendResponse($data, 'Data deleted successfully.');
    }

    public function remove(Request $id)
    {
        Pengajuan::destroy($id->id);
        return $this->sendResponse($id, 'Data deleted successfully.');
    }
}
