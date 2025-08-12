
    <div class="col-xs-12">
    <h3 class="card-title m-t-20">{lang key="announcementstitle"}</h3>

                        <div class="row">
                            {foreach $announcements as $announcement}
                    <div class="col-lg-4 col-md-12 col-xs-12">
                            <div class="card p-4">
                                 <div class="announcement">
                                 <h4>
                        <a class="font-normal" href="{routePath('announcement-view', $announcement.id, $announcement.urlfriendlytitle)}">
                            {$announcement.title}
                        </a>
                        {if $announcement.editLink}
                            <a href="{$announcement.editLink}" class="btn btn-default btn-sm show-on-hover">
                                <i class="fas fa-pencil-alt fa-fw"></i>
                                {lang key='edit'}
                            </a>
                        {/if}
                    </h4>

                    <ul class="list-inline font-14 row">
                        <li class="list-inline-item text-muted pl-3 pr-3">
                            <i class="far fa-calendar-alt fa-fw"></i>
                            {$carbon->createFromTimestamp($announcement.timestamp)->format('jS F Y')}
                        </li>
                    </ul>

                    <article class="m-b-0 m-t-10">
                        {if $announcement.text|strip_tags|strlen < 50}
                            {$announcement.text}
                        {else}
                            {$announcement.summary}
                        {/if}
                    </article>

                    <a href="{routePath('announcement-view', $announcement.id, $announcement.urlfriendlytitle)}" class="btn btn-success waves-effect waves-light m-t-20">
                        Continue reading
                        <i class="far fa-arrow-right"></i>
                    </a>
                </div>
                </div>
                </div>
            {foreachelse}
                {include file="$template/includes/alert.tpl" type="info" msg="{lang key='noannouncements'}" textcenter=true}
            {/foreach}

                        </div>

</div>

{if $prevpage || $nextpage}
    <nav aria-label="Announcements navigation">
        <ul class="pagination">
            {foreach $pagination as $item}
                <li class="page-item{if $item.disabled} disabled{/if}{if $item.active} active{/if}">
                    <a class="page-link" href="{$item.link}">{$item.text}</a>
                </li>
            {/foreach}
        </ul>
    </nav>
{/if}

{if $announcementsFbRecommend}
    <script>
        (function(d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) {
                return;
            }
            js = d.createElement(s); js.id = id;
            js.src = "//connect.facebook.net/{lang key='locale'}/all.js#xfbml=1";
            fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));
    </script>
{/if}
