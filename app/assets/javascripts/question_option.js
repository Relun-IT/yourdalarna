$(document).on('turbolinks:load', function() {
  $(".submit-quiz").on("click", function(event) {
    $(".question-option").off("click");

    var right_answers = $(".ro");
    var wrong_answers = $(".btn-secondary"); 
    right_answers.removeClass("btn-yellow");
    right_answers.addClass("btn-success");
    wrong_answers.removeClass("btn-secondary");
    wrong_answers.addClass("btn-alert");
  });

  $(".question-option").on("click", function(event) {

    var option = $(event.target);
    var options = $(event.target.parentElement.children);

    if (option.hasClass("btn-yellow")) {
      options.removeClass("btn-secondary");
      options.addClass("btn-yellow");
      option.toggleClass("btn-secondary");
      option.removeClass("btn-yellow");
    }

    else if (option.hasClass("btn-secondary")) {
      option.removeClass("btn-secondary");
      option.toggleClass("btn-yellow");
    }
  });
});
