 <!-- Sidebar Menu -->
    <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
               <li class="nav-item">
                <a  href="{{ route('penjualanbarang.index') }}" class="nav-link">
                <i class="nav-icon fas fa-tachometer-alt"></i>
                  <p>Dashboard</p>
                </a>
              </li>
              <li class="nav-item">
                <a  href="{{ route('penjualanbarang.barang.index') }}" class="nav-link">
                 <i class="nav-icon fas fa-edit"></i>
                  <p>Barang</p>
                </a>
              </li>
             
              <!-- <li class="nav-item">
                <a href="{{ asset('admin/../forms/validation.html') }}" class="nav-link">
                  <i class="nav-icon fas fa-edit"></i>  
                  <p>Pengguna</p>
                </a>
              </li> -->
        </ul>
    </nav>
<!-- /.sidebar-menu -->