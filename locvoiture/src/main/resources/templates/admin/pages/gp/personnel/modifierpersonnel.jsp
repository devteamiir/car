<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>Modifier Personnel</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
  <%@ include file="/include/css.jsp"%>
   
  </head>
  <body class="register-page">
    <div class="register-box">
      <div class="register-logo">
        <a href="../../index2.html"><b>Modifier</b>Personnel</a>
      </div>

      <div class="register-box-body">
        <p class="login-box-msg">modifier personnel</p>
        <form action="<%=request.getContextPath()%>/PersonnelController" method="post">
          <div class="form-group has-feedback">
            <input type="text" class="form-control" placeholder="Nom" name="nom" value="${personne.nomPerso}"/>
            <span class="glyphicon glyphicon-user form-control-feedback"></span>
          </div>
          <div class="form-group has-feedback">
            <input type="text" class="form-control" placeholder="Prenom" name="prenom" value="${personne.prenomPerso}"/>
            <span class="glyphicon glyphicon-user form-control-feedback"></span>
          </div>
          <div class="form-group has-feedback">
            <input type="text" class="form-control" placeholder="Email" name="email" value="${personne.emailPerso}"/>
            <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
          </div>
          <div class="form-group has-feedback">
            <input type="text" class="form-control" placeholder="Adresse" name="adresse" value="${personne.adressePerso}"/>
            <span class="glyphicon glyphicon-home form-control-feedback"></span>
          </div>
          <div class="form-group has-feedback">
            <input type="text" class="form-control" placeholder="Tel" name="tel" value="${personne.telPerso}"/>
            <span class="glyphicon glyphicon-phone form-control-feedback"></span>
          </div>
          
							<div class="form-group date datepicker" data-provide="datepicker">
							
								<input type="text" class="form-control"
									placeholder="date de naissance" name="dob" value="<fmt:formatDate type="date" value="${personne.dateNaissPerso}" pattern="yyyy-MM-dd"/>">
								<div class="input-group-addon">
									<span class="glyphicon glyphicon-th"></span>
								</div>
							</div>
							<div class="form-group has-feedback">
								<input type="text" class="form-control" placeholder="login" value="${personne.login}"
									name="login" /> <span
									class="glyphicon glyphicon-user form-control-feedback"></span>
							</div>
							<div class="form-group has-feedback">
								<input type="password" class="form-control" value="${personne.password}"
									placeholder="password" name="password" /> <span
									class="glyphicon glyphicon-lock form-control-feedback"></span>
							</div>
          
          <div class="row">
           
            <div class="col-xs-4">
              <button type="submit" class="btn btn-primary btn-block btn-flat" name="modifierperso">Enregistrer</button>
            </div><!-- /.col -->
          </div>
        </form>        

        

       
      </div><!-- /.form-box -->
    </div><!-- /.register-box -->

   <%@ include file="/include/js.jsp"%>
   <script type="text/javascript">
		$('.datepicker').datepicker({
			language : 'fr',
			format : 'yyyy-mm-dd',
		});
	</script>
    <script>
      $(function () {
        $('input').iCheck({
          checkboxClass: 'icheckbox_square-blue',
          radioClass: 'iradio_square-blue',
          increaseArea: '20%' // optional
        });
      });
    </script>
  </body>
</html>