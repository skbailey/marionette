define [
  'marionette',
  'views/segment'
  ], (Marionette, SegmentView) ->

    class CarouselView extends Marionette.CompositeView
      className: "carousel view"
      template: "#carousel-layout"

      itemView: SegmentView
      itemViewContainer: ".segments"

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

      onRundownSync: (event) ->
        console.log "rundownSet", event