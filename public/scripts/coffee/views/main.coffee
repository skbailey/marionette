define [
  'marionette'
  ], (Marionette) ->

    class MainDisplayView extends Marionette.Layout
      template: "#main-layout"
      className: "main-display view row"
      regions:
        display: "#display"
        comments: "#comments"
