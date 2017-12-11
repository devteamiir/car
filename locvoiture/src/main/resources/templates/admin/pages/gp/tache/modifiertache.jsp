<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>Modifier tqche</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
  <%@ include file="/include/css.jsp"%>
   
  </head>
  <body class="register-page">
    <div class="register-box">
      <div class="register-logo">
        <a href="../../index2.html"><b>Modifier</b>Tache</a>
      </div>

      <div class="register-box-body">
        <p class="login-box-msg">modifier tache</p>

					<div class="row">
					
					<!-- right column -->
					<div class="register-box-body">
						<!-- general form elements disabled -->
						<div class="box box-warning">
							<div class="box-header">
								<h3 class="box-title">Informations Génerales</h3>
							</div>
							<!-- /.box-header -->
							<div class="box-body">
								<form role="form" action="<%=request.getContextPath()%>/TacheController"
							method="post">
									<!-- text input -->
									<div class="form-group">
										<label>Nom Tache</label> <input type="text"
											class="form-control" placeholder="Entrer ..." name="nom" value="${tache.nomTache }">
									</div>
									<div class="form-group">
										<label>Date de début et fin de tache:</label>
										<div class="input-group">
											<div class="input-group-addon">
												<i class="fa fa-calendar"></i>
											</div>
											<input type="text" class="form-control pull-right" value="${tache.dateDebutTache} / ${tache.dateFinTache }"
												id="reservation" name="date_d_f" >
										</div>
										<!-- /.input group -->
									</div>

									<div class="form-group">
										<label>Volume Horaire</label>
										<input type="number" class="form-control"
											placeholder="Entrer volume horaire"	name="vh" value="${tache.vhTache}">
											
									</div>
									<!-- Select multiple-->
									<div class="form-group">
										<label>Phase</label> <select 
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
										<label>Etat</label> 
										<br>	
											
											
												<input name="etat" data-toggle="tooltip"
													data-placement="right" data-html="true"
													title=""
													type="radio" value="neff">
												<c:out value=" Non effectué" />
												<br>
												<input name="etat" data-toggle="tooltip"
													data-placement="right" data-html="true"
													title=""
													type="radio" value="eff">
												<c:out value=" effectué" />
								
										
									</div>
									

									<div class="form-group">
										<button type="submit" 
											class="btn btn-primary btn-block btn-flat" name="modifiertache" >modifer</button>
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
				   

        

       
      </div><!-- /.form-box -->
    </div><!-- /.register-box -->

   <%@ include file="/include/js.jsp"%>
   
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

  </body>
</html>