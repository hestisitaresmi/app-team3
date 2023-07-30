<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;


class Beranda extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

    public function index()
    {
        $profits = $this->queryDashboarLabaRugi();
        return view('content',
        [
            'models' => $profits
        ]
    );
    }

    
    public function queryDashboarLabaRugi()
    {
        $profits = DB::table('Penjualan as p')
        ->join('Barang as b', 'p.idBarang', '=', 'b.idBarang')
        ->join('Pembelian as pb', 'pb.idBarang', '=', 'b.idBarang')
        ->select('b.idBarang', 'b.NamaBarang', DB::raw('SUM((p.HargaJual - pb.HargaBeli) * p.JumlahPenjualan) AS Keuntungan'))
        ->groupBy('b.idBarang', 'b.NamaBarang')
        ->get();

        return $profits;

    }


}
