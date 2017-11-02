// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require turbolinks
//= require_tree .

var bubbles = document.getElementsByClassName("jetBubble");
var mainTimeline = new TimelineMax({ repeat: -1 });

function createBubbles() {
  TweenMax.set(bubbles, {
    attr: {
      r: "-=5"
    }
  });
  //jet bubbles
  for (var i = 0; i < bubbles.length; i++) {
    var b = bubbles[i];
    var tl = new TimelineMax({ repeat: -1 });
    tl
      .to(b, 1, {
        attr: {
          r: "+=5"
        },
        ease: Linear.easeNone
      })
      .to(b, 1, {
        attr: {
          r: "-=5"
        },
        ease: Linear.easeNone
      });
    mainTimeline.add(tl, i / 2);
  }
}
createBubbles();

window.onscroll = event => {
  let topScroll = this.scrollY,
    layers = document.querySelectorAll('[data-type="parallax"]'),
    prefixes = [
      "-webkit-transform",
      "-moz-transform",
      "-ms-transform",
      "-o-transform"
    ];

  for (let layer of Array.prototype.slice.call(layers)) {
    let depth = layer.getAttribute("data-depth"),
      movement = -1 * (topScroll * depth),
      translate = `translate3d(0, ${movement}px, 0)`;
    for (let prefix of prefixes) {
      layer.style[prefix] = translate;
    }
    layer.style.transform = translate;
  }
};
