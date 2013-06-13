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
  var App = new Marionette.Application();

  // Add an initializer
  App.addInitializer(function(options){
    console.log("App is initializing", options, this);

    // Every application instance comes with a vent
    App.vent.on('huzzah', function(){
      console.log("Huzzah!");
    });
  });

  // Event is triggered before the initializers are run
  App.on("initialize:before", function(options){
    console.log("About to run the App's initializers", options, this);
  });

  // Event is triggered after the initializers are run
  App.on("initialize:after", function(options){
    console.log("Just finished running the App's initializers", options, this);
  });

  // Event is triggered after the application has started
  App.on("start", function(options){
    console.log("The app has started", options, this);
    App.vent.trigger("huzzah");
  });

  $(function(){
    App.start({name: "sherard", horoscope: "taurus"});
    console.log("Everything has started");
  });
});