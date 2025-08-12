<div class="card mb-4">
    <div class="card-body extra-padding">

        <div class="mb-4">
            <h6 class="h3">Contact Us</h6>
            <p class="text-muted mb-0">{lang key='readyforquestions'}</p>
        </div>

        {if $sent}
            {include file="$template/includes/alert.tpl" type="success" msg="{lang key='contactsent'}" textcenter=true}
        {/if}

        {if $errormessage}
            {include file="$template/includes/alert.tpl" type="error" errorshtml=$errormessage}
        {/if}

        {if !$sent}
            <form method="post" action="contact.php" role="form">
            <input type="hidden" name="action" value="send" />
            <div class="row">
            <div class="col-xl-6 col-lg-6 col-sm-6 col-xs-12">
                <div class="form-group m-b-5">
                    <label for="inputName" class="col-form-label text-left font-">{lang key='supportticketsclientname'}</label>
                        <input type="text" name="name" value="{$name}" class="form-control" id="inputName" />
                </div>
                <div class="form-group m-b-5">
                    <label for="inputEmail" class="col-form-label text-left">{lang key='supportticketsclientemail'}</label>
                        <input type="email" name="email" value="{$email}" class="form-control" id="inputEmail" />
                </div>
                <div class="form-group m-b-0">
                    <label for="inputSubject" class="col-form-label text-left">{lang key='supportticketsticketsubject'}</label>
                        <input type="text" name="subject" value="{$subject}" class="form-control" id="inputSubject" />
                </div>
                {if $captcha}
                    <div class="text-center margin-bottom">
                        {include file="$template/includes/captcha.tpl"}
                    </div>
                {/if}

            </div>
            <div class="col-xl-6 col-lg-6 col-sm-6 col-xs-12">
                <div class="form-group">
                    <label for="inputMessage" class="col-form-label text-left">{lang key='contactmessage'}</label>
                        <textarea name="message" rows="7" class="form-control" id="inputMessage">{$message}</textarea>
                </div>
                <div class="text-center">
                    <button type="submit" class="btn waves-effect waves-light w-100 btn-lg btn-primary{$captcha->getButtonClass($captchaForm)}">{lang key='contactsend'}</button>
                </div>
            </div>
            </div>
            </form>

        {/if}

    </div>
</div>
