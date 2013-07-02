// Generated by CoffeeScript 1.6.3
(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  define(['api', 'backbone', 'collections/segments'], function(API, Backbone, SegmentsCollection) {
    var Rundown, _ref;
    return Rundown = (function(_super) {
      __extends(Rundown, _super);

      function Rundown() {
        _ref = Rundown.__super__.constructor.apply(this, arguments);
        return _ref;
      }

      Rundown.prototype.url = API.rundown;

      Rundown.prototype.initialize = function() {
        return this.collection = new SegmentsCollection;
      };

      return Rundown;

    })(Backbone.Model);
  });

}).call(this);
