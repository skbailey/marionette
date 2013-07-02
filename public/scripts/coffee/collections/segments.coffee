define [
  'backbone',
  'models/segment'
  ], (Backbone, SegmentModel) ->

  class Segments extends Backbone.Collection

    model: SegmentModel