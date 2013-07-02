define [
  'marionette'
  ], (Marionnette) ->
    class NavView extends Marionette.ItemView
      className: 'segment-navigation'
      template: "#nav-layout"