<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="fr">
<head>
<meta charset="UTF-8">
<title>AdminLTE 2 | Reunion</title>
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
					Nouvelle Réunion<small>Créer votre Réunion</small>
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
						<h3 class="box-title">Rechercher les Réunion</h3>
					</div>
					<!-- /.box-header -->
					<div class="box-body">

						<table id="example1" class="table table-bordered table-striped">
							<thead>

								<tr>
									<th>Déclarée par</th>
									<th>Sujet</th>
									<th>Lieu</th>
									<th>Heure de début</th>
									<th>Heure de fin</th>
									<th>Action</th>
								</tr>
							</thead>
							<tbody>

								<c:forEach items="${maliste}" var="valeur">
									<tr>
										<td><c:out value="${valeur.getChefp().nomPerso } ${valeur.getChefp().prenomPerso }" /></td>
										<td><c:out value="${valeur.sujetReunion }" /></td>
										<td><c:out value="${valeur.lieuReunion}" /></td>
										<td><fmt:formatDate type="date" value="${valeur.heureDebutRe}" pattern="dd/MM/yyyy HH:mm:ss"/></td>
										<td><fmt:formatDate type="date" value="${valeur.heureFinRe}" pattern="dd/MM/yyyy HH:mm:ss"/></td>
										<td><a
											href="ReunionController?action=modifier&id=<c:out value="${valeur.idReunion}"/>">Modifier</a><br>
											<a
											href="ReunionController?action=supprimer&id=<c:out value="${valeur.idReunion}"/>">Supprimer</a></td>
									</tr>
								</c:forEach>

							</tbody>
							<tfoot>
								<tr>
									<th>Déclarée par</th>
									<th>Sujet</th>
									<th>Lieu</th>
									<th>Heure de début</th>
									<th>Heure de fin</th>
									<th>Action</th>
								</tr>
							</tfoot>
						</table>
					</div>
					<!-- /.box-body -->
				</div>
				<!-- /.box -->
				
				<!-- /.row -->
				<form action="<%=request.getContextPath()%>/ReunionController?action=ajouter"
							method="post">
					<div class="row">
					
					<!-- right column -->
					<div class="col-md-6">
						<!-- general form elements disabled -->
						<div class="box box-warning">
							<div class="box-header">
								<h3 class="box-title">Informations Génerales</h3>
							</div>
							<!-- /.box-header -->
							<div class="box-body">
								<form role="form">
									<!-- text input -->
									<div class="form-group">
										<label>Sujet de la réunion</label> <input type="text"
											class="form-control" placeholder="Entrer ..." name="sujet">
									</div>
									<div class="form-group">
										<label>Lieu de la réunion</label> <input type="text"
											class="form-control" placeholder="Entrer ..." name="lieu">
									</div>
									
									
									<div class="form-group">
										<label>les participants </label> <select multiple="participant" name="participant"
											class="form-control">
											<c:forEach items="${listecollab }" var="variable">
													<option value="${variable.idPersonnel}">
													<c:out value="${variable.nomPerso}" />
														
													</option>
												</c:forEach>
											
											
										</select>
									</div>
									<div class="form-group">
										<label>les déclarations </label> <select multiple="declarations" name="lesdeclarations"
											class="form-control">
											<c:forEach items="${declarations }" var="variable">
													<option value="${variable.idDec}">
													<c:out value="${variable.nomDec}" />
														
													</option>
												</c:forEach>
											
											
										</select>
									</div>
										<div class="form-group">
										<label>Heure de début et fin du projet:</label>
										<div class="input-group">
											<div class="input-group-addon">
												<i class="fa fa-calendar"></i>
											</div>
												
												<input type="text" class="form-control pull-right"
												id="reservation" name="date_d_f">
										</div>
										<!-- /.input group -->
									</div>

									
									
									
									
									<!-- Select multiple-->
									

									<div class="form-group">
										<button type="submit" 
											class="btn btn-primary btn-block btn-flat" name="ajouterperso" >Créer</button>
									</div>
									<!-- /.col -->

								</form>
							</div>
							<!-- /.box-body -->
						</div>
						<!-- /.box -->
					</div>
					<!--/.col (right) -->
					
				</div>
				</form>
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
        $('input[name="date_d_f"]').daterangepicker({

    	    "locale": {
    	        "direction": "ltr",
    	        "format": "MM-DD-YYYY HH:mm",
    	        "separator": " / ",
    	        "applyLabel": "Apply",
    	        "cancelLabel": "Cancel",
    	        "fromLabel": "From",
    	        "toLabel": "To",
    	        "customRangeLabel": "Custom",
    	        "daysOfWeek": [
    	            "Di",
    	            "Lu",
    	            "Ma",
    	            "Me",
    	            "Je",
    	            "Ve",
    	            "Sa"
    	        ],
    	        "monthNames": [
    	            "Janv.",
    	            "Fév.",
    	            "Mars",
    	            "Avr.",
    	            "Mai",
    	            "Jun",
    	            "Jul",
    	            "Aoû",
    	            "Sep",
    	            "Oct",
    	            "Nov",
    	            "Déc"
    	        ],
    	        "firstDay": 1
    	    },
    	    "startDate": "05-28-2017",
    	    "endDate": "06-03-2017"
    	}, function(start, end, label) {
    	  console.log("New date range selected: ' + start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD') + ' (predefined range: ' + label + ')");
    	});
        </script>
        <script type="text/javascript">
        $(document).ready(
        		function () {
              	  $('[data-toggle="tooltip"]').tooltip()
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