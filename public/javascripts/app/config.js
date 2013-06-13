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

require(["jquery", "underscore", "backbone", "marionette"], function($, _, Backbone, Marionette){
  console.log("require is up and running...", arguments);
  $(function(){
    
  });
});