var tag = document.createElement('script');
tag.src = "https://www.youtube.com/iframe_api";
var firstScriptTag = document.getElementsByTagName('script')[0];
firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);

function onYouTubePlayerAPIReady() {
  new YT.Player('player', {
    videoId: 'Tfwq_vJHwT8', 
    playerVars: {
      autoplay: true,
      loop: true, 
      playlist: 'Tfwq_vJHwT8' 
    },
    events: {
      onReady: function (event) {
        event.target.mute()
      }
    }
  })
}