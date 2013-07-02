define([
  'marionette',
  'backbone',
  'views/item_list'
  ], function(Marionette, Backbone, ItemListView){
  var MainLayout = Marionette.Layout.extend({
    id: "main-layout",
    template: "#main-layout",

    regions: {
      menu: "#menu",
      content: "#content"
    },

    onRender: function(options){
      this.content.show(new ItemListView({ 
          collection: new Backbone.Collection([{ name: 'Alice'}, { name: 'Bob' }]) 
        })
      );
    }
  });

  return MainLayout;
});