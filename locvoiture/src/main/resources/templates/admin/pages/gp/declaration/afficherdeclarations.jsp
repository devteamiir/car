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
					Afficher Déclarations <small>EMSI</small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i ></i> Home</a></li>
					<li class="active">Déclarations</li>
				</ol>
			</section>

			<!-- Main content -->
			<section class="content">
							<div class="box">
					<div class="box-header">
						<h3 class="box-title">Rechercher les Déclarations</h3>
					</div>
					<!-- /.box-header -->
					<div class="box-body">

						<table id="example1" class="table table-bordered table-striped">
							<thead>

								<tr>
									<th>Objet</th>
									<th>Déscription</th>
									<th>Déclarée par</th>
									<th>Risque</th>
									<th>niveau de priorité</th>
									<th>Réunion</th>
									<th>Solution</th>
									<th>Déscription</th>
									<th>Action</th>
								</tr>
							</thead>
							<tbody>

								<c:forEach items="${maliste}" var="valeur">
									<tr>
										<td><c:out value="${valeur.nomDec }" /></td>
										<td><c:out value="${valeur.descDec }" /></td>
										<td><c:out value="${valeur.getCollaborateur().nomPerso } ${valeur.getCollaborateur().prenomPerso }" /></td>
										<td><c:out value="${valeur.getProbleme().nomProb}" /></td>
										<td><c:out value="${valeur.nvPriorite}" /></td>
										<td><c:out value="${valeur.getReunion().sujetReunion}" /></td>
										<td><c:out value="${valeur.getSolution().nomSolution}" /></td>
										<td><c:out value="${valeur.getSolution().descSolution}" /></td>
										<td><a
											href="ReunionController?action=reunion&idDec=<c:out value="${valeur.idDec}"/>">Réunion</a><br>
											<a
											href="DeclarationControllerAffichage?action=supprimer&id=<c:out value="${valeur.idDec}"/>">Supprimer</a></td>
									</tr>
								</c:forEach>

							</tbody>
							<tfoot>
								<tr>
									<th>Objet</th>
									<th>Déscription</th>
									<th>Déclarée par</th>
									<th>Risque</th>
									<th>niveau de priorité</th>
									<th>Réunion</th>
									<th>Solution</th>
									<th>Déscription</th>
									<th>Action</th>
								</tr>
							</tfoot>
						</table>
					</div>
					<!-- /.box-body -->
				</div>
				<!-- /.box -->
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