define [
  'marionette'
  ], (Marionette) ->

    class CommentsView extends Marionette.ItemView
      className: 'comments view'
      template: '#comments-layout'