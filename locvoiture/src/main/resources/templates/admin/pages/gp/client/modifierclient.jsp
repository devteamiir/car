<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>Modifier client</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
  <%@ include file="/include/css.jsp"%>
   
  </head>
  <body class="register-page">
    <div class="register-box">
      <div class="register-logo">
        <a href="../../index2.html"><b>Modifier</b>Client</a>
      </div>

      <div class="register-box-body">
        <p class="login-box-msg">modifier client</p>
        <form action="<%= request.getContextPath() %>/ClientController" method="post">
          <div class="form-group has-feedback">
            <input type="text" class="form-control" placeholder="Nom" name="nom" value="${client.nom}"/>
            <span class="glyphicon glyphicon-user form-control-feedback"></span>
          </div>
          <div class="form-group has-feedback">
            <input type="text" class="form-control" placeholder="Prenom" name="prenom" value="${client.prenom}"/>
            <span class="glyphicon glyphicon-user form-control-feedback"></span>
          </div>
          <div class="form-group has-feedback">
            <input type="text" class="form-control" placeholder="Email" name="email" value="${client.email}"/>
            <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
          </div>
          <div class="form-group has-feedback">
            <input type="text" class="form-control" placeholder="Adresse" name="adresse" value="${client.adresse}"/>
            <span class="glyphicon glyphicon-home form-control-feedback"></span>
          </div>
          <div class="form-group has-feedback">
            <input type="text" class="form-control" placeholder="Tel" name="tel" value="${client.tel}"/>
            <span class="glyphicon glyphicon-phone form-control-feedback"></span>
          </div>
          <div class="row">
           
            <div class="col-xs-4">
              <button type="submit" class="btn btn-primary btn-block btn-flat" name="enregistrer">Enregistrer</button>
            </div><!-- /.col -->
          </div>
        </form>        

        

       
      </div><!-- /.form-box -->
    </div><!-- /.register-box -->

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