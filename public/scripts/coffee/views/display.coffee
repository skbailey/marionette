define [
  'marionette'
  ], (Marionette) ->

    class DisplayView extends Marionette.ItemView
      template: "#display-layout"
      className: "display view"