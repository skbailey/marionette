define [
  "marionette", 
  "main_router", 
  "views/nav",
  "views/main",
  "views/footer"
  ], (Marionette, MainRouter, NavView, MainView, FooterView) ->

  App = new Marionette.Application()

  # Create a routers object and attach all routers to that for easier management
  App.routers = mainRouter: new MainRouter()

  # Add an initializer
  App.addInitializer (options) ->
    console.log("App is initializing", options, this)

    # Every application instance comes with a vent
    App.vent.on "rundown:set", (collection) ->
      console.log "Huzzah!", collection

  # Event is triggered before the initializers are run
  App.on "initialize:before", (options) ->
    console.log("About to run the App's initializers", options, this)

  # Event is triggered after the initializers are run
  App.on "initialize:after", (options) ->
    console.log("Just finished running the App's initializers", options, this)
    Backbone.history.start pushState: true 

  # Event is triggered after the application has started
  App.on "start", (options) ->
    console.log("The app has started", options, this)
    App.vent.trigger("huzzah")
    App.nav.show new NavView
    App.content.show new MainView
    App.footer.show new FooterView

  App.addRegions 
    nav: "#segments"
    content: "#content"
    footer: "footer"

  window.HPLive = app: App
  App