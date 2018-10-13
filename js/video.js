;(function ($) {
    $(document).ready(function () {
        //youtube script
        var tag = document.createElement('script');
        tag.src = "//www.youtube.com/iframe_api";
        var firstScriptTag = document.getElementsByTagName('script')[0];
        firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);

        var player;

        onYouTubeIframeAPIReady = function () {
            player = new YT.Player('player', {
                videoId: 'pOmu0LtcI6Y',  // youtube video id
                playerVars: {
                    'autoplay': 0,
                    'rel': 0,
                    'showinfo': 0
                },
                events: {
                    'onStateChange': onPlayerStateChange
                }
            });
        };

        console.log(player);
        var p = $(".video-story > p");
        $(p).hide();

        $(document).on('click', '#play', function () {
            // $(this).hide();
            // $("#player").show();
            // $("#thumbnail_container").hide();
            player.playVideo();
        });
    });
})(jQuery);