define [
  'marionette',
  'views/segment',
  'views/carousel'
  ], (Marionnette, SegmentView, CarouselView) ->
    class NavView extends Marionette.Layout
      className: 'segment-navigation'
      template: "#nav-layout"
      regions:
        spotlight: ".nav-spotlight"
        carousel: ".nav-carousel"

      onRender: ->
        @spotlight.show new SegmentView
        @carousel.show new CarouselView