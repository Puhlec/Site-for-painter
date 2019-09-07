"use strict";

var John = {
  openModal: function (title, content, imageMode) {
    $("#modal .modal-title").html(title);
    $("#modal .modal-body").html(content);
    $("#modal").modal();
    if(imageMode) $("#modal").addClass("image");
    else $("#modal").removeClass("image");

  },
};

document.addEventListener("turbolinks:load", function() {
  $(function () {
    $('[data-toggle="tooltip"]').tooltip();
  });
});
