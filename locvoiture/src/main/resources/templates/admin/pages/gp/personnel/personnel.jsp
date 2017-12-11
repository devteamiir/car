<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page import="com.gp.model.Client"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="fr">
<head>
<meta charset="UTF-8">
<title>Personnel</title>
<meta
	content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no'
	name='viewport'>
<%@ include file="/include/css.jsp"%>
</head>
<body class="skin-blue">
	<div class="wrapper">

		<%@ include file="/include/header.jsp"%>
		<!-- Left side column. contains the logo and sidebar -->

		<%@ include file="/include/asidechefp.jsp"%>

		<!-- Right side column. Contains the navbar and content of the page -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<h1>
					Gestion des Personnels <small>EMSI</small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
					<li class="active">Dashboard</li>
				</ol>
			</section>

			<!-- Main content -->
			<section class="content">
				<div class="box">
					<div class="box-header">
						<h3 class="box-title">Rechercher les Presonnels</h3>
					</div>
					<!-- /.box-header -->
					<div class="box-body">

						<table id="example1" class="table table-bordered table-striped">
							<thead>

								<tr>
									<th>Nom & Prenom</th>
									<th>Adresse</th>
									<th>Tel</th>
									<th>Email</th>
									<th>Date de Naissance</th>
									<th>Login</th>
									<th>Action</th>
								</tr>
							</thead>
							<tbody>

								<c:forEach items="${listePerso }" var="perso">
									<tr>
										<td><c:out
												value="${perso.nomPerso} ${perso.prenomPerso }" /></td>
										<td><c:out value="${perso.adressePerso}" /></td>
										<td><c:out value="${perso.telPerso}" /></td>
										<td><c:out value="${perso.emailPerso}" /></td>
										<td><fmt:formatDate type="date" value="${perso.dateNaissPerso}" pattern="dd/MM/yyyy"/></td>
										<td><c:out value="${perso.login}" /></td>
										<td><a
											href="PersonnelController?action=modifierperso&persoId=<c:out value="${perso.idPersonnel}"/>">Modifier</a><br>
											<a
											href="PersonnelController?action=supprimerperso&persoId=<c:out value="${perso.idPersonnel}"/>">Supprimer</a></td>
									</tr>
								</c:forEach>

							</tbody>
							<tfoot>
								<tr>
									<th>Nom & Prenom</th>
									<th>Adresse</th>
									<th>Tel</th>
									<th>Email</th>
									<th>Date de Naissance</th>
									<th>Login</th>
									<th>Action</th>
								</tr>
							</tfoot>
						</table>
					</div>
					<!-- /.box-body -->
				</div>
				<!-- /.box -->




				<div class="register-box">
					<div class="register-logo">
						<a href="../../index2.html"><b>Nouveau</b>Personnel</a>
					</div>

					<div class="register-box-body">
						<p class="login-box-msg">Entrez un nouveau personnel</p>
						<form
							action="<%=request.getContextPath()%>/PersonnelController?action=ajouterperso"
							method="post">
							<div class="form-group has-feedback">
								<input type="text" class="form-control" placeholder="Nom"
									name="nom" /> <span
									class="glyphicon glyphicon-user form-control-feedback"></span>
							</div>
							<div class="form-group has-feedback">
								<input type="text" class="form-control" placeholder="Prenom"
									name="prenom" /> <span
									class="glyphicon glyphicon-user form-control-feedback"></span>
							</div>
							<div class="form-group has-feedback">
								<input type="text" class="form-control" placeholder="Email"
									name="email" /> <span
									class="glyphicon glyphicon-envelope form-control-feedback"></span>
							</div>
							<div class="form-group has-feedback">
								<input type="text" class="form-control" placeholder="Adresse"
									name="adresse" /> <span
									class="glyphicon glyphicon-home form-control-feedback"></span>
							</div>
							<div class="form-group has-feedback">
								<input type="text" class="form-control" placeholder="Tel"
									name="tel" /> <span
									class="glyphicon glyphicon-phone form-control-feedback"></span>
							</div>

							<div class="form-group date datepicker" data-provide="datepicker">
								<input type="text" class="form-control"
									placeholder="date de naissance" name="dob">
								<div class="input-group-addon">
									<span class="glyphicon glyphicon-th"></span>
								</div>
							</div>
							<div class="form-group has-feedback">
								<input type="text" class="form-control" placeholder="login"
									name="login" /> <span
									class="glyphicon glyphicon-user form-control-feedback"></span>
							</div>
							<div class="form-group has-feedback">
								<input type="password" class="form-control"
									placeholder="password" name="password" /> <span
									class="glyphicon glyphicon-lock form-control-feedback"></span>
							</div>
							<!-- Select multiple-->
									<div class="form-group">
										<label>Fonction	</label> <select 
											class="form-control" name="selectfonction">
											
												<option value="1" >Collaborateur</option>
												<option value="2" >Admin</option>
												<option value="3" >Chef de Projet</option>
											
										</select>
									</div>
					</div>


					<div class="row">

						<div class="col-xs-4">
							<button type="submit" class="btn btn-primary btn-block btn-flat"
								name="ajouterclient">Enregistrer</button>
						</div>
						<!-- /.col -->
					</div>

					</form>

				</div>
				<!-- /.form-box -->
		</div>
		<!-- /.register-box -->

		</section>
		<!-- /.content -->
	</div>
	<!-- /.content-wrapper -->
	<%@ include file="/include/footer.jsp"%>
	</div>
	<!-- ./wrapper -->
	<%@ include file="/include/js.jsp"%>



	<!-- Page script -->
	<script
		src="<%=request.getContextPath()%>/plugins/datatables/jquery.dataTables.js"
		type="text/javascript"></script>
	<script
		src="<%=request.getContextPath()%>/plugins/datatables/dataTables.bootstrap.js"
		type="text/javascript"></script>
	<script type="text/javascript">
		$('.datepicker').datepicker({
			language : 'fr',
			format : 'yyyy-mm-dd',
		});
	</script>

	<script type="text/javascript">
		$(function() {
			//Datemask dd/mm/yyyy
			$("#datemask").inputmask("dd/-mm-yyyy", {
				"placeholder" : "dd/-mm-yyyy"
			});
			//Datemask2 mm/dd/yyyy
			$("#datemask2").inputmask("dd/-mm-yyyy", {
				"placeholder" : "dd/-mm-yyyy"
			});
			//Money Euro
			$("[data-mask]").inputmask();

			//Date range picker
			$('#reservation').daterangepicker();
			//Date range picker with time picker
			$('#reservationtime').daterangepicker({
				timePicker : true,
				timePickerIncrement : 30,
				format : 'MM/DD/YYYY h:mm A'
			});
			//Date range as a button
			$('#daterange-btn').daterangepicker(
					{
						ranges : {
							'Today' : [ moment(), moment() ],
							'Yesterday' : [ moment().subtract('days', 1),
									moment().subtract('days', 1) ],
							'Last 7 Days' : [ moment().subtract('days', 6),
									moment() ],
							'Last 30 Days' : [ moment().subtract('days', 29),
									moment() ],
							'This Month' : [ moment().startOf('month'),
									moment().endOf('month') ],
							'Last Month' : [
									moment().subtract('month', 1).startOf(
											'month'),
									moment().subtract('month', 1)
											.endOf('month') ]
						},
						startDate : moment().subtract('days', 29),
						endDate : moment()
					},
					function(start, end) {
						$('#reportrange span').html(
								start.format('MMMM D, YYYY') + ' - '
										+ end.format('MMMM D, YYYY'));
					});

			//iCheck for checkbox and radio inputs
			$('input[type="checkbox"].minimal, input[type="radio"].minimal')
					.iCheck({
						checkboxClass : 'icheckbox_minimal-blue',
						radioClass : 'iradio_minimal-blue'
					});
			//Red color scheme for iCheck
			$(
					'input[type="checkbox"].minimal-red, input[type="radio"].minimal-red')
					.iCheck({
						checkboxClass : 'icheckbox_minimal-red',
						radioClass : 'iradio_minimal-red'
					});
			//Flat red color scheme for iCheck
			$('input[type="checkbox"].flat-red, input[type="radio"].flat-red')
					.iCheck({
						checkboxClass : 'icheckbox_flat-green',
						radioClass : 'iradio_flat-green'
					});

			//Timepicker
			$(".timepicker").timepicker({
				showInputs : false
			});
		});
	</script>
	<script type="text/javascript">
		$(function() {
			$("#example1").dataTable();
			$('#example2').dataTable({
				"bPaginate" : true,
				"bLengthChange" : false,
				"bFilter" : false,
				"bSort" : true,
				"bInfo" : true,
				"bAutoWidth" : false
			});
		});
	</script>



</body>
</html>