<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="fr">
<head>
<meta charset="UTF-8">
<title>Declaration</title>
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
					Nouvelle Déclaration<small>EMSI</small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
					<li class="active">déclaration</li>
				</ol>
			</section>

			<!-- Main content -->
			<section class="content">
							
				<h3 style="color:green;"><c:out value="${msg }"></c:out></h3>
				<form action="<%=request.getContextPath()%>/DeclarationController?action=ajouter"
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

										<div class="form-group">
											<label>Risque</label> <select class="form-control"
												name="selectprobleme">
												<c:forEach items="${problemes}" var="valeur">
													<option value="${valeur.idProb}"><c:out
															value="${valeur.nomProb}" /></option>
												</c:forEach>
											</select>
										</div>


										<!-- text input -->
									<div class="form-group">
										<label>Objet de la déclaration</label> <input type="text"
											class="form-control" placeholder="Entrer ..." name="nomdec">
									</div>
									
									
									<div>
									<label>Description</label>
										<textarea class="textarea" placeholder="description" name="descdec"
											style="width: 100%; height: 125px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;"></textarea>
									</div>
									
									<div class="form-group">
										<label>Niveau de priorité</label>
										<input type="number" class="form-control"
											placeholder="Entrer volume horaire"	name="nvp" value="1">
											
									</div>
									
										
									
									
									<div class="form-group">
										<label>les taches </label> <select multiple="lesTaches" name="tachesdec"
											class="form-control">
											<c:forEach items="${lesTaches }" var="variable">
													<option value="${variable.idTache}">
													<c:out value="${variable.nomTache}" />
														
													</option>
												</c:forEach>
											
											
										</select>
									</div>
										

									
									
									
									
									

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