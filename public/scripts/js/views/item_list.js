define(['marionette'], function(Marionette){
  var ItemView = Marionette.ItemView.extend({
    className: 'option',
    template: '#item-view'
  });

  var ItemList = Marionette.CollectionView.extend({
    id: 'poll',
    itemView: ItemView
  });

  return ItemList;
});