require.config({
  paths: {
    jquery: "/javascripts/lib/jquery",
    underscore: "/javascripts/lib/underscore",
    backbone: "/javascripts/lib/backbone",
    marionette: "/javascripts/lib/marionette"
  },
  shim: {
    jquery: {
      exports: "jQuery"
    },
    underscore: {
      exports: "_"
    },
    backbone: {
      deps: ["jquery", "underscore"],
      exports: "Backbone"
    },
    marionette: {
      deps: ["jquery", "underscore", "backbone"],
      exports: "Marionette"
    }
  }
});

require(["jquery", "app"], function($, App){
  $(function(){
    App.start({name: "sherard", horoscope: "taurus"});
    console.log("Everything has started");
  });
});