var REMOVE_AFTER_MS = 5000;

$(document).on('turbolinks:load', function() {
  $(".flash").on("click", function(event){
     removeFlash($(event.target));
  });

  if (window.clearAllFlashesTimeout) {
    clearTimeout(window.clearAllFlashesTimeout);
  }

  window.clearAllFlashesTimeout = window.setTimeout(clearAllFlashes, REMOVE_AFTER_MS);
});

function clearAllFlashes() {
  removeFlash($(".flash"));
}

function removeFlash(flash) {
  flash.addClass("flash-leave");
}
