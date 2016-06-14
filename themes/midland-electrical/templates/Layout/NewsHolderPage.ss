<div class="news-holder">
    <div class="container">
        <div class="row">
            <div class="col-md-12 page-heading">
                <h1>$Title</h1>
            </div>
        </div>
        <% loop $Children.Sort(Created, DESC) %>
        <div class="row news-item">
            <div class="col-md-12">
                <% if $ArticleHeaderImage %>
                <div class="row">
                    <div class="col-md-12">
                        <a href="$Link"><img 
                                class="article-header-image img-responsive" 
                                src="{$ArticleHeaderImage.setHeight(300).URL}"
                                alt="Article Heading Image"></a>
                    </div>
                </div>
                <% end_if %>
                <div class="row">
                    <div class="col-md-12 article-headings">
                        <a href="$Link"><h1>$Title</h1></a>
                        <h5>Created on $Created.Nice</h5>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12 article-summary">
                        <% if $Summary %>
                        <p>$Summary</p>
                        <% else %>
                        <p>$Content.FirstSentence</p>
                        <% end_if %>
                    </div>
                </div>
            </div>
        </div>
        <% end_loop %>
    </div>
</div>
