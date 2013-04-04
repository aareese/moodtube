if (typeof moodtube === 'undefined') moodtube = {};

(function() {
  function Video(opts) {
    _.extend(this, {
      title: '',
      runningLength: 0,
      description: 'set a video description.'
    }, opts);

    this._makeVariablesObservables();
  };
  
  Video.prototype._makeVariablesObservables = function() {
    var _this = this;
    _(Object.keys(this)).each(function(key) {
      _this[key] = ko.observable(_this[key]);
    });
  };

  Video.prototype.toString = function() {
    return "title: " + this.title + " description: " + this.description;
  };

  moodtube.Video = Video;
})();