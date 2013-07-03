define [
  'marionette',
  'views/display'
  ], (Marionette, DisplayView) ->

    class MainView extends Marionette.Layout
      template: "#main-layout"
      className: "main-display view row"
      regions:
        display: "#display"
        comments: "#comments"

      initialize: (options) ->
        window.HPLive.app.vent.on "rundown:set", @onRundownSet, @
        window.HPLive.app.vent.on "rundown:select", @onRundownSelect, @

      onRundownSet: (collection) ->
        @display.show new DisplayView model: collection.first()

      onRundownSelect: (collection, target) ->
        @display.show new DisplayView model: collection.at(target)
