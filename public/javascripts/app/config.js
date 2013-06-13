require.config({
  paths: {
    jquery: "../lib/jquery",
    underscore: "../lib/underscore",
    backbone: "../lib/backbone",
    marionette: "../lib/marionette"
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

require(["jquery", "underscore", "backbone", "marionette"], function($, _, Backbone, Marionette){
  console.log("require is up and running...", arguments);
  $(function(){
    
  });
});