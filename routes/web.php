<?php

use Illuminate\Support\Facades\Route;
// use App\Http\Controllers\LoginController;
use Illuminate\Support\Facades\DB;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::group(['prefix' => '/penjualan', 'as' => 'penjualan.'], function () {
    Route::get('/', [\App\Http\Controllers\Penjualan::class, 'index'])->name('index');
    Route::group(['prefix' => '/barang', 'as' => 'barang.'], function () {
        Route::get('/', [\App\Http\Controllers\Penjualan::class, 'barang'])->name('index');
    });
});
