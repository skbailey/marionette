define [
  'marionette'
  ], (Marionette) ->

    class CarouselView extends Marionette.CompositeView
      className: "carousel view"
      template: "#carousel-layout"