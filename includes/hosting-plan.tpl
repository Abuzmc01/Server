{if !empty($productGroups) || $registerdomainenabled || $transferdomainenabled}


<div class="card p-4">
<h3 class="card-title m-t-10">{lang key='browseProducts'}</h3>

    <div class="row home">
    <div class="col-lx-8 col-lg-8 col-md-12 col-xs-12">
        <div class="row">
        {foreach $productGroups as $productGroup}
                        <div class="col-xl-6 col-lg-6 col-md-6 col-xs-12">
                        <div class="card card-inverse card-info">
                            <div class="card-body">
                                <div class="d-flex">
                                    
                                        <div>
                                        <h3 class="card-title">{$productGroup->name}</h3>
                                        <p>{$productGroup->tagline}</p>
                                        </div>
                                </div>
                                <div class="row">
                                    <div class="col-12 p-t-5 p-b-20 text-left">
                                        <a href="{$productGroup->getRoutePath()}" class="btn font-14 waves-effect waves-light btn-success">
                        {lang key='browseProducts'}
                    </a>
                                    </div>
                                </div>
                            </div>
                            </div>
                        </div>

        {/foreach}
        </div>
    </div>


    <div class="col-lg-4 col-xl-4 col-md-12 col-xs-12"> 
      <div class="row"> 
       <div class="col-lg-12 col-xl-12 col-sm-6"> 
        {if $registerdomainenabled}
        <div class="card card-inverse card-success">
                            <div class="card-body">

                                        <h3 class="card-title">{lang key='orderregisterdomain'}</h3>
                                        <h6 class="card-subtitle">{lang key='secureYourDomain'}</h6> 
                                        <a href="cart.php?a=add&domain=register" class="btn font-14 waves-effect waves-light btn-primary">
                                          {lang key='navdomainsearch'}
                                        </a>      
                            </div>
                        </div>
        {/if}
</div>


<div class="col-lg-12 col-xl-12 col-sm-6"> 
        {if $transferdomainenabled}
        <div class="card card-inverse card-primary">
                            <div class="card-body">

                                        <h3 class="card-title">{lang key='transferYourDomain'}</h3>
                                        <h6 class="card-subtitle">{lang key='transferExtend'}</h6> 
                                        <a href="cart.php?a=add&domain=transfer" class="btn font-14 waves-effect waves-light btn-success">
                        {lang key='transferYourDomain'}
                    </a>    
                            </div>
                        </div>
        {/if}
</div>

</div>
</div>
            
    </div>

</div>
{/if}




                        