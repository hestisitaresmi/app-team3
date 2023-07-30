@extends('index')
@section('content-wrapper')   
  <!-- Content Header (Page header) -->
  <section class="content-header">
     <div class="container-fluid">
       <div class="row mb-2">
         <div class="col-sm-6">
           <h1>Dashboard</h1>
         </div>
         <div class="col-sm-6">
           <ol class="breadcrumb float-sm-right">
             <li class="breadcrumb-item"><a href="#">Home</a></li>
             <li class="breadcrumb-item active">Dashboard</li>
           </ol>
         </div>
       </div>
     </div><!-- /.container-fluid -->
  </section>
                                    
  <section class="content">
     <!-- /.card -->
     <div class="card">
         <div class="card-header border-0">
           <h3 class="card-title">Laporan Laba Rugi</h3>
           <!-- <div class="card-tools">
             <a href="#" class="btn btn-tool btn-sm">
               <i class="fas fa-download"></i>
             </a>
             <a href="#" class="btn btn-tool btn-sm">
               <i class="fas fa-bars"></i>
             </a>
           </div> -->
         </div>
         <div class="card-body table-responsive p-0">
           <table class="table table-striped table-valign-middle">
             <thead>
             <tr>
               <th>Nama Barang</th>
               <th>Keuntungan / Kerugian</th>
             </tr>
             </thead>
             <tbody>
              @foreach ($models as $item)
                <tr>
                  <td>{{ $item->NamaBarang }}</td>
                  <td>
                  Rp {{ !empty($item->Keuntungan) ? $item->Keuntungan : 0 }} ,00
                  @if($item->Keuntungan >= 0)
                   <span class="badge badge-success">Untung</span>
                  @else
                  <span class="badge badge-danger">Rugi</span>
                  @endif
                  </td>
                </tr>
               @endforeach

             </tbody>
           </table>
         </div>
     </div>
     <!-- /.card -->
  </section>

@endsection