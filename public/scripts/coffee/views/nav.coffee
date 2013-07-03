define [
  'marionette',
  'views/segment',
  'views/carousel',
  'collections/segments'
  ], (Marionnette, SegmentView, CarouselView, SegmentsCollection) ->
    class NavView extends Marionette.Layout
      className: 'segment-navigation'
      template: "#nav-layout"
      regions:
        spotlight: ".nav-spotlight"
        carousel: ".nav-carousel"

      onRender: ->
        console.log "calling render"
        #@spotlight.show new SegmentView
        @carousel.show new CarouselView collection: new SegmentsCollection