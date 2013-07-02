require.config
  paths: 
    jquery: "/scripts/lib/jquery"
    underscore: "/scripts/lib/underscore"
    backbone: "/scripts/lib/backbone"
    marionette: "/scripts/lib/marionette"

  shim: 
    jquery: 
      exports: "jQuery"
    
    underscore: 
      exports: "_"
    
    backbone: 
      deps: ["jquery", "underscore"]
      exports: "Backbone"
    
    marionette: 
      deps: ["jquery", "underscore", "backbone"]
      exports: "Marionette"

require ["jquery", "app"], ($, App) ->
  $ ->
    App.start name: "sherard", horoscope: "taurus" 
    console.log("Everything has started")