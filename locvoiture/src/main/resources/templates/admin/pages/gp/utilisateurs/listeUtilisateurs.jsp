<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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

				<table border="1">
					<thead>
						<th>id Utilisateur</th>
						<th>Nom</th>
						<th>Prenom</th>
						<th>Date de Création</th>
						<th>Email</th>
						<th colspan=2>Action</th>
					</thead>
					<tbody>

						<c:forEach items="${utilisateurs}" var="utilisateur">
							<tr>
								<td><c:out value="${utilisateur.idUtilisateur}" /></td>
								<td><c:out value="${utilisateur.prenom}" /></td>
								<td><c:out value="${utilisateur.nom}" /></td>
								<td><fmt:formatDate pattern="yyyy-MMM-dd"
										value="${utilisateur.datecreation}" /></td>
								<td><c:out value="${utilisateur.email}" /></td>
								<td><a
									href="UserController?action=edit&userId=<c:out value="${utilisateur.idUtilisateur}"/>">Update</a></td>
								<td><a
									href="UserController?action=delete&userId=<c:out value="${utilisateur.idUtilisateur}"/>">Delete</a></td>
							</tr>
						</c:forEach>
					</tbody>

				</table>


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