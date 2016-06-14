<div class="news-item-page">
    <div class="container">
        <div class="row">
                <div class="col-md-12 breadcrumb">
                    $Breadcrumbs
                </div>            
            </div>
        <article>            
            <div class="row">
                <div class="col-md-12">
                    <h1>$Title</h1>
                </div>            
            </div>
            <div class="row">
                <div class="col-md-12 datetime">
                    <h5>Created on $Created.Nice</h5>
                </div>            
            </div>
            <% if $ArticleHeaderImage %>
            <div class="row">
                <div class="col-md-12">
                    <img class="article-header-image img-responsive" 
                         src="{$ArticleHeaderImage.setWidth(800).URL}"
                         alt="Article Heading Image">
                </div>            
            </div>
            <% end_if %>
            <div class="row">
                <div class="col-md-12 news-content">
                    $Content
                </div>            
            </div>
        </article>

    </div>
</div>
