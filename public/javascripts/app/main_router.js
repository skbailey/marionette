define(["marionette"], function(Marionette){
  var MainRouter = Marionette.AppRouter.extend({
    appRoutes: {
      "" : "showSkrippers"
    },
    controller: {
      showSkrippers: function(){
        console.log("Show skrippers");
      }
    }
  });

  return MainRouter;
});