<!DOCTYPE html>
<html>
<head>
    <title>Create note</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/uikit.min.css" />
    <script src="js/uikit.min.js"></script>
    <script src="js/uikit-icons.min.js"></script>
</head>
<body>
<div class="uk-container-small" style="margin-top:10%; margin-left:26.5%">
    <form action="/note" method="post">
        <div class="uk-margin">
            <h2 class="uk-heading-line uk-text-center"><span>Write note title</span></h2>
            <input name="title" class="uk-input uk-form-large" type="text" placeholder="Note title">
        </div>
        <div class="uk-margin">
            <h2 class="uk-heading-line uk-text-center"><span>Write note text</span></h2>
            <input name="text" class="uk-input  uk-form-large" type="text" placeholder="Note text">
        </div>
        <button class="uk-button uk-form-large uk-button-default uk-width-1-1 uk-margin-small-bottom" title="Send" type="submit">Send</button>
        <a class="uk-button uk-form-large uk-width-1-1 uk-button-default uk-margin-small-bottom" href="notebook/1">Notebook</a>
    </form>
</div>
</body>
</html>