

{if $kbmostviews}
    <div class="card">
        <div class="card-body">
            <h3 class="card-title m-0">
                <i class="fal fa-star fa-fw"></i>
                {lang key='knowledgebasepopular'}
            </h3>
        </div>
        <div class="list-group list-group-flush">
            {foreach $kbmostviews as $kbarticle}
                <a href="{routePath('knowledgebase-article-view', {$kbarticle.id}, {$kbarticle.urlfriendlytitle})}" class="list-group-item kb-article-item">
                    <i class="fal fa-file-alt fa-fw text-black-50"></i>
                    {$kbarticle.title}
                    <small>{$kbarticle.article|truncate:100:"..."}</small>
                </a>
            {/foreach}
        </div>
    </div>
{/if}
