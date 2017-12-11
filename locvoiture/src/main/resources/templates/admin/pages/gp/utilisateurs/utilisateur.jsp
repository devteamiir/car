<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AdminLTE 2 | Dashboard</title>
<meta
	content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no'
	name='viewport'>
<%@ include file="/include/css.jsp"%>
</head>
<body class="skin-blue">
	<div class="wrapper">

		<%@ include file="/include/header.jsp"%>
		<!-- Left side column. contains the logo and sidebar -->

		<%@ include file="/include/aside.jsp"%>

		<!-- Right side column. Contains the navbar and content of the page -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<h1>
					Dashboard <small>Control panel</small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
					<li class="active">Dashboard</li>
				</ol>
			</section>

			<!-- Main content -->
			<section class="content">
				<div class="register-box">
					<div class="register-logo">
						<a href="../../index2.html"><b>Admin</b>LTE</a>
					</div>

					<div class="register-box-body">
						<p class="login-box-msg">Entez un nouveau utilisateur</p>
						<form action="<%= request.getContextPath() %>/UserController" method="post">
							<div class="form-group has-feedback">
								<input type="text" class="form-control" placeholder="Nom"
									name="nom"> <span
									class="glyphicon glyphicon-user form-control-feedback"></span>
							</div>
							<div class="form-group has-feedback">
								<input type="text" class="form-control" placeholder="Prenom"
									name="prenom"> <span
									class="glyphicon glyphicon-user form-control-feedback"></span>
							</div>
							<div class="form-group has-feedback">
								<input type="text" class="form-control" placeholder="Email"
									name="email"> <span
									class="glyphicon glyphicon-envelope form-control-feedback"></span>
							</div>
							<div class="form-group has-feedback">
								<input type="password" class="form-control"
									placeholder="Mot de passe" name="motpasse"> <span
									class="glyphicon glyphicon-lock form-control-feedback"></span>
							</div>
							<div class="form-group has-feedback">
								<input type="password" class="form-control"
									placeholder="Retappez le mot de passe" name="remotpasse">
								<span class="glyphicon glyphicon-log-in form-control-feedback"></span>
							</div>
							<div class="row">
								<div class="col-xs-8">
									<div class="checkbox icheck">
										<label class="">
											<div class="icheckbox_square-blue" aria-checked="false"
												aria-disabled="false" style="position: relative;">
												<input type="checkbox"
													style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;">
												<ins class="iCheck-helper"
													style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>
											</div> J'accepte les <a href="#">termes et conditions</a>
										</label>
									</div>
								</div>
								<!-- /.col -->
								<div class="col-xs-4">
									<button type="submit"
										class="btn btn-primary btn-block btn-flat">Ajouter</button>
								</div>
								<!-- /.col -->
							</div>
						</form>

						<div class="social-auth-links text-center">
							<p>- OR -</p>
							<a href="#"
								class="btn btn-block btn-social btn-facebook btn-flat"><i
								class="fa fa-facebook"></i> Sign up using Facebook</a> <a href="#"
								class="btn btn-block btn-social btn-google-plus btn-flat"><i
								class="fa fa-google-plus"></i> Sign up using Google+</a>
						</div>

						<a href="login.html" class="text-center">I already have a
							membership</a>
					</div>
					<!-- /.form-box -->
				</div>


			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->
		<%@ include file="/include/footer.jsp"%>
	</div>
	<!-- ./wrapper -->
	<%@ include file="/include/js.jsp"%>
</body>
</html>