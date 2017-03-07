//navbar mobile animation styling
$(document).ready(function () {
        $(".navbar-toggle").on("click", function () {
            $(this).toggleClass("active");
        });
    });

var shopItems = [
  {
    pic: "img/buzzing.png",
    text: "About Object Text"
  },

  {
    pic: "img/studiovisit.jpg",
    text: "http://cargocollective.com/rcastudios"
  },

    {
    pic: "img/studiovisit.jpg",
    text: "http://cargocollective.com/rcastudios"
  }
];
  
for (var i = 0; i < shopItems.length; i++) {
  $(".row object-lineup").appendChild("\
    <div class='col-md-3'>\
      <%= image_tag(+ shopItems[i].url + , class: "img-product") %>"\
      <p class="object-title-text"> + shopItems[i].text + </p>
      </div>\
  ");
}
