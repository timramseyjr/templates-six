<div class="page-header">
    <div class="styled_title"><h1>Whoops! <small>Sometimes these things happen...</small></h1></div>
</div>

{if $e==400}
    <h2>Error 400</h2><p>The server made a bad request. Please try again later. Thank you.</p>
{/if}

{if $e==401}
    <h2>Error 401</h2><p>You need authorization to proceed beyond this point. If you forgot your password or username, you'll need to notify my <a href=/contact.php>admin</a>. Thanks</p>
{/if}

{if $e==403}
    <h2>Error 403</h2><p>.Permission Denied.<br>I'd love to give you permission, but you see, my owner has requested this specific file is off limits to you. I can even show you the request.</p>
{/if}

{if $e==404}
    <h2>Error 404</h2><p>The file requested does not exist on this server. Perhaps you forgot the filename. Perhaps this was moved, and the <a href={$refer}>referring page</a> should be notified.If you were looking for the order page, that can be found <a href=cart.php>here</a>.</p>
{/if}

{if $e==500}
    <h2>Error 500</h2><p>Something has gone wrong with one of my scripts and I'm clueless as to what. Maybe my logs will contain a bit more information.</p>
{/if}