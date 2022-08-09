<?php

namespace App\Http\Controllers\api;

use Illuminate\Http\Request;
use App\Http\Controllers\api\BaseController as BaseController;
use Illuminate\Support\Facades\Auth;
// use Validator;
use App\Models\User;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class AuthController extends BaseController
{
    public function signin(Request $request)
    {
        $credential = Auth::attempt(['username' => $request->identifier, 'password' => $request->password]);
        if (!$credential)
            $credential = Auth::attempt(['nip' => $request->identifier, 'password' => $request->password]);

        if ($credential) {
            $authUser = Auth::user();
            $success['token'] =  $authUser->createToken('MyAuthApp')->plainTextToken;
            $success['name'] =  $authUser->name;

            return $this->sendResponse($success, 'User signed in');
        } else {
            return $this->sendError('Unauthorized.');
        }
    }
    public function signup(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'username' => ['required', 'unique:users,username'],
            'nip' => ['required', 'unique:users,nip'],
            'password' => 'required',
            'confirm_password' => 'required|same:password',
        ]);

        if ($validator->fails())
            return $this->sendError('Error validation', $validator->errors());

        $input = $request->all();
        $input['password'] = bcrypt($input['password']);

        $user = User::create($input);

        $success['token'] =  $user->createToken('MyAuthApp')->plainTextToken;
        $success['name'] =  $user->name;

        return $this->sendResponse($success, 'User created successfully.');
    }

    public function logout(Request $request)
    {
        // dd(Auth::user());
        auth()->user()->tokens()->delete();
        return $this->sendResponse([], 'User logged out successfully.');
    }
}
