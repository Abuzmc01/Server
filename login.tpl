<div class="providerLinkingFeedback"></div>

<form method="post" action="{routePath('login-validate')}" class="login-form" role="form">
    <div class="card card-outline-info custom-login-card mw-540 mb-md-4 mt-md-4">
            <div class="card-header">
                <h4 class="text-white mb-0">{lang key='loginbutton'}</h4>
            </div>
        <div class="card-body px-sm-5 py-4">
        <p class="text-muted mb-10 font-14">{lang key='userLogin.signInToContinue'}</p>
            {include file="$template/includes/flashmessage.tpl"}
            <div class="form-group">
                <label for="inputEmail" class="form-control-label font-medium font-14">{lang key='clientareaemail'}</label>
                <div class="input-group input-group-merge">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="ti-user"></i></span>
                    </div>
                    <input type="email" class="form-control font-14" name="username" id="inputEmail" placeholder="name@example.com" autofocus>
                </div>
            </div>
            <div class="form-group mb-4 focused">
                <div class="d-flex align-items-center justify-content-between">
                    <label for="inputPassword" class="form-control-label font-medium font-14">{lang key='clientareapassword'}</label>
                    <div class="mb-2">
                        <a href="{routePath('password-reset-begin')}" class="small text-muted" tabindex="-1">{lang key='forgotpw'}</a>
                    </div>
                </div>
                <div class="input-group input-group-merge">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class=" ti-unlock"></i></span>
                    </div>
                    <input type="password" class="form-control pw-input font-14" name="password" id="inputPassword" placeholder="{lang key='clientareapassword'}" autocomplete="off">
                    <div class="input-group-append">
                        <button class="btn btn-default btn-reveal-pw" type="button" tabindex="-1">
                            <i class="ti-eye"></i>
                        </button>
                    </div>
                </div>
            </div>
            {if $captcha->isEnabled()}
                {include file="$template/includes/captcha.tpl"}
            {/if}
            <div class="float-left">
                <button id="login" type="submit" class="btn btn-info{$captcha->getButtonClass($captchaForm)}">
                    {lang key='loginbutton'}
                </button>
            </div>
            <div class="text-right">
                <label class="small text-muted float-right m-t-5">
                    <input type="checkbox" class="form-check-input" name="rememberme" />
                    {lang key='loginrememberme'}
                </label>
            </div>
        </div>
        <div class="card-footer px-md-5 text-center bg-white">
            <small>Not registered?</small>
            <a href="{$WEB_ROOT}/register.php" class="small font-weight-bold">{lang key='userLogin.createAccount'}</a>
        </div>
    </div>
</form>

{include file="$template/includes/linkedaccounts.tpl" linkContext="login" customFeedback=true}
