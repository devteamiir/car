<aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar" style="height: auto;">
          <!-- Sidebar user panel -->
          <div class="user-panel">
            <div class="pull-left image">
              <img src="<%= request.getContextPath() %>/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
            </div>
            <div class="pull-left info">
              <p><c:out value="${user.nomPerso } ${user.prenomPerso }"></c:out></p>

            </div>
          </div>
          <!-- search form -->
          <form action="#" method="get" class="sidebar-form">
            <div class="input-group">
              <input type="text" name="q" class="form-control" placeholder="Search...">
              <span class="input-group-btn">
                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i></button>
              </span>
            </div>
          </form>
          <!-- /.search form -->
          <!-- sidebar menu: : style can be found in sidebar.less -->
          <ul class="sidebar-menu">
            <li class="header">Menu Principal</li>
            <li class="treeview">
              <a href="<%=request.getContextPath()%>/DashboardController">
                <i class="fa fa-dashboard"></i> <span>Tableau de bord </span>
              </a>
              
            </li>
            <li class="treeview active">
              <a href="<%=request.getContextPath()%>/ProjetController">
                <i class="glyphicon glyphicon-plus"></i> <span>Projets</span> <i class="fa fa-angle-left pull-right"></i>
              </a>
               <ul class="treeview-menu menu-open" style="display: block;">
                <li class=""><a href="<%=request.getContextPath()%>/ProjetController"><i class="fa fa-circle-o"></i> Projets</a></li>
                <li class=""><a href="<%=request.getContextPath()%>/PhaseController"><i class="fa fa-circle-o"></i> Phases</a></li>
                <li><a href="<%=request.getContextPath()%>/TacheController"><i class="fa fa-circle-o"></i> Taches</a></li>
              </ul>
             
            </li>
            
            <li class="treeview">
              <a href="#">
                <i class="fa fa-files-o"></i>
                <span>Ressources</span>
              </a>
              <ul class="treeview-menu">
                <li><a href="pages/layout/top-nav.html"><i class="fa fa-circle-o"></i> Equipes</a></li>
                <li><a href="pages/layout/boxed.html"><i class="fa fa-circle-o"></i> Créer equipe</a></li>
                <li><a href="pages/layout/fixed.html"><i class="fa fa-circle-o"></i> Infos sur collaborateurs</a></li>
              </ul>
            </li>
            <li>
              <a href="<%= request.getContextPath() %>/ClinetControllerAffichage">
                <i class="fa fa-meh-o"></i> <span>Clients</span> 
              </a>
            </li>
            <li>
              <a href="<%= request.getContextPath() %>/PersonnelController">
                <i class="fa fa-user-plus"></i> <span>Personnel</span> 
              </a>
            </li>
           
            <li class="treeview">
              <a href="#">
                <i class="glyphicon glyphicon-remove-sign"></i>
                <span>Risques</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li><a href="<%= request.getContextPath() %>/DeclarationController"><i class="fa fa-circle-o"></i> Nouvelle Déclaration</a></li>
                <li><a href="<%= request.getContextPath() %>/DeclarationControllerAffichage"><i class="fa fa-circle-o"></i> Afficher Déclarations</a></li>
                <li><a href="<%= request.getContextPath() %>/ReunionController"><i class="fa fa-circle-o"></i> Réunion</a></li>
                
              </ul>
            </li>

            
            
             <li>
              <a href="<%=request.getContextPath()%>/pages/gp/mail/email.jsp">
                <i class="glyphicon glyphicon-envelope"></i> <span>Email</span> 
              </a>
            </li>
            </ul>
        </section>
        <!-- /.sidebar -->
      </aside>