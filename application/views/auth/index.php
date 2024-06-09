<header>
	<nav class="navbar navbar-expand-lg navbar-light bg-white fixed-top">
	  <div class="container">
		<a class="navbar-brand d-flex align-items-center" href="<?= base_url(); ?>">
			<img src="<?= base_url('assets/img/img_properties/favicon-text.png'); ?>" class="d-inline-block align-top img-fluid img-w-40" alt="Logo">
			<h4 class="d-inline-block ml-3 mb-0">Perpustakaan</h4>
		</a>
	  </div>
	</nav>
</header>

<main class="flex-shrink-0 mt-4">
	<div class="container">
		<div class="row justify-content-center pt-4">
			<div class="col-lg-4 border p-4 rounded bg-white">
				<h3>User Login</h3>
				<form action="<?= base_url('auth/index'); ?>" method="post">
					<div class="form-group">
						<label for="username"><i class="fas fa-fw fa-user"></i> Username</label>
						<input type="text" autocomplete="off" id="username" class="form-control" name="username" required>
					</div>
					<div class="form-group">
						<label for="password"><i class="fas fa-fw fa-lock"></i> Password</label>
						<input type="password" id="password" class="form-control" name="password" required>
					</div>
					<div class="form-group row">
						<div class="col my-auto">
							<a href="<?= base_url('auth/lupaPassword'); ?>">Lupa Password?</a>
						</div>
						<div class="col my-auto text-right">
							<button type="submit" class="btn btn-primary"><i class="fas fa-fw fa-sign-in-alt"></i> Login</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</main>
