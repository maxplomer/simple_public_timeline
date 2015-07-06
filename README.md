# Simple Public Timeline

This app was created as part of a coding challenge for a job application.  The original requirements were that there be 2 routes

Have the route / retrieve the Twitter data on the server side and then render
Have the route /via_js retrieve the Twitter data with JavaScript and render it after the document loads

I did neither of these because I made the app in the most cutting edge framework Volt, that runs Ruby code on both the server and client.

I created a Task that gets the tweets using the twitter gem.  The app then calls that task, renders the document and displays the tweets when they arrive.  There is absolute no JavaScript used.  