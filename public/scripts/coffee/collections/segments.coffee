define [
  'backbone',
  'models/segment'
  ], (Backbone, SegmentModel) ->

  class Segments extends Backbone.Collection

    url: '/static/segments.json'
    model: SegmentModel