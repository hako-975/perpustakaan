<?php if (validation_errors()): ?>
  <div class="toast bg-danger" role="alert" aria-live="assertive" aria-atomic="true" data-autohide="false" style="z-index: 999999; position: fixed; right: 1.5rem; bottom: 3.5rem">
    <div class="toast-header">
      <strong class="mr-auto">Gagal!</strong>
      <button type="button" class="ml-2 mb-1 close" data-dismiss="toast" aria-label="Close">
        <span aria-hidden="true">&times;</span>
      </button>
    </div>
    <div class="toast-body">
      <?= validation_errors(); ?>
    </div>
  </div>
<?php endif ?>

<div class="container p-3">
	<div class="row mb-2">
		<div class="col-lg-6">
			<div class="card">
				<div class="card-header">
					<h3 class="m-0"><i class="fas fa-fw fa-edit"></i> Ubah User</h3>
				</div>
			  	<div class="card-body">
					<form action="<?= base_url('user/editUser/' . $user['id_user']); ?>" method="post">
						<div class="form-group">
							<label for="nama_lengkap">Nama Lengkap</label>
							<input type="text" id="nama_lengkap" class="form-control <?= (form_error('nama_lengkap')) ? 'is-invalid' : ''; ?>" name="nama_lengkap" required value="<?= (form_error('nama_lengkap')) ? set_value('nama_lengkap') : $user['nama_lengkap']; ?>">
							<div class="invalid-feedback">
				              <?= form_error('nama_lengkap'); ?>
				            </div>
						</div>
						<div class="form-group">
							<label for="username">Username</label>
							<input type="text" id="username" class="form-control <?= (form_error('username')) ? 'is-invalid' : ''; ?>" name="username" required value="<?= (form_error('username')) ? set_value('username') : $user['username']; ?>">
							<div class="invalid-feedback">
	              <?= form_error('username'); ?>
	            </div>
						</div>
						<div class="form-group text-right">
							<a href="javascript:history.back()" class="btn btn-danger btn-cancel" data-nama="Ubah User"><i class="fas fa-fw fa-times"></i> Batal</a>
							<button type="submit" class="btn btn-primary"><i class="fas fa-fw fa-save"></i> Simpan</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>


