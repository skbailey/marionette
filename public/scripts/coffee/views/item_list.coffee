define [
  'marionette'
  ], (Marionette) ->

  class ItemView extends Marionette.ItemView
    className: 'option'
    template: '#item-view'

  class ItemList extends Marionette.CollectionView
    id: 'poll'
    itemView: ItemView