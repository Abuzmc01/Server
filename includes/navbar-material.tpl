{foreach $navbar as $item}
    <li menuItemName="{$item->getName()}" 
    class=" d-block{if $item->hasChildren()} dropdown{/if}{if $item->getClass()} {$item->getClass()}{/if}" id="{$item->getId()}">
    <a href="">
    <i class="ti-user"></i>
        <span class="{if $item->hasChildren()} dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" {/if}{if $item->getAttribute('target')} target="{$item->getAttribute('target')}"{/if}>
            {if $item->hasIcon()}<i class="{$item->getIcon()}"></i>&nbsp;{/if}
            {$item->getLabel()}
            {if $item->hasBadge()}&nbsp;<span class="badge">{$item->getBadge()}</span>{/if}
            </span> 
    </a>
        <div class="dropdown-divider"></div>
        {if $item->hasChildren()}
            <li class="dropdown-menu{if isset($rightDrop) && $rightDrop} dropdown-menu-right{/if}">
            {foreach $item->getChildren() as $childItem}
                {if $childItem->getClass() && in_array($childItem->getClass(), ['dropdown-divider', 'nav-divider'])}
                    
                {else}
                    <li menuItemName="{$childItem->getName()}" class="dropdown-item1{if $childItem->getClass()} {$childItem->getClass()}{/if}" id="{$childItem->getId()}">

                


                        <a href="{$childItem->getUri()}" class="dropdown-item1  "{if $childItem->getAttribute('target')} target="{$childItem->getAttribute('target')}"{/if}>
                       
                       {assign var="name" value="{$childItem->getLabel()}"}
                       
                       {if $name eq 'Account Details'}
                            <i class="ti-user"></i>

                        {elseif $name eq 'Login'}
                            <i class="ti-unlock"></i>

                        {elseif $name eq 'Register'}
                            <i class="ti-pencil-alt"></i>

                        {elseif $name eq 'Forgot Password?'}
                            <i class="ti-pin"></i>

                        {elseif $name eq 'Logout'}
                            <i class="ti-pencil-alt"></i>

                       {elseif $name eq 'User Management'}
                            <i class="ti-wallet"></i>
                        
                        {elseif $name eq 'Contacts'}
                            <i class=" ti-headphone"></i>

                        {elseif $name eq 'Email History'}
                            <i class="ti-email"></i>
                        
                        {elseif $name eq 'Your Profile'}
                            <i class="ti-user"></i>

                         {elseif $name eq 'Change Password'}
                            <i class="ti-reload"></i>

                         {elseif $name eq 'Security Settings'}
                            <i class="ti-lock"></i>
 

                        {/if}
                       
                              
                    

                            {if $childItem->hasIcon()}<i class="{$childItem->getIcon()}"></i>&nbsp;{/if}
                            {$childItem->getLabel()}
                            {if $childItem->hasBadge()}&nbsp;<span class="badge">{$childItem->getBadge()}</span>{/if}
                        </a>
                    </li>
                {/if}
            {/foreach}
            </li>
        {/if}
    </li>
{/foreach}
