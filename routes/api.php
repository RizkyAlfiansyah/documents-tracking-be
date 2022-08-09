<?php

use App\Http\Controllers\api\AuthController;
use App\Http\Controllers\api\CheckpointController;
use App\Http\Controllers\api\PengajuanController;
use App\Http\Controllers\api\PrisonersController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

// Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//     return $request->user();
// });

Route::post('login', [AuthController::class, 'signin']);
Route::post('register', [AuthController::class, 'signup']);

Route::middleware('auth:sanctum')->group(function () {
    Route::resource('prisoners', PrisonersController::class);
    Route::resource('pengajuan', PengajuanController::class);
    Route::post('pengajuan/delete', [PengajuanController::class, 'remove']);
    Route::post('prisoners/delete', [PrisonersController::class, 'remove']);
    Route::post('checkpoints', [CheckpointController::class, 'create']);
    Route::delete('checkpoints/{id}', [CheckpointController::class, 'destroy']);
    Route::patch('checkpoints/{id}', [CheckpointController::class, 'edit']);
    Route::post('logout', [AuthController::class, 'logout']);
});
