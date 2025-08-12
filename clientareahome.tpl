{include file="$template/includes/flashmessage.tpl"}


<div class="client-help">
<div class="card-group m-b-20">
                    <div class="card">
                    <a href="clientarea.php?action=services">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-12">
                                    <h2 class="m-b-0"><i class="ti-settings text-info"></i></h2>
                                    <h3 class="">{$clientsstats.productsnumactive}</h3>
                                    <h6 class="card-subtitle">{lang key='navservices'}</h6>
                                    </div>
                                <div class="col-12">
                                    <div class="progress">
                                        <div class="progress-bar bg-info" role="progressbar" style="width: 100%; height: 6px;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        </a>
                    </div>
                    <!-- Column -->
                    <!-- Column -->

                    {if $clientsstats.numdomains || $registerdomainenabled || $transferdomainenabled}
                    <div class="card">
                    <a href="clientarea.php?action=domains">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-12">
                                    <h2 class="m-b-0"><i class="ti-world text-success"></i></h2>
                                    <h3 class="">{$clientsstats.numactivedomains}</h3>
                                    <h6 class="card-subtitle">{lang key='navdomains'}</h6>
                                    </div>
                                <div class="col-12">
                                    <div class="progress">
                                        <div class="progress-bar bg-success" role="progressbar" style="width:100%; height: 6px;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        </a>
                    </div>
            {elseif $condlinks.affiliates && $clientsstats.isAffiliate}
            <div class="card">
                <a href="affiliates.php" class="tile">

 <div class="card-body">
                            <div class="row">
                                <div class="col-12">
                                    <h2 class="m-b-0"><i class="ti-shopping-cart text-info"></i></h2>
                                    <h3 class="">{$clientsstats.numaffiliatesignups}</h3>
                                    <h6 class="card-subtitle">{lang key='affiliatessignups'}</h6>
                                    </div>
                                <div class="col-12">
                                    <div class="progress">
                                        <div class="progress-bar bg-success" role="progressbar" style="width: 100%; height: 6px;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                </div>
                            </div>
                        </div>




                </a>
            </div>
        {else}
            <div class="col-6 col-lg-3">
                <a href="clientarea.php?action=quotes" class="tile">
                    <i class="far fa-file-alt"></i>
                    <div class="stat">{$clientsstats.numquotes}</div>
                    <div class="title">{lang key='quotes'}</div>
                    <div class="highlight bg-color-green"></div>
                </a>
            </div>
        {/if}

                    <!-- Column -->
                    <!-- Column -->
                    <div class="card">
                     <a href="supporttickets.php">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-12">
                                    <h2 class="m-b-0"><i class="ti-pencil-alt text-warning"></i></h2>
                                    <h3 class="">{$clientsstats.numactivetickets}</h3>
                                    <h6 class="card-subtitle">{lang key='navtickets'}</h6>
                                    </div>
                                <div class="col-12">
                                    <div class="progress">
                                        <div class="progress-bar bg-warning" role="progressbar" style="width:100%; height: 6px;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                      </a>
                    </div>
                    <!-- Column -->
                    <!-- Column -->
                    <div class="card">
                     <a href="clientarea.php?action=invoices">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-12">
                                    <h2 class="m-b-0"><i class="ti-receipt text-danger"></i></h2>
                                    <h3 class="">{$clientsstats.numunpaidinvoices}</h3>
                                    <h6>{lang key='navinvoices'}</h6>
                                    </div>
                                <div class="col-12">
                                    <div class="progress">
                                        <div class="progress-bar bg-danger" role="progressbar" style="width:100%; height: 6px;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                      </a>
                    </div>             
</div>

</div>

{foreach $addons_html as $addon_html}
    <div>
        {$addon_html}
    </div>
{/foreach}

<div class="client-home-cards">
    <div class="row">
        <div class="col-md-6 col-lg-12 col-xl-6">

            {function name=outputHomePanels}
                <div menuItemName="{$item->getName()}" class="card m-b-30 card-accent-{$item->getExtra('color')}{if $item->getClass()} {$item->getClass()}{/if}"{if $item->getAttribute('id')} id="{$item->getAttribute('id')}"{/if}>
                    <div class="card-header">
                        <h3 class="card-title m-0">
                            {if $item->getExtra('btn-link') && $item->getExtra('btn-text')}
                                <div class="float-right">
                                    <a href="{$item->getExtra('btn-link')}" class="btn btn-default bg-color-{$item->getExtra('color')} btn-xs">
                                        {if $item->getExtra('btn-icon')}<i class="{$item->getExtra('btn-icon')}"></i>{/if}
                                        {$item->getExtra('btn-text')}
                                    </a>
                                </div>
                            {/if}
                            {if $item->hasIcon()}<i class="{$item->getIcon()}"></i>&nbsp;{/if}
                            {$item->getLabel()}
                            {if $item->hasBadge()}&nbsp;<span class="badge">{$item->getBadge()}</span>{/if}
                        </h3>
                    </div>
                    {if $item->hasBodyHtml()}
                        <div class="card-body">
                            {$item->getBodyHtml()}
                        </div>
                    {/if}
                    {if $item->hasChildren()}
                        <div class="list-group{if $item->getChildrenAttribute('class')} {$item->getChildrenAttribute('class')}{/if}">
                            {foreach $item->getChildren() as $childItem}
                                {if $childItem->getUri()}
                                    <a menuItemName="{$childItem->getName()}" href="{$childItem->getUri()}" class="list-group-item list-group-item-action{if $childItem->getClass()} {$childItem->getClass()}{/if}{if $childItem->isCurrent()} active{/if}"{if $childItem->getAttribute('dataToggleTab')} data-toggle="tab"{/if}{if $childItem->getAttribute('target')} target="{$childItem->getAttribute('target')}"{/if} id="{$childItem->getId()}">
                                        {if $childItem->hasIcon()}<i class="{$childItem->getIcon()}"></i>&nbsp;{/if}
                                        {$childItem->getLabel()}
                                        {if $childItem->hasBadge()}&nbsp;<span class="badge">{$childItem->getBadge()}</span>{/if}
                                    </a>
                                {else}
                                    <div menuItemName="{$childItem->getName()}" class="list-group-item list-group-item-action{if $childItem->getClass()} {$childItem->getClass()}{/if}" id="{$childItem->getId()}">
                                        {if $childItem->hasIcon()}<i class="{$childItem->getIcon()}"></i>&nbsp;{/if}
                                        {$childItem->getLabel()}
                                        {if $childItem->hasBadge()}&nbsp;<span class="badge">{$childItem->getBadge()}</span>{/if}
                                    </div>
                                {/if}
                            {/foreach}
                        </div>
                    {/if}
                    <div class="card-footer">
                        {if $item->hasFooterHtml()}
                            {$item->getFooterHtml()}
                        {/if}
                    </div>
                </div>
            {/function}

            {foreach $panels as $item}
                {if $item@iteration is odd}
                    {outputHomePanels}
                {/if}
            {/foreach}

        </div>
        <div class="col-md-6 col-lg-12 col-xl-6">

            {foreach $panels as $item}
                {if $item@iteration is even}
                    {outputHomePanels}
                {/if}
            {/foreach}

        </div>
    </div>
</div>
