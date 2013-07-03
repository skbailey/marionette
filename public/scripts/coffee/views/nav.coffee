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

      initialize: (options) ->
        window.HPLive.app.vent.on "rundown:set", @onRundownSet, @
        window.HPLive.app.vent.on "rundown:select", @onRundownSelect, @

      onRender: ->
        @carousel.show new CarouselView collection: new SegmentsCollection

      onRundownSet: (collection) ->
        @spotlight.show new SegmentView model: collection.first()

      onRundownSelect: (collection, target) ->
        @spotlight.show new SegmentView model: collection.at(target)