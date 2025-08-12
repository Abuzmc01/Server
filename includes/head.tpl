<!-- Styling -->
<link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400&display=swap" rel="stylesheet">
<link href="{assetPath file='all.min.css'}?v={$versionHash}" rel="stylesheet">
<link href="{assetPath file='theme.min.css'}?v={$versionHash}" rel="stylesheet">
<link href="{$WEB_ROOT}/assets/css/fontawesome-all.min.css" rel="stylesheet">
<link href="{$WEB_ROOT}/templates/hostiko-material/css/morris.css" rel="stylesheet">
<link href="{$WEB_ROOT}/templates/hostiko-material/css/style.css" rel="stylesheet">
<link href="{$WEB_ROOT}/templates/hostiko-material/css/blue.css" id="theme" rel="stylesheet">
{assetExists file="custom.css"}
<link href="{$__assetPath__}" rel="stylesheet">
{/assetExists}

<script>
    var csrfToken = '{$token}',
        markdownGuide = '{lang key="markdown.title"}',
        locale = '{if !empty($mdeLocale)}{$mdeLocale}{else}en{/if}',
        saved = '{lang key="markdown.saved"}',
        saving = '{lang key="markdown.saving"}',
        whmcsBaseUrl = "{\WHMCS\Utility\Environment\WebHelper::getBaseUrl()}",
        requiredText = '{lang key="orderForm.required"}',
        recaptchaSiteKey = "{if $captcha}{$captcha->recaptcha->getSiteKey()}{/if}";
</script>
<script src="{assetPath file='scripts.min.js'}?v={$versionHash}"></script>
<script src="{$WEB_ROOT}/templates/hostiko-material/js/popper.min.js"></script>
{* <script src="{$WEB_ROOT}/templates/hostiko-material/js/bootstrap.min.js"></script> *}
<script src="{$WEB_ROOT}/templates/hostiko-material/js/waves.js"></script>
<script src="{$WEB_ROOT}/templates/hostiko-material/js/sidebarmenu.js"></script>
<script src="{$WEB_ROOT}/templates/hostiko-material/js/sticky-kit.min.js"></script>
<script src="{$WEB_ROOT}/templates/hostiko-material/js/custom.min.js"></script>
<script src="{$WEB_ROOT}/templates/hostiko-material/js/jquery.sparkline.min.js"></script>
<script src="{$WEB_ROOT}/templates/hostiko-material/js/raphael-min.js"></script>
<script src="{$WEB_ROOT}/templates/hostiko-material/js/morris.min.js"></script>
<script src="{$WEB_ROOT}/templates/hostiko-material/js/dashboard1.js"></script>
<script src="{$WEB_ROOT}/templates/hostiko-material/js/jquery.slimscroll.js"></script>

<script src="{$WEB_ROOT}/templates/hostiko-material/js/jQuery.style.switcher.js"></script>

{if $templatefile == "viewticket" && !$loggedin}
  <meta name="robots" content="noindex" />
{/if}
