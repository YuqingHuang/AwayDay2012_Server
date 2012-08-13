AwayDay2012_Server
==================

The server side of the AwayDay2012

To create sessions:

	rails console
    Session.create date: Date.today, title: 'introduction to rails', description: '', start: Date.today + 8.hours, end: Date.today + 9.hours, speaker: 'nick zhang', location: 'green room'
    Session.create date: Date.today, title: 'introduction to clojure', description: '', start: Date.today + 9.hours, end: Date.today + 10.hours, speaker: 'li yanhui', location: 'green room'