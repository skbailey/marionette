define [
  'api',
  'backbone',
  'collections/segments'
  ], (API, Backbone, SegmentsCollection) ->

  class Rundown extends Backbone.Model

    url: API.rundown
    initialize: ->
      @collection = new SegmentsCollection