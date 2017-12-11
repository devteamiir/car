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
<title>Client</title>
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
					Gestion des Clients <small>EMSI</small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i ></i> Home</a></li>
					<li class="active">Client</li>
				</ol>
			</section>

			<!-- Main content -->
			<section class="content">
				              <div class="box">
                <div class="box-header">
                  <h3 class="box-title">Rechercher les Clients</h3>
                </div><!-- /.box-header -->
                <div class="box-body">
                 
                  <table id="example1" class="table table-bordered table-striped">
                    <thead>
                    
                      <tr>
                        <th>Nom & Prenom</th>
                        <th>Adresse</th>
                        <th>Tel</th>
                        <th>E-Mail</th>
                        <th>Action</th>
                      </tr>
                    </thead>
                    <tbody>
                    
	                 	<c:forEach items="${listecli }" var="cli">
	                 	<tr>
	        				<td>  <c:out value = "${cli.nom} ${cli.prenom }"/></td>
	        				<td>  <c:out value = "${cli.adresse}"/></td>
	        				<td>  <c:out value = "${cli.tel}"/></td>
	        				<td>  <c:out value = "${cli.email}"/></td>
	        				<td><a href="ClientController?action=update&cliId=<c:out value="${cli.idCli}"/>">Modifier</a><br>
                   				<a href="ClientController?action=delete&cliId=<c:out value="${cli.idCli}"/>">Supprimer</a></td>
	        			</tr>
	      				</c:forEach>
                        
                    </tbody>
                    <tfoot>
                      <tr>
                        <th>Nom & Prenom</th>
                        <th>Adresse</th>
                        <th>Tel</th>
                        <th>E-Mail</th>
                        <th>Action</th>
                      </tr>
                    </tfoot>
                  </table>
                </div><!-- /.box-body -->
              </div><!-- /.box -->
              
              
              
              
                  <div class="register-box">
      <div class="register-logo">
        <a href="../../index2.html"><b>Nouveau</b>Client</a>
      </div>

      <div class="register-box-body">
        <p class="login-box-msg">Entrez un nouveau client</p>
        <form action="<%= request.getContextPath() %>/ClientController" method="post" >
          <div class="form-group has-feedback">
            <input type="text" class="form-control" placeholder="Nom" name="nom"/>
            <span class="glyphicon glyphicon-user form-control-feedback"></span>
          </div>
          <div class="form-group has-feedback">
            <input type="text" class="form-control" placeholder="Prenom" name="prenom"/>
            <span class="glyphicon glyphicon-user form-control-feedback"></span>
          </div>
          <div class="form-group has-feedback">
            <input type="text" class="form-control" placeholder="Email" name="email"/>
            <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
          </div>
          <div class="form-group has-feedback">
            <input type="text" class="form-control" placeholder="Adresse" name="adresse"/>
            <span class="glyphicon glyphicon-home form-control-feedback"></span>
          </div>
          <div class="form-group has-feedback">
            <input type="text" class="form-control" placeholder="Tel" name="tel"/>
            <span class="glyphicon glyphicon-phone form-control-feedback"></span>
          </div>
          <div class="row">
           
            <div class="col-xs-4">
              <button type="submit" class="btn btn-primary btn-block btn-flat" name="ajouterclient">Enregistrer</button>
            </div><!-- /.col -->
          </div>
        </form>        
       
      </div><!-- /.form-box -->
    </div><!-- /.register-box -->
    
			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->
		<%@ include file="/include/footer.jsp"%>
	</div>
	<!-- ./wrapper -->
<%@ include file="/include/js.jsp"%>



    <!-- Page script -->
    <script src="<%= request.getContextPath() %>/plugins/datatables/jquery.dataTables.js" type="text/javascript"></script>
    <script src="<%= request.getContextPath() %>/plugins/datatables/dataTables.bootstrap.js" type="text/javascript"></script>
    
    <script type="text/javascript">
      $(function () {
        //Datemask dd/mm/yyyy
        $("#datemask").inputmask("dd/mm/yyyy", {"placeholder": "dd/mm/yyyy"});
        //Datemask2 mm/dd/yyyy
        $("#datemask2").inputmask("mm/dd/yyyy", {"placeholder": "mm/dd/yyyy"});
        //Money Euro
        $("[data-mask]").inputmask();

        //Date range picker
        $('#reservation').daterangepicker();
        //Date range picker with time picker
        $('#reservationtime').daterangepicker({timePicker: true, timePickerIncrement: 30, format: 'MM/DD/YYYY h:mm A'});
        //Date range as a button
        $('#daterange-btn').daterangepicker(
                {
                  ranges: {
                    'Today': [moment(), moment()],
                    'Yesterday': [moment().subtract('days', 1), moment().subtract('days', 1)],
                    'Last 7 Days': [moment().subtract('days', 6), moment()],
                    'Last 30 Days': [moment().subtract('days', 29), moment()],
                    'This Month': [moment().startOf('month'), moment().endOf('month')],
                    'Last Month': [moment().subtract('month', 1).startOf('month'), moment().subtract('month', 1).endOf('month')]
                  },
                  startDate: moment().subtract('days', 29),
                  endDate: moment()
                },
        function (start, end) {
          $('#reportrange span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'));
        }
        );

        //iCheck for checkbox and radio inputs
        $('input[type="checkbox"].minimal, input[type="radio"].minimal').iCheck({
          checkboxClass: 'icheckbox_minimal-blue',
          radioClass: 'iradio_minimal-blue'
        });
        //Red color scheme for iCheck
        $('input[type="checkbox"].minimal-red, input[type="radio"].minimal-red').iCheck({
          checkboxClass: 'icheckbox_minimal-red',
          radioClass: 'iradio_minimal-red'
        });
        //Flat red color scheme for iCheck
        $('input[type="checkbox"].flat-red, input[type="radio"].flat-red').iCheck({
          checkboxClass: 'icheckbox_flat-green',
          radioClass: 'iradio_flat-green'
        });


        //Timepicker
        $(".timepicker").timepicker({
          showInputs: false
        });
      });
    </script>
    <script type="text/javascript">
      $(function () {
        $("#example1").dataTable();
        $('#example2').dataTable({
          "bPaginate": true,
          "bLengthChange": false,
          "bFilter": false,
          "bSort": true,
          "bInfo": true,
          "bAutoWidth": false
        });
      });
    </script>
	<div class="daterangepicker dropdown-menu opensleft"
		style="top: 218px; right: 25.5px; left: auto; display: none;">
		<div class="calendar left" style="display: block;">
			<div class="calendar-date">
				<table class="table-condensed">
					<thead>
						<tr>
							<th class="prev available"><i
								class="icon-arrow-left glyphicon glyphicon-arrow-left"></i></th>
							<th colspan="5" style="width: auto">May 2017</th>
							<th class="next available"><i
								class="icon-arrow-right glyphicon glyphicon-arrow-right"></i></th>
						</tr>
						<tr>
							<th>Su</th>
							<th>Mo</th>
							<th>Tu</th>
							<th>We</th>
							<th>Th</th>
							<th>Fr</th>
							<th>Sa</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="available off" data-title="r0c0">30</td>
							<td class="available" data-title="r0c1">1</td>
							<td class="available" data-title="r0c2">2</td>
							<td class="available" data-title="r0c3">3</td>
							<td class="available active start-date" data-title="r0c4">4</td>
							<td class="available in-range" data-title="r0c5">5</td>
							<td class="available in-range" data-title="r0c6">6</td>
						</tr>
						<tr>
							<td class="available in-range" data-title="r1c0">7</td>
							<td class="available in-range end-date" data-title="r1c1">8</td>
							<td class="available" data-title="r1c2">9</td>
							<td class="available" data-title="r1c3">10</td>
							<td class="available" data-title="r1c4">11</td>
							<td class="available" data-title="r1c5">12</td>
							<td class="available" data-title="r1c6">13</td>
						</tr>
						<tr>
							<td class="available" data-title="r2c0">14</td>
							<td class="available" data-title="r2c1">15</td>
							<td class="available" data-title="r2c2">16</td>
							<td class="available" data-title="r2c3">17</td>
							<td class="available" data-title="r2c4">18</td>
							<td class="available" data-title="r2c5">19</td>
							<td class="available" data-title="r2c6">20</td>
						</tr>
						<tr>
							<td class="available" data-title="r3c0">21</td>
							<td class="available" data-title="r3c1">22</td>
							<td class="available" data-title="r3c2">23</td>
							<td class="available" data-title="r3c3">24</td>
							<td class="available" data-title="r3c4">25</td>
							<td class="available" data-title="r3c5">26</td>
							<td class="available" data-title="r3c6">27</td>
						</tr>
						<tr>
							<td class="available" data-title="r4c0">28</td>
							<td class="available" data-title="r4c1">29</td>
							<td class="available" data-title="r4c2">30</td>
							<td class="available" data-title="r4c3">31</td>
							<td class="available off" data-title="r4c4">1</td>
							<td class="available off" data-title="r4c5">2</td>
							<td class="available off" data-title="r4c6">3</td>
						</tr>
						<tr>
							<td class="available off" data-title="r5c0">4</td>
							<td class="available off" data-title="r5c1">5</td>
							<td class="available off" data-title="r5c2">6</td>
							<td class="available off" data-title="r5c3">7</td>
							<td class="available off" data-title="r5c4">8</td>
							<td class="available off" data-title="r5c5">9</td>
							<td class="available off" data-title="r5c6">10</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<div class="calendar right" style="display: block;">
			<div class="calendar-date">
				<table class="table-condensed">
					<thead>
						<tr>
							<th class="prev available"><i
								class="icon-arrow-left glyphicon glyphicon-arrow-left"></i></th>
							<th colspan="5" style="width: auto">May 2017</th>
							<th class="next available"><i
								class="icon-arrow-right glyphicon glyphicon-arrow-right"></i></th>
						</tr>
						<tr>
							<th>Su</th>
							<th>Mo</th>
							<th>Tu</th>
							<th>We</th>
							<th>Th</th>
							<th>Fr</th>
							<th>Sa</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="off disabled" data-title="r0c0">30</td>
							<td class="off disabled" data-title="r0c1">1</td>
							<td class="off disabled" data-title="r0c2">2</td>
							<td class="off disabled" data-title="r0c3">3</td>
							<td class="available in-range start-date" data-title="r0c4">4</td>
							<td class="available in-range" data-title="r0c5">5</td>
							<td class="available in-range" data-title="r0c6">6</td>
						</tr>
						<tr>
							<td class="available in-range" data-title="r1c0">7</td>
							<td class="available active end-date" data-title="r1c1">8</td>
							<td class="available" data-title="r1c2">9</td>
							<td class="available" data-title="r1c3">10</td>
							<td class="available" data-title="r1c4">11</td>
							<td class="available" data-title="r1c5">12</td>
							<td class="available" data-title="r1c6">13</td>
						</tr>
						<tr>
							<td class="available" data-title="r2c0">14</td>
							<td class="available" data-title="r2c1">15</td>
							<td class="available" data-title="r2c2">16</td>
							<td class="available" data-title="r2c3">17</td>
							<td class="available" data-title="r2c4">18</td>
							<td class="available" data-title="r2c5">19</td>
							<td class="available" data-title="r2c6">20</td>
						</tr>
						<tr>
							<td class="available" data-title="r3c0">21</td>
							<td class="available" data-title="r3c1">22</td>
							<td class="available" data-title="r3c2">23</td>
							<td class="available" data-title="r3c3">24</td>
							<td class="available" data-title="r3c4">25</td>
							<td class="available" data-title="r3c5">26</td>
							<td class="available" data-title="r3c6">27</td>
						</tr>
						<tr>
							<td class="available" data-title="r4c0">28</td>
							<td class="available" data-title="r4c1">29</td>
							<td class="available" data-title="r4c2">30</td>
							<td class="available" data-title="r4c3">31</td>
							<td class="available off" data-title="r4c4">1</td>
							<td class="available off" data-title="r4c5">2</td>
							<td class="available off" data-title="r4c6">3</td>
						</tr>
						<tr>
							<td class="available off" data-title="r5c0">4</td>
							<td class="available off" data-title="r5c1">5</td>
							<td class="available off" data-title="r5c2">6</td>
							<td class="available off" data-title="r5c3">7</td>
							<td class="available off" data-title="r5c4">8</td>
							<td class="available off" data-title="r5c5">9</td>
							<td class="available off" data-title="r5c6">10</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<div class="ranges">
			<div class="range_inputs">
				<div class="daterangepicker_start_input" style="float: left">
					<label for="daterangepicker_start">From</label><input
						class="input-mini" type="text" name="daterangepicker_start"
						value="" disabled="disabled">
				</div>
				<div class="daterangepicker_end_input"
					style="float: left; padding-left: 11px">
					<label for="daterangepicker_end">To</label><input
						class="input-mini" type="text" name="daterangepicker_end" value=""
						disabled="disabled">
				</div>
				<button class="btn-success applyBtn btn btn-small">Apply</button>
				&nbsp;
				<button class="btn-default cancelBtn btn btn-small">Cancel</button>
			</div>
		</div>
	</div>
	
	
</body>
</html>