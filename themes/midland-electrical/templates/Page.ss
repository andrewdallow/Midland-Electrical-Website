<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"> <!--<![endif]-->
    <head>
        <meta charset="utf-8" />
        <% base_tag %>
        $MetaTags

        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
        <link rel="shortcut icon" href="{$AbsolutePath}favicon.ico?v=2" />

        <!-- IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
          <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script> 
        <![endif]-->
    </head>
    <body ng-app="MidlandElectricalApp">
        <div id="wrapper">
            <header id="header">
                <% include Header %>
                <% include MainNav %>
            </header>

            <main>
                $Layout 
            </main>

            <% include Footer %>

        </div>
    </body>
</html>
