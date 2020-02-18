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
<#assign number_of_pages = max?number>
<#assign active_page = page?number>
<div class="uk-container-small" style="margin-top: 30px; margin-left: 26.5%">
    <a class="uk-button uk-form-large uk-width-1-1 uk-button-default uk-margin-small-bottom" href="/note">Add new note</a>
    <#assign x = 1 + 5*(active_page-1)>
    <#list section as note>
        <h2 class="uk-heading-line uk-text-center"><span>Note ${x}</span></h2>
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
        <#assign x++>
    </#list>
</div>
<div class="uk-container-large" style="margin-left: 13.5%">
    <ul class="uk-pagination uk-flex-center" uk-margin>
        <#list 1..number_of_pages as p>
            <#if p == active_page>
                <li class="uk-active"><span>${p}</span></li>
            </#if>
            <#if p != active_page>
                <li><a href="/notebook/${p}">${p}</a></li>
            </#if>
        </#list>
    </ul>
</div>
</body>
</html>