<!DOCTYPE html>
<html>
<head>
    <title>NoteBook</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="/css/uikit.min.css"/>
    <script src="/js/uikit.min.js"></script>
    <script src="/js/uikit-icons.min.js"></script>
</head>
<body>
<nav class="uk-navbar-container uk-container-small" style="margin-top: 30px; margin-left: 26.5%" uk-navbar>
    <div class="uk-navbar-left">
        <div class="uk-navbar-item">
            <form action="/search" method="post" class="uk-search uk-search-navbar">
                <span uk-search-icon></span>
                <input name="title" class="uk-search-input" type="search" placeholder="Search...">
            </form>
        </div>

    </div>
</nav>
<div class="uk-container-small" style="margin-top: 30px; margin-left: 26.5%">
    <#list section as note>
        <h2 class="uk-heading-line uk-text-center"><span>Note found</span></h2>
        <div class="uk-card uk-card-small uk-card-default" style="margin-top: 30px;">
            <div class="uk-card-header">
                <div class="uk-grid-small uk-flex-middle" uk-grid>
                    <div class="uk-width-expand">
                        <h1 class="uk-card-title uk-margin-remove-bottom">${note.title}</h1>
                    </div>
                </div>
            </div>
            <div class="uk-card-body">
                <h2>${note.text}</h2>
            </div>
        </div>
        <#else>
            <div class="uk-card uk-card-small uk-card-default" style="margin-top: 30px;">
                <div class="uk-card-header">
                    <div class="uk-grid-small uk-flex-middle" uk-grid>
                        <div class="uk-width-expand">
                            <h1 class="uk-card-title uk-margin-remove-bottom">Not found</h1>
                        </div>
                    </div>
                </div>
            </div>
    </#list>
    <a class="uk-button uk-form-large uk-width-1-1 uk-button-default uk-margin-small-bottom" href="notebook/1">Return to notebook</a>
</div>
</body>
</html>