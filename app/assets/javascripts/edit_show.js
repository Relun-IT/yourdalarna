$(document).on('turbolinks:load', function() {
  $(".visible-btn").on("click", function(event) {
    $(".hideable-link").removeClass("hideable-link-active");
    $(".hideable-link").addClass("hideable-link-inactive");

    $(".done-btn").removeClass("done-btn-inactive");
    $(".done-btn").addClass("done-btn-active");

    $(".done-btn").on("click", function(){
      $(".hideable-link").removeClass("hideable-link-inactive");
      $(".hideable-link").addClass("hideable-link-active");

      $(".done-btn").removeClass("done-btn-active");
      $(".done-btn").addClass("done-btn-inactive");
    });
  });
});
