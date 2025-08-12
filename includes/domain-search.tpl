

<div class="container-fluid">

<div class="row">
                    <!-- Column -->
                    <div class="col-lg-6 col-xl-6 col-md-12 col-sm-12 col-xs-12 domain-outer-box">
                        <div class="card">
                            <div class="card-body p-t-30 p-b-30">
                                        <div class="d-flex flex-wrap">
                                            
                                                <h4 class="card-title domain-title">{lang key="secureYourDomainShort"}</h4>

                                        </div>
                                        
<form method="post" action="domainchecker.php" id="frmDomainHomepage">
    <div class="home-domain-search bg-white">
        
            <div class="clearfix">
                <input type="hidden" name="transfer" />
                <div class="input-group-wrapper">
                    <div class="input-group">
                        <input type="text" class="form-control" name="domain" placeholder="{lang key="exampledomain"}" autocapitalize="none">
                        <span class="input-group-append d-none d-sm-block">
                            {if $registerdomainenabled}
                                <button type="submit" class="btn btn-primary{$captcha->getButtonClass($captchaForm)}" id="btnDomainSearch">
                                    {lang key="search"}
                                </button>
                            {/if}
                            {if $transferdomainenabled}
                                <button type="submit" id="btnTransfer" data-domain-action="transfer" class="btn btn-success{$captcha->getButtonClass($captchaForm)}">
                                    {lang key="domainstransfer"}
                                </button>
                            {/if}
                        </span>
                    </div>
                </div>
                <div class="row d-sm-none">
                    {if $registerdomainenabled}
                        <div class="col-6">
                            <button type="submit" class="btn btn-primary{$captcha->getButtonClass($captchaForm)} btn-block" id="btnDomainSearch2">
                                {lang key="search"}
                            </button>
                        </div>
                    {/if}
                    {if $transferdomainenabled}
                        <div class="col-6">
                            <button type="submit" id="btnTransfer2" data-domain-action="transfer" class="btn btn-success{$captcha->getButtonClass($captchaForm)} btn-block">
                                {lang key="domainstransfer"}
                            </button>
                        </div>
                    {/if}
                </div>
                {include file="$template/includes/captcha.tpl"}

                {if $featuredTlds}
                    <ul class="tld-logos">
                        {foreach $featuredTlds as $num => $tldinfo}
                            {if $num < 3}
                                <li>
                                    <img src="{$BASE_PATH_IMG}/tld_logos/{$tldinfo.tldNoDots}.png">
                                    {if is_object($tldinfo.register)}
                                        {$tldinfo.register->toFull()}
                                    {else}
                                        {lang key="domainregnotavailable"}
                                    {/if}
                                </li>
                            {/if}
                        {/foreach}
                    </ul>
                {/if}

                <a href="{routePath('domain-pricing')}" class="btn btn-link btn-sm float-right">View all pricing</a>
            </div>
        
    </div>
</form>

                            </div>
                        </div>
                    </div>

<div class="col-xl-6 col-lg-6 col-md-12 col-xs-12">
<div class="card p-t-10 p-b-30">
<div class="card-body p-t-30 p-b-0">
<h4 class="card-title m-b-30">{lang key='homepage.yourAccount'}</h4>
{include file="$template/includes/account-detail.tpl"}
</div>
</div>
</div>

                </div>
</div>


