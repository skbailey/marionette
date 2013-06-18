define([
  "marionette", 
  "main_router", 
  "views/main_layout"
  ], function(Marionette, MainRouter, MainLayout){
  var App = new Marionette.Application();
  App.mainRouter = new MainRouter();

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
    Backbone.history.start({pushState: true});
  });

  // Event is triggered after the application has started
  App.on("start", function(options){
    console.log("The app has started", options, this);
    App.vent.trigger("huzzah");
    App.container.show(new MainLayout);
  });

  App.addRegions({
    container: "#container"
  });

  return App;
});