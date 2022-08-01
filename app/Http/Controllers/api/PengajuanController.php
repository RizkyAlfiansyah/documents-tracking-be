<?php

namespace App\Http\Controllers\api;

use Illuminate\Http\Request;
use App\Http\Controllers\API\BaseController as BaseController;
// use Validator;
use App\Models\Pengajuan;
use App\Http\Resources\Pengajuan as PengajuanResource;
use Illuminate\Support\Facades\Validator;
use Faker\Generator as Faker;

class PengajuanController extends BaseController
{
    public function index()
    {
        $Pengajuan = Pengajuan::all();
        return $this->sendResponse(PengajuanResource::collection($Pengajuan), 'Posts fetched.');
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
        $Pengajuan = Pengajuan::find($id);
        if (is_null($Pengajuan)) {
            return $this->sendError('Post does not exist.');
        }
        return $this->sendResponse(new PengajuanResource($Pengajuan), 'Post fetched.');
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $input = $request->all();
        $validator = Validator::make($input, [
            'nama' => 'required',
            'resi' => 'required',
            'status' => 'required',
            'checkpoint' => 'required'
        ]);
        if ($validator->fails()) {
            return $this->sendError($validator->errors());
        }
        $data = Pengajuan::findOrFail($id);
        if (is_null($data)) {
            return $this->sendError('Post does not exist.');
        }
        $data->update($input);
        return $this->sendResponse(new PengajuanResource($data), 'Post updated.');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */

    public function destroy($id)
    {
        // dd($id);
        $data = Pengajuan::findOrFail($id);
        $data->delete();
        return $this->sendResponse($data, 'Data deleted successfully.');
    }

    public function remove(Request $id)
    {
        // dd($id);
        Pengajuan::destroy($id->id);
        return $this->sendResponse($id, 'Data deleted successfully.');
    }
}
