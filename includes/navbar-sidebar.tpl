{foreach $navbar as $item}
    <li menuItemName="{$item->getName()}" class="" id="{$item->getId()}">
        <a class=" waves-effect waves-dark {if $item->hasChildren()}has-arrow" aria-expanded="false" href="#"{else}" href="{$item->getUri()}"{/if}{if $item->getAttribute('target')} target="{$item->getAttribute('target')}"{/if}>
        
        {assign var="name" value="{$item->getLabel()}"}
        
         {if $name eq 'Home'}
            <i class="ti-home"></i>
         {elseif $name eq 'الرئيسية'}
            <i class="ti-home"></i>

        {elseif $name eq 'Services'}
            <i class="ti-settings"></i>
        {elseif $name eq 'خدمات'}
            <i class="ti-settings"></i>    

        {elseif $name eq 'Website & Security'}
            <i class="ti-shield"></i>    

        {elseif $name eq 'Domains'}
            <i class="ti-world"></i>        
        
        {elseif $name eq 'Billing'}
            <i class="ti-receipt"></i>

        {elseif $name eq 'Store'}
            <i class="ti-shopping-cart"></i>

        {elseif $name eq 'المتجر'}
           <i class="ti-shopping-cart"></i>

        {elseif $name eq 'Announcements'}
            <i class="ti-announcement"></i>

        {elseif $name eq 'أخبار وإعلانات'}
            <i class="ti-announcement"></i>                
        
        {elseif $name eq 'Knowledgebase'}
            <i class="ti-book"></i>

        {elseif $name eq 'مكتبة الشروحات'}
            <i class="ti-book"></i>
                
        {elseif $name eq 'Network Status'}
            <i class="ti-signal"></i>

        {elseif $name eq 'حالة الشبكة'}
            <i class="ti-signal"></i>                 

        {elseif $name eq 'Contact Us'}
            <i class="ti-email"></i> 

        {elseif $name eq 'راسلنا'}
            <i class="ti-email"></i>                 
                      

                        {elseif $name eq 'Open Ticket'}
                            <i class="ti-pencil-alt"></i>

                       {elseif $name eq 'Support'}
                            <i class="ti-support"></i>

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
  {elseif $name eq 'Affiliates'}
                            <i class="ti-star
"></i>

                        {/if}
        
        
        
        <span class="hide-menu">
            {if $item->hasIcon()}<i class="{$item->getIcon()}"></i>&nbsp;{/if}
            {$item->getLabel()}
            {if $item->hasBadge()}&nbsp;<span class="badge">{$item->getBadge()}</span>{/if}
        <span>
        </a>
        {if $item->hasChildren()}
            <ul class="collapse  {if isset($rightDrop) && $rightDrop} {/if}">
            {foreach $item->getChildren() as $childItem}
                {if $childItem->getClass() && in_array($childItem->getClass(), ['dropdown-divider', 'nav-divider'])}
                    <div class="dropdown-divider"></div>
                {else}
                    <li menuItemName="{$childItem->getName()}" class="{if $childItem->getClass()} {$childItem->getClass()}{/if}" id="{$childItem->getId()}">
                        <a href="{$childItem->getUri()}" class=""{if $childItem->getAttribute('target')} target="{$childItem->getAttribute('target')}"{/if}>
                                            

                            {if $childItem->hasIcon()}<i class="{$childItem->getIcon()}"></i>&nbsp;{/if}
                            {$childItem->getLabel()}
                            {if $childItem->hasBadge()}&nbsp;<span class="badge">{$childItem->getBadge()}</span>{/if}
                        </a>
                    </li>
                {/if}
            {/foreach}
            </ul>
        {/if}
    </li>
{/foreach}
