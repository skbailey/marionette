define [
  'marionette',
  'views/segment'
  ], (Marionette, SegmentView) ->

    class CarouselView extends Marionette.CompositeView
      className: "carousel view"
      template: "#carousel-layout"

      itemView: SegmentView
      itemViewContainer: ".segments"

      events:
        "click .segment" : "onSegmentClick"

      ui:
        rundown: ".segments"

      collectionEvents:
        "add" : "onSegmentAdded"
        "sync" : "onRundownSync"

      initialize: (options) ->
        @collection.fetch()

      onSegmentAdded: ->
        @ui.rundown.width (idx, oldWidth) ->
          oldWidth += 350

      onRundownSync: ->
        window.HPLive.app.vent.trigger "rundown:set", @collection

      onSegmentClick: (evt) ->
        index = @ui.rundown.find('li').index(evt.currentTarget)
        window.HPLive.app.vent.trigger "rundown:select", @collection, index