<div class="nav-section">
    <nav class="navbar navbar-inverse navbar-static-top">
        <div class="container">

            <!-- BEGIN MAIN MENU -->

            <div class="navbar-header" role="navigation">
                <button type="button" class="navbar-toggle" ng-click="navbarCollapsed = !navbarCollapsed" ng-init="navbarCollapsed = true">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>

            <div class="collapse navbar-collapse" uib-collapse="navbarCollapsed">
                <ul class="nav navbar-nav">
                    <% loop $Menu(1) %>
                    <li><a class="$LinkingMode" href="$Link">$MenuTitle</a></li>
                    <% end_loop %>
                </ul>
            </div>                  

            <!-- END MAIN MENU -->

        </div>
    </nav>
</div>
