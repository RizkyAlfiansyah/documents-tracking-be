<?php

namespace App\Http\Controllers\api;

use Illuminate\Http\Request;
use App\Http\Controllers\api\BaseController as BaseController;
// use Validator;
use App\Models\Prisoners;
use App\Http\Resources\Prisoners as PrisonersResource;
use Illuminate\Support\Facades\Validator;
use Faker\Generator as Faker;

class PrisonersController extends BaseController
{
    public function index()
    {
        $Prisoners = Prisoners::all();
        return $this->sendResponse(PrisonersResource::collection($Prisoners), 'Posts fetched.');
    }

    public function store(Request $request)
    {

        $faker = app(Faker::class);

        $request->request->add([
            'id_prisoner' => "_" . $faker->unique()->randomNumber(8),
            'created_at' => now(),
        ]);
        $input = $request->all();
        $validator = Validator::make($input, [
            'nama' => 'required',
            'nik' => 'required',
            'status' => 'required'
        ]);
        if ($validator->fails()) {
            return $this->sendError($validator->errors());
        }
        $Prisoners = Prisoners::create($input);
        return $this->sendResponse(new PrisonersResource($Prisoners), 'Post created.');
    }

    public function show($id)
    {
        $Prisoners = Prisoners::find($id);
        if (is_null($Prisoners)) {
            return $this->sendError('Post does not exist.');
        }
        return $this->sendResponse(new PrisonersResource($Prisoners), 'Post fetched.');
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
            'nik' => 'required',
            'status' => 'required'
        ]);
        if ($validator->fails()) {
            return $this->sendError($validator->errors());
        }
        $data = Prisoners::findOrFail($id);
        if (is_null($data)) {
            return $this->sendError('Post does not exist.');
        }
        $data->update($input);
        return $this->sendResponse(new PrisonersResource($data), 'Post updated.');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */

    public function destroy($id)
    {
        $data = Prisoners::findOrFail($id);
        $data->delete();
        return $this->sendResponse($data, 'Data deleted successfully.');
    }

    public function remove(Request $id)
    {
        Prisoners::destroy($id->id);
        return response()->json(['message' => 'Data deleted successfully.']);
    }
}
