define ["marionette"], (Marionette) ->
  
  class MainRouter extends Marionette.AppRouter
    appRoutes: 
      "" : "showSkrippers"
    
    controller: 
      showSkrippers: ->
        console.log("Show skrippers")