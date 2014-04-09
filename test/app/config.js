require.config({
  paths: {
    jquery: "/scripts/lib/jquery",
    underscore: "/scripts/lib/underscore",
    backbone: "/scripts/lib/backbone",
    marionette: "/scripts/lib/marionette",
    jasmine: '/lib/jasmine-1.3.1/jasmine',
    'jasmine-html': '/lib/jasmine-1.3.1/jasmine-html',
    spec: "/spec/",
    src: "/src/"
  },
  shim: {
    jquery: {
      exports: "jQuery"
    },
    underscore: {
      exports: "_"
    },
    backbone: {
      deps: ["jquery", "underscore"],
      exports: "Backbone"
    },
    marionette: {
      deps: ["jquery", "underscore", "backbone"],
      exports: "Marionette"
    },
    jasmine: {
      exports: 'jasmine'
    },
    'jasmine-html': {
      deps: ['jasmine'],
      exports: 'jasmine'
    }
  }
});

require(["jquery", "jasmine-html", "spec/SpecHelper"], function($, jasmine){
  var jasmineEnv = jasmine.getEnv();
  jasmineEnv.updateInterval = 1000;
 
  var htmlReporter = new jasmine.HtmlReporter();
 
  jasmineEnv.addReporter(htmlReporter);
 
  jasmineEnv.specFilter = function(spec) {
    return htmlReporter.specFilter(spec);
  };
 
  var specs = [];
 
  specs.push('spec/PlayerSpec');
 
  $(function(){
    require(specs, function(){
      jasmineEnv.execute();
    });
  });
});