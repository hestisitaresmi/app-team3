@extends('index')
@section('content-wrapper')   
        <!-- general form elements -->
        <section class="content-header">
            <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                <h1>Barang</h1>
                </div>
                <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                    <li class="breadcrumb-item active">Barang</li>
                </ol>
                </div>
            </div>
            </div><!-- /.container-fluid -->
        </section>
        <section class="content">
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">Form Barang</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form id="form-barang" method="get" enctype="multipart/form-data">
                 @csrf
                <div class="card-body">
                <div class="form-group">
                    <label for="exampleInputEmail1">Nama Barang</label>
                    <div class="input-group mb-3">
                    <input type="text" class="form-control" id="barang" name="barang">
                    <!-- <div class="input-group-append">
                        <span class="input-group-text">.00</span>
                    </div> -->
                    </div>
                </div>

                <div class="form-group">
                    <label for="exampleInputEmail1">Keterangan</label>
                    <div class="input-group mb-3">
                    <textarea rows="4" cols="50" class="form-control" id="keterangan" name="keterangan" >
                    </textarea>
                    <!-- <div class="input-group-append">
                        <span class="input-group-text">.00</span>
                    </div> -->
                    </div>
                </div>

                <div class="form-group">
                    <label for="exampleInputEmail1">Satuan</label>
                    <div class="input-group mb-3">
                    <input type="text" class="form-control" id="satuan" name="satuan">
                    <!-- <div class="input-group-append">
                        <span class="input-group-text">.00</span>
                    </div> -->
                    </div>
                </div>
                
                <div class="card-footer">
                  <button type="button" onclick="createBarang(this)" class="btn btn-primary">Simpan</button>
                </div>
              </form>
            </div>

            <!-- /.card -->
            <div class="card">
                <div class="card-header border-0">Daftar Barang</h3>
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
                    <th>Keterangan</th>
                    <th>Satuan</th>
                    <th>Aksi</th>
                    </tr>
                    </thead>
                    <tbody id="table-barang">
                   
                    </tbody>
                </table>
                </div>
            </div>
            <!-- /.card -->
        </section>

        <!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Edit Barang</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
            <form id="form-edit-barang" method="get" enctype="multipart/form-data">
                 @csrf
                <input type="hidden" class="form-control" id="idbarang-edit" name="idbarang">
                <div class="form-group">
                    <label for="exampleInputEmail1">Nama Barang</label>
                    <div class="input-group mb-3">
                    <input type="text" class="form-control" id="barang-edit" name="barang">
                    <!-- <div class="input-group-append">
                        <span class="input-group-text">.00</span>
                    </div> -->
                    </div>
                </div>

                <div class="form-group">
                    <label for="exampleInputEmail1">Keterangan</label>
                    <div class="input-group mb-3">
                    <textarea rows="4" cols="50" class="form-control" id="keterangan-edit" name="keterangan" >
                    </textarea>
                    <!-- <div class="input-group-append">
                        <span class="input-group-text">.00</span>
                    </div> -->
                    </div>
                </div>

                <div class="form-group">
                    <label for="exampleInputEmail1">Satuan</label>
                    <div class="input-group mb-3">
                    <input type="text" class="form-control" id="satuan-edit" name="satuan">
                    <!-- <div class="input-group-append">
                        <span class="input-group-text">.00</span>
                    </div> -->
                    </div>
                </div>
            </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" onclick="updateBarang(this)" class="btn btn-primary"  data-dismiss="modal">Save changes</button>
      </div>
    </div>
  </div>
</div>

@endsection



<script type="text/javascript">
    document.addEventListener('DOMContentLoaded', function() {
    loadBarang();
    });

     /*
    create data
    */
    function createBarang(e) {
        $.ajax({
            url: "{{ Route('penjualanbarang.barang.create') }}",
            type: "POST",
            data: $("#form-barang").serialize(),
            success: function(response) {
                document.getElementById("form-barang").reset();
                loadBarang();

            },
            error: function(request, status, error) {
                errorMessage(request);
            }
        });
    }

      /*
    create data
    */
    function updateBarang(e) {
        $.ajax({
            url: "{{ Route('penjualanbarang.barang.update') }}",
            type: "POST",
            data: $("#form-edit-barang").serialize(),
            success: function(response) {
                document.getElementById("form-edit-barang").reset();
                loadBarang();

            },
            error: function(request, status, error) {
                errorMessage(request);
            }
        });
    }

    /*
    hapus data
    */
    function deleteaBarang(id) {
        $.ajax({
            type: 'GET', //this is your method
            url: "{{ Route('penjualanbarang.barang.delete') }}",
            data: {
                id: id,
            },
            dataType: 'json',
            success: function(response) {
                loadBarang();
            }
        });
    }

       /**
     * edit barang
     */
    function editBarang(id) {
        $.ajax({
            type: 'GET', //this is your method
            url: "{{ Route('penjualanbarang.barang.read') }}",
            data: {
                id: id,
            },
            dataType: 'json',
            success: function(response) {
                $('#idbarang-edit').val(response.idBarang)
                $('#barang-edit').val(response.NamaBarang)
                $('#keterangan-edit').val(response.Keterangan)
                $('#satuan-edit').val(response.Satuan)
            }
        });
    }

    /**
     * load master barang
     */
    function loadBarang(id) {
        $.ajax({
            type: 'GET', //this is your method
            url: "{{ Route('penjualanbarang.barang.read') }}",
            data: {
                id: id,
            },
            dataType: 'json',
            success: function(response) {
                $("#table-barang").empty();
                $.each(response, function(i) {
                    $("#table-barang").append(`
                    <tr>
                        <td>
                        ` + response[i].NamaBarang + `
                        </td>
                        <td>
                          ` + response[i].Keterangan + `
                        </td>
                        <td>
                          ` + response[i].Satuan + `
                        </td>
                        <td>
                            <button 
                            onclick="editBarang( ` + response[i].idBarang + `)"
                            type="button" data-toggle="modal" data-target="#exampleModal"
                            class="btn btn-warning"> <i class="fas fa-edit"></i>Edit  </button>
                            <button 
                            onclick="deleteaBarang( ` + response[i].idBarang + `)"
                            type="button" class="btn btn-danger"><i class="fas fa-trash"></i>Delete</button>
                        </td>
                    </tr>
                    `);
                });
                
            }
        });
    }
 
</script>

                    @foreach($models as $item)
                    <tr>
                        <td>
                            {{ $item->NamaBarang }}
                        </td>
                        <td>
                        {{ $item->Keterangan }}
                        </td>
                        <td>
                        {{ $item->Satuan }}
                        </td>
                        <td>
                            <button 
                            onclick="editBarang({{ $item->idBarang }})"
                            type="button" data-toggle="modal" data-target="#exampleModal"
                            class="btn btn-warning"> <i class="fas fa-edit"></i>Edit  </button>
                            <button 
                            onclick="deleteaBarang({{ $item->idBarang }})"
                            type="button" class="btn btn-danger"><i class="fas fa-trash"></i>Delete</button>
                        </td>
                    </tr>
                    @endforeach