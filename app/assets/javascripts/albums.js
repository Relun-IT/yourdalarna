$(document).on('turbolinks:load', function() {
  $(".fancybox").fancybox({
    parent: "body",
    helpers: {
      overlay: {
        locked: false
      },
      title: { type: "inside" },
      thumbs: {
        width: 50,
        height: 50
      }
    },
  });
});
