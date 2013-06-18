define(['marionette'], function(Marionette){
  var MainLayout = Marionette.Layout.extend({
    template: "#main-layout",

    regions: {
      menu: "#menu",
      content: "#content"
    }
  });

  return MainLayout;
});