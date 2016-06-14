<div class="top-header">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-4 col-lg-6">
                <a href="{$AbsolutePath}home"> $SiteConfig.Logo.setHeight(150)</a>
            </div>
            <div class="col-xs-12 col-sm-12 col-md-6 col-lg-4 col-md-offset-2 
                 contact-container">
                <div class="header-contact">
                    <div class="panel panel-default">
                        <div class="panel-body">
                           <h1>
                               Call <span 
                                   ng-bind="
                                       phoneFormat({$SiteConfig.PhoneContact})">
                        </span>
                           </h1>
                        </div>
                    </div>
                    
                </div>
            </div>
        </div>
    </div>
</div>
