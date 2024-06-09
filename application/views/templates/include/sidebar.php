<!-- Main Sidebar Container -->
<aside class="main-sidebar sidebar-dark-primary elevation-4">
  <!-- Brand Logo -->
  <a href="<?= base_url('admin'); ?>" class="brand-link">
    <img src="<?= base_url('assets/img/img_properties/favicon.png'); ?>" alt="AdminLTE Logo" class="img-w-50">
    <span class="brand-text ml-2">Perpustakaan</span>
  </a>

  <!-- Sidebar -->
  <div class="sidebar">
    <!-- Sidebar Menu -->
    <nav class="mt-2">
      <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
        <li class="nav-item">
          <?php if (
            $_SERVER['REQUEST_URI'] == '/perpustakaan/admin/profile' || 
            $_SERVER['REQUEST_URI'] == '/perpustakaan/admin/profile/'
          ): ?>
            <a href="<?= base_url('admin/profile'); ?>" class="nav-link active"><i class="nav-icon fas fa-fw fa-user"></i> <p><?= $dataUser['username']; ?></p></a>
          <?php else: ?>
            <a href="<?= base_url('admin/profile'); ?>" class="nav-link"><i class="nav-icon fas fa-fw fa-user"></i> <p><?= $dataUser['username']; ?></p></a>
          <?php endif ?>
        </li>
        <li class="nav-item">
          <?php if (
            $_SERVER['REQUEST_URI'] == '/perpustakaan/admin' || 
            $_SERVER['REQUEST_URI'] == '/perpustakaan/admin/'
          ): ?>
            <a href="<?= base_url('admin'); ?>" class="nav-link active">
          <?php else: ?>
            <a href="<?= base_url('admin'); ?>" class="nav-link">
          <?php endif ?>
            <i class="nav-icon fas fa-tachometer-alt"></i>
            <p>
              Dashboard
            </p>
          </a>
        </li>
        
        <!-- manajemen data -->
        <?php if (
          $_SERVER['REQUEST_URI'] == '/perpustakaan/user' || 
          $_SERVER['REQUEST_URI'] == '/perpustakaan/user/' ||
          $_SERVER['REQUEST_URI'] == '/perpustakaan/anggota' || 
          $_SERVER['REQUEST_URI'] == '/perpustakaan/anggota/' ||
          $_SERVER['REQUEST_URI'] == '/perpustakaan/buku' || 
          $_SERVER['REQUEST_URI'] == '/perpustakaan/buku/' ||
          $_SERVER['REQUEST_URI'] == '/perpustakaan/transaksi' || 
          $_SERVER['REQUEST_URI'] == '/perpustakaan/transaksi/' 
        ): ?>
          <li class="nav-item menu-open">
            <a href="#" class="nav-link active">
              <i class="fas fa-align-justify nav-icon"></i>
              <p>Manajemen Data <i class="right fas fa-angle-left"></i></p>
            </a>
        <?php else: ?>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="fas fa-align-justify nav-icon"></i>
              <p>Manajemen Data <i class="right fas fa-angle-left"></i></p>
            </a>
        <?php endif ?>
          <ul class="nav nav-treeview">
            <li class="nav-item ml-3">
              <?php if (
                $_SERVER['REQUEST_URI'] == '/perpustakaan/anggota' || 
                $_SERVER['REQUEST_URI'] == '/perpustakaan/anggota/'
              ): ?>
                <a href="<?= base_url('anggota'); ?>" class="nav-link active">
                  <i class="fas fa-users nav-icon"></i>
                  <p>Anggota</p>
                </a>
              <?php else: ?>
                <a href="<?= base_url('anggota'); ?>" class="nav-link">
                  <i class="fas fa-users nav-icon"></i>
                  <p>Anggota</p>
                </a>
              <?php endif ?>
            </li>
            <li class="nav-item ml-3">
              <?php if (
                $_SERVER['REQUEST_URI'] == '/perpustakaan/buku' || 
                $_SERVER['REQUEST_URI'] == '/perpustakaan/buku/'
              ): ?>
                <a href="<?= base_url('buku'); ?>" class="nav-link active">
                  <i class="fas fa-book nav-icon"></i>
                  <p>Buku</p>
                </a>
              <?php else: ?>
                <a href="<?= base_url('buku'); ?>" class="nav-link">
                  <i class="fas fa-book nav-icon"></i>
                  <p>Buku</p>
                </a>
              <?php endif ?>
            </li>
            <li class="nav-item ml-3">
              <?php if (
                $_SERVER['REQUEST_URI'] == '/perpustakaan/transaksi' || 
                $_SERVER['REQUEST_URI'] == '/perpustakaan/transaksi/'
              ): ?>
                <a href="<?= base_url('transaksi'); ?>" class="nav-link active">
                  <i class="fas fa-handshake nav-icon"></i>
                  <p>Transaksi</p>
                </a>
              <?php else: ?>
                <a href="<?= base_url('transaksi'); ?>" class="nav-link">
                  <i class="fas fa-handshake nav-icon"></i>
                  <p>Transaksi</p>
                </a>
              <?php endif ?>
            </li>
          </ul>
        </li>
        <!-- manajemen data -->

        <li class="nav-item">
          <?php if (
            $_SERVER['REQUEST_URI'] == '/perpustakaan/laporan' || 
            $_SERVER['REQUEST_URI'] == '/perpustakaan/laporan/'
          ): ?>
            <a href="<?= base_url('laporan'); ?>" class="nav-link active">
              <i class="fas fa-file-alt nav-icon"></i>
              <p>Laporan</p>
            </a>
          <?php else: ?>
            <a href="<?= base_url('laporan'); ?>" class="nav-link">
              <i class="fas fa-file-alt nav-icon"></i>
              <p>Laporan</p>
            </a>
          <?php endif ?>
        </li>
        <div class="dropdown-divider"></div>
        <li class="nav-item">
          <?php if (
            $_SERVER['REQUEST_URI'] == '/perpustakaan/log' || 
            $_SERVER['REQUEST_URI'] == '/perpustakaan/log/'
          ): ?>
            <a href="<?= base_url('log'); ?>" class="nav-link active">
              <i class="fas fa-history nav-icon"></i>
              <p>Aktivitas</p>
            </a>
          <?php else: ?>
            <a href="<?= base_url('log'); ?>" class="nav-link">
              <i class="fas fa-history nav-icon"></i>
              <p>Aktivitas</p>
            </a>
          <?php endif ?>
        </li>
      </ul>
    </nav>
    <!-- /.sidebar-menu -->
  </div>
  <!-- /.sidebar -->
</aside>