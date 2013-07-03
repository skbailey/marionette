define [
  'marionette'
  ], (Marionnette) ->
    class NavView extends Marionette.ItemView
      className: 'segment view'
      tagName: "li"
      template: "#segment-layout"