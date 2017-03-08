$(document).on('turbolinks:load', function() {
  $(".activity-arrow").on("click", function(event) {
    var content = $(event.target.parentElement.parentElement.querySelector(".activity-content"));
    var arrow = $(event.target);

    content.toggleClass("content-expanded");
    arrow.toggleClass("arrow-expanded");
  });
});
