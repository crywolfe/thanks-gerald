"use strict";

var app = {

  onReady: function() {

    //click handler on form button to create message
    $("h1").on("click", function() {

      var h1Text = $("h1").text();
      var h1Tag = $("h1");
      $.ajax({
        url: "/reverse",
        type: "GET",
        dataType: "json",
        data: { key: h1Text }
      }).done(function(response){
        $(h1Tag).text(response.key);
      });
    });
  }

}

$(document).ready(app.onReady);