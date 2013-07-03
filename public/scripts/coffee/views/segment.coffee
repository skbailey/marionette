define [
  'marionette'
  ], (Marionnette) ->
    class NavView extends Marionette.ItemView
      className: 'segment view'
      template: "#segment-layout"