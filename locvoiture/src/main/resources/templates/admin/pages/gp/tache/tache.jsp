<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="fr">
<head>
<meta charset="UTF-8">
<title>Tache</title>
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
				Tache <small>EMSI</small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i ></i> Home</a></li>
					<li class="active">Tache</li>
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
									<th>Tache</th>
									<th>Collaborateur</th>
									<th>Date début</th>
									<th>Date Fin</th>
									<th>Volume Horaire</th>
									<th>Etat</th>
									<th>Action</th>
								</tr>
							</thead>
							<tbody>

								<c:forEach items="${maliste}" var="valeur">
									<tr>
										<td><c:out value="${valeur.getPhase().getProjet().intitule}" /></td>
										<td><c:out value="${valeur.getPhase().nomPhase}" /></td>
										<td><c:out value="${valeur.nomTache }" /></td>
										<td><c:out value="${valeur.getCollaborateur().getNomPerso()} ${valeur.getCollaborateur().getprenomPerso()}" /></td>
										<td><fmt:formatDate type="date" value="${valeur.dateDebutTache}" pattern="MM-dd-yyyy HH:mm"/></td>
										<td><fmt:formatDate type="date" value="${valeur.dateFinTache}" pattern="MM-dd-yyyy HH:mm"/></td>
										<td><c:out value="${valeur.vhTache}" /></td>
										<td><c:out value="${valeur.getEtatTache()}" /></td>
										<td><a
											href="TacheController?action=modifiertache&id=<c:out value="${valeur.idTache}"/>">Modifier</a><br>
											<a
											href="TacheController?action=supprimertache&id=<c:out value="${valeur.idTache}"/>">Supprimer</a></td>
									</tr>
								</c:forEach>

							</tbody>
							<tfoot>
								<tr>
									<th>Projet</th>
									<th>Phase</th>
									<th>Collaborateur</th>
									<th>Date début</th>
									<th>Date Fin</th>
									<th>Volume Horaire</th>
									<th>Etat</th>
									<th>Action</th>
								</tr>
							</tfoot>
						</table>
					</div>
					<!-- /.box-body -->
				</div>
				<!-- /.box -->
				
				
				
				
				<!-- /.row -->
				<form action="<%=request.getContextPath()%>/TacheController?action=ajoutertache"
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
										<label>Nom tache</label> <input type="text"
											class="form-control" placeholder="Entrer ..." name="nom">
									</div>
									<div class="form-group">
										<label>Date de début et fin du Tache:</label>
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
										<input type="number" class="form-control"
											placeholder="Entrer volume horaire"	name="vh" value="1">
											
									</div>
									<!-- Select multiple-->
									<div class="form-group">
										<label>Phases</label> <select 
											class="form-control" name="selectphase">
											<c:forEach items="${listePhase}" var="valeur">
												<option value="${valeur.idPhase}" ><c:out value="${valeur.nomPhase}" /></option>
											</c:forEach>
										</select>
									</div>
									<div class="form-group">
										<label>Collaborateur</label> 
										<br>	
											<c:forEach items="${listeCollab}" var="valeur">
											
												<input name="optradio" data-toggle="tooltip"
													data-placement="right" data-html="true"
													title="<img src='pages/gp/projet/profile.png' class=img-responsive> 
													<br> Nom: ${valeur.nomPerso}
													<br>Prenom:  ${valeur.prenomPerso}
													<br>Email: ${valeur.emailPerso}"
													type="radio" value="${valeur.idPersonnel}">
												<c:out value="${valeur.prenomPerso} ${valeur.nomPerso}" />
												<br>
											</c:forEach>
										
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