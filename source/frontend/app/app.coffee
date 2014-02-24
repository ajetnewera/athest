# Application bootstrapper

module.exports = Em.Application.create(ready: ->
	Ember.run.next this, ->
		$(document).foundation()
)