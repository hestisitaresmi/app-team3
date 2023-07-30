<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Http\Request;
use App\Models\BarangM;

class Barang extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

    public function index()
    {
        return view('barang.index');
    }
    public function create(Request $request)
    {
        $model = new BarangM;
        $model->NamaBarang = $request->barang;
        $model->Keterangan = $request->keterangan;
        $model->Satuan = $request->satuan;
        $model->idPengguna = 1;
        $model->save();

        return response()->json(200);
      
    }

    public function read(Request $request)
    {
        if (isset($request->id)) {
            $data = BarangM::where('idBarang',$request->id)
                ->first();
            return response()->json($data);
        }else{
            $data = BarangM::orderBy('idBarang', 'DESC')->get();
            return response()->json($data);
        }
    }

    public function update(Request $request)
    {
        $model = BarangM::find($request['idbarang'] ?? null) ?? new BarangM;
        $model->NamaBarang = $request->barang;
        $model->Keterangan = $request->keterangan;
        $model->Satuan = $request->satuan;
        $model->idPengguna = 1;
        $model->save();

        return response()->json(200);
      
    }

    public function delete(Request $request)
    {
        $data = BarangM::where('idBarang',$request->id)->delete();
        return response()->json(200);
    }
    
}

