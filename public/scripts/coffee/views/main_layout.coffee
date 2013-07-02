define [
  'marionette',
  'backbone',
  'views/item_list'
  ], (Marionette, Backbone, ItemListView) ->
  class MainLayout extends Marionette.Layout
    template: "#main-layout",

    regions: 
      nav: "#segments"
      display: "#display"
      comments: "#comments"

    onRender: (options) ->
      @display.show new ItemListView collection: new Backbone.Collection([{ name: 'Alice'}, { name: 'Bob' }]) 
      