define [
  'api',
  'backbone',
  'models/segment'
  ], (API, Backbone, SegmentModel) ->

  class Segments extends Backbone.Collection

    url: API.rundown
    model: SegmentModel