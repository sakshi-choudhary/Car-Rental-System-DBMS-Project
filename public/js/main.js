$(window).on("load", () => {
  $(".spinner").delay(1000).fadeOut(1000);
});

$(document).ready(() => {
  $(".classified").delay(3000).fadeOut(5000);

  $(".nav-link").click(() => {
    $(".nav-link").removeClass("active");
    $(this).addClass("active");
  });

  /* ----------------- CALC FULL HEIGHT ---------------------- */
  getHeight();

  $(window).resize(() => {
    getHeight();
  });

  /* -----------------DATE HANDLERS - USER---------------------- */
  let date = new Date(),
    todayDay = date.getDate(),
    todayMonth = date.getMonth() + 1,
    todayFullDate = date.getFullYear();

  const dateClassObj = $(".date");

  todayDay = _addZero(todayDay);
  todayMonth = _addZero(todayMonth);

  todayFullDate += "-" + todayMonth + "-" + todayDay;

  dateClassObj.val(todayFullDate);
  dateClassObj.attr("min", todayFullDate);

  $("#dateIn, #days").click(() => {
    let days = $("#days").val(),
      price = $("#price").val(),
      hours = 20;

    price *= days;
    hours *= days;

    // changes price
    $("#numbers").val(price);
    $("#spMin").text(hours + "h");

    todayFullDate = $("#dateIn").val();

    date = new Date(todayFullDate);

    --days; // needed for getDate()
    date.setDate(date.getDate() + days);

    todayDay = date.getDate();
    todayMonth = date.getMonth() + 1; // January is 0!

    todayDay = _addZero(todayDay);
    todayMonth = _addZero(todayMonth);

    todayFullDate = date.getFullYear() + "-" + todayMonth + "-" + todayDay;

    $("#dateOut").val(todayFullDate);
  });

  /* -----------------------ADMIN------------------------ */
  $(".hide").hide();
  $("#cars1").show();

  $("#cars").click(() => {
    _hide("#cars");
    $("#cars1").show();
  });

  $("#resvs").click(() => {
    _hide("#resvs");
    $("#resvs1").show();
  });

  $("#users").click(() => {
    _hide("#users");
    $("#users1").show();
  });

  // ------------------ NOT WORKING!!!
  /*
    $("#cars, #resvs, #users").click(() => {
      _show(this);

      switch (toShow) {
        case $("#cars"):
          $("#cars1").show();
          break;

        case $("#resvs"):
          $("#resvs1").show();
          break;

        case $("#users"):
          $("#users1").show();
          break;
      }
    });
  */

  // FIXME: Needs work! Commented code not working!
  // $("#imgZoom").css({ visibility: "hidden" });
  // $("#preview").css({ display: "block" });

  $("#imgZoom, #preview").mousemove((event) => {
    $("#preview").css("visibility", "visible");
    $("#imgZoom").css("opacity", 0);

    $("#preview").css("background-image", "url('" + $("#hidden").val() + "')");

    $("#preview").css(
      "background-position",
      -event.offsetX * 2 + "px " + -event.offsetY * 1 + "px"
    );
  });

  $("#imgZoom, #preview").mouseleave(() => {
    $("#imgZoom").css("opacity", 1);
    $("#preview").css("visibility", "hidden");
  });
});

function _hide(toShow) {
  $(".hide").hide();
  $("li").removeClass("active");
  $(toShow).addClass("active");
}

function _addZero(str) {
  if (str < 10) str = "0" + str;
  return str;
}

function getHeight() {
  let fullHeighMinusHeader =
    $(window).height() -
    $("header").outerHeight() -
    $("footer").outerHeight() -
    65;
  $("main").height(fullHeighMinusHeader.toFixed(2));
}
