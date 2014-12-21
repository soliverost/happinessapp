// ----------------------------------
//   Logic for search for an artist  
// ----------------------------------

// find template and compile it
var templateSource = document.getElementById('results-template').innerHTML,
    template = Handlebars.compile(templateSource),
    resultsPlaceholder = document.getElementById('results'),
    playingCssClass = 'playing',
    audioObject = null;

var fetchTracks = function (albumId, callback) {
    $.ajax({
        url: 'https://api.spotify.com/v1/albums/' + albumId,
        success: function (response) {
            callback(response);
        }
    });
};

var searchAlbums = function (query) {
    $.ajax({
        url: 'https://api.spotify.com/v1/search',
        data: {
            q: query,
            type: 'album'
        },
        success: function (response) {
            resultsPlaceholder.innerHTML = template(response);
        }
    });
};

results.addEventListener('click', function(e) {
    var target = e.target;
/*
    if (target !== null && target.classList.contains('cover')) {
        if (target.classList.contains(playingCssClass)) {
            audioObject.pause();
        } else {
            if (audioObject) {
                audioObject.pause();
            }
            fetchTracks(target.getAttribute('data-album-id'), function(data) {            
                audioObject = new Audio(data.tracks.items[0].preview_url);
                audioObject.play();
                target.classList.add(playingCssClass);
                audioObject.addEventListener('ended', function() {
                    target.classList.remove(playingCssClass);
                });
                audioObject.addEventListener('pause', function() {
                    target.classList.remove(playingCssClass);
               });
            });
        }
    }
*/
    fetchTracks(target.getAttribute('data-album-id'), function(data) {  
        var albumId = target.getAttribute('data-album-id')
/*        
Track: "https://play.spotify.com/track/3VMSMjB4Yx79FDDrmYCk3N?play=true&utm_source=embed.spotify.com&utm_medium=spb&utm_campaign=spb"
album: "https://play.spotify.com/album/"" + albumId + "?play=true&utm_source=embed.spotify.com&utm_medium=spb&utm_campaign=spb"
*/
        var url = "https://play.spotify.com/album/" + albumId + "?play=true&utm_source=embed.spotify.com&utm_medium=spb&utm_campaign=spb";
        window.open(url);
        //popupDialogWindow(data.name, url); //doesn't work, Spotify set X-Frame-Options' to 'DENY'in the http response header 
    });     
});


document.getElementById('search-form').addEventListener('submit', function (e) {
    e.preventDefault();
    searchAlbums(document.getElementById('query').value);

    //display instructions/message
    $(".customInstructions").text("Click on any of the albums below to listen to the album's songs in Spotify.");

}, false);



// -------------------------------------------------- //
// Create "dialog" window with iFrame 
// -------------------------------------------------- //
function popupDialogWindow(pageTitle, pageURL) {

    //var $dialog = $("#" + containerId)    
    var $dialog = $("#custom-iframe-container")
        .html("<iframe src='" + pageURL + "'></iframe>")
        .dialog({
            appendTo: "body",
            autoOpen: false,
            modal: true,
            height: 700,
            width: 900,
            title: pageTitle,
            // closeOnEscape: false,
            dialogClass: "custom-dialog",
            draggable: true,
            maxHeight: 700,
            maxWidth: 900,
            resizable: true,
            open: function( event, ui )  {
            	//$("head").append("<base target='_top'>");
            }
        });
    $dialog.dialog('open');
}


