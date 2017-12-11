<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="fr">
<head>
<meta charset="UTF-8">
<title>DashBoard</title>
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
					Dashboard <small>EMSI</small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i ></i> Home</a></li>
					<li class="active">Dashboard</li>
				</ol>
			</section>

			<!-- Main content -->
			<section class="content">
							
				
				
				
				
				<div class="box">
                <div class="box-header">
                  <h3 class="box-title">Tableau de bord des projets</h3>
                </div><!-- /.box-header -->
                <div class="box-body">
                  <table class="table table-bordered">
                    <tbody><tr>
                      <th style="width: 10px">#</th>
                      <th>Projet</th>
                      <th>Progrès</th>
                      <th style="width: 40px">Pourcentage</th>
                    </tr>
                    
                   
                   
                    
                    <c:set var="cmp" value="0"></c:set>
                    <c:forEach var="tache" items="${progres }">
                    <c:set var="cmp" value="${cmp+1}"></c:set>
                    	 <tr>
                      <td><c:out value="${cmp }"></c:out>.</td>
                      <td><c:out value="${tache.key}"></c:out> </td>
                      <td>
                        <div class="progress progress-xs progress-striped active">
                          <div class="progress-bar progress-bar-success" style="width:${tache.value}%"></div>
                        </div>
                      </td>
                      <td><span class="badge bg-green"><fmt:formatNumber type="number" maxFractionDigits="2" value="${tache.value}"></fmt:formatNumber>%</span></td>
                    </tr>
                    </c:forEach>
                   
                   
                  </tbody></table>
                </div><!-- /.box-body -->
                <div class="box-footer clearfix">
                  <ul class="pagination pagination-sm no-margin pull-right">
                    <li><a href="#">«</a></li>
                    <li><a href="#">1</a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">»</a></li>
                  </ul>
                </div>
              </div>
              
              
              
              
              
              
              
              
				<div class="box">
                <div class="box-header">
                  <h3 class="box-title">Tableau de bord des taches</h3>
                </div><!-- /.box-header -->
                <div class="box-body">
                  <table class="table table-bordered">
                    <tbody><tr>
                      <th style="width: 10px">#</th>
                      <th>Phases</th>
                      <th>Progrès</th>
                      <th style="width: 40px">Pourcentage</th>
                    </tr>
                    
                   
                   
                    
                    <c:set var="cmp" value="0"></c:set>
                    
                    <c:forEach var="tache" items="${progresPhase }">
                    <c:set var="cmp" value="${cmp+1}"></c:set>
                    	 <tr>
                      <td><c:out value="${cmp }"></c:out>.</td>
                      <td><c:out value="${tache.key}"></c:out> </td>
                      <td>
                        <div class="progress progress-xs progress-striped active">
                          <div class="progress-bar progress-bar-success" style="width:${tache.value}%"></div>
                        </div>
                      </td>
                      <td><span class="badge bg-green"><fmt:formatNumber type="number" maxFractionDigits="2" value="${tache.value}"></fmt:formatNumber>%</span></td>
                    </tr>
                    </c:forEach>
                   
                  </tbody></table>
                </div><!-- /.box-body -->
                <div class="box-footer clearfix">
                  <ul class="pagination pagination-sm no-margin pull-right">
                    <li><a href="#">«</a></li>
                    <li><a href="#">1</a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">»</a></li>
                  </ul>
                </div>
              </div>
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