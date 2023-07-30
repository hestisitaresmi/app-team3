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

Route::group(['prefix' => '/penjualanbarang', 'as' => 'penjualanbarang.'], function () {
    Route::get('/', [\App\Http\Controllers\Beranda::class, 'index'])->name('index');

    Route::group(['prefix' => '/barang', 'as' => 'barang.'], function () {
        Route::get('/', [\App\Http\Controllers\Barang::class, 'index'])->name('index');
        Route::post('create', [\App\Http\Controllers\Barang::class, 'create'])->name('create');
        Route::get('read', [\App\Http\Controllers\Barang::class, 'read'])->name('read');
        Route::post('update', [\App\Http\Controllers\Barang::class, 'update'])->name('update');
        Route::get('delete', [\App\Http\Controllers\Barang::class, 'delete'])->name('delete');
    });

    Route::group(['prefix' => '/penjualan', 'as' => 'penjualan.'], function () {
        Route::get('/', [\App\Http\Controllers\Penjualan::class, 'index'])->name('index');
    });

    Route::group(['prefix' => '/pembelian', 'as' => 'pembelian.'], function () {
        Route::get('/', [\App\Http\Controllers\Pembelian::class, 'index'])->name('index');
    });

});
