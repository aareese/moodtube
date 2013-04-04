if (typeof moodtube === 'undefined') moodtube = {};

$(document).ready(function() {
  moodtube.videos = ko.observableArray([]);

  setTimeout(function() {
    moodtube.videos.push(new moodtube.Video({
      title: 'My First Video!'
    }));
  }, 2000);

  setTimeout(function() {
    moodtube.videos.push(new moodtube.Video({
      title: 'My First Video!'
    }));
  }, 4000);

  ko.applyBindings();
});