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
                <ul class="nav navbar-nav navbar-right social-icons icon-zoom list-unstyled list-inline">
                    <% with $SiteConfig %>
                    <% if $FacebookLink %>
                    <li><a href="$FacebookLink" target="_blank"><i class="fa fa-facebook"></i></a></li>
                    <% end_if %>
                    <% if $TwitterLink %>
                    <li><a href="$TwitterLink" target="_blank"><i class="fa fa-twitter"></i></a></li>
                    <% end_if %>
                    <% if $GoogleLink %>
                    <li><a href="$GoogleLink" target="_blank"><i class="fa fa-google-plus"></i></a></li>
                    <% end_if %>
                    <% if $YouTubeLink %>
                    <li><a href="$YouTubeLink" target="_blank"><i class="fa fa-youtube"></i></a></li>
                    <% end_if %>
                    <% end_with %> 
                </ul>
            </div>                  

            <!-- END MAIN MENU -->

        </div>
    </nav>
</div>
