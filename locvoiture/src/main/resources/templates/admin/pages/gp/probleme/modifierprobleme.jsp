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
        <a href="../../index2.html"><b>Modifier</b>Problème</a>
      </div>

      <div class="register-box-body">
        <p class="login-box-msg">modifier problème</p>
        <form action="<%= request.getContextPath() %>/ProblemeController?modifier" method="post">
          <div class="form-group has-feedback">
            <input type="text" class="form-control" placeholder="Nom" name="nom" value="${probleme.nomProb}"/>
            <span class="glyphicon glyphicon-user form-control-feedback"></span>
          </div>
          
           <div class="box-body pad">
                 
                    <textarea class="textarea" placeholder="Description du Probleme" style="width: 100%;
                     height: 200px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;" name="descprob">${probleme.descProb}</textarea>
                 
                </div>
          <div class="row">
           
            <div class="col-xs-4">
              <button type="submit" class="btn btn-primary btn-block btn-flat" name="modifier">Enregistrer</button>
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