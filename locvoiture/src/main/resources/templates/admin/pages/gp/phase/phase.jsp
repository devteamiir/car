<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="fr">
<head>
<meta charset="UTF-8">
<title>Phase</title>
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
					Phase <small>EMSI</small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i ></i> Home</a></li>
					<li class="active">Phase</li>
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
									<th>Projet</th>
									<th>Phase</th>
									<th>Date début</th>
									<th>Date Fin</th>
									<th>Volume Horaire</th>
									<th>Action</th>
								</tr>
							</thead>
							<tbody>

								<c:forEach items="${maliste}" var="valeur">
									<tr>
										<td><c:out value="${valeur.getProjet().intitule }" /></td>
										<td><c:out value="${valeur.nomPhase }" /></td>
										<td><fmt:formatDate type="date" value="${valeur.dateDebut}" pattern="MM-dd-yyyy HH:mm"/></td>
										<td><fmt:formatDate type="date" value="${valeur.dateFin}" pattern="MM-dd-yyyy HH:mm"/></td>
										<td><c:out value="${valeur.vhPhase}" /></td>
										<td><a
											href="PhaseController?action=modifierphase&id=<c:out value="${valeur.idPhase}"/>">Modifier</a><br>
											<a
											href="PhaseController?action=supprimerphase&id=<c:out value="${valeur.idPhase}"/>">Supprimer</a></td>
									</tr>
								</c:forEach>

							</tbody>
							<tfoot>
								<tr>
									<th>Projet</th>
									<th>Phase</th>
									<th>Date début</th>
									<th>Date Fin</th>
									<th>Volume Horaire</th>
									<th>Action</th>
								</tr>
							</tfoot>
						</table>
					</div>
					<!-- /.box-body -->
				</div>
				<!-- /.box -->
				
				
				
				
				<!-- /.row -->
				<form id="formphase" action="<%=request.getContextPath()%>/PhaseController?action=ajouterphase"
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
								
									<!-- text input -->
									<div class="form-group">
										<label>Nom phase</label> <input type="text"
											class="form-control" placeholder="Entrer ..." name="nom">
									</div>
									<div class="form-group">
										<label>Date de début et fin du Phase:</label>
										<div class="input-group">
											<div class="input-group-addon">
												<i class="fa fa-calendar"></i>
											</div>
											<input type="text" class="form-control pull-right"
												id="reservation" name="date_d_f">
										</div>
										<!-- /.input group -->
									</div>

									
									<div class="form-group">
										<label>Volume Horaire</label>
										<input id="vh" type="number" class="form-control"
											placeholder="Entrer volume horaire"	name="vh" value="1">
											
									</div>
									<!-- Select multiple-->
									<div class="form-group">
										<label>Projet</label> <select 
											class="form-control" name="selectprojet">
											<c:forEach items="${listeProj}" var="valeur">
												<option value="${valeur.idProjet}" ><c:out value="${valeur.intitule}" /></option>
											</c:forEach>
										</select>
									</div>
								
									<div class="form-group">
										<button type="submit" 
											class="btn btn-primary btn-block btn-flat" name="ajouter" >Créer</button>
									</div>
									<!-- /.col -->

								
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