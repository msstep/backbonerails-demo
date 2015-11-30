@Demo.module "FooterApp", (FooterApp, App, Backbone, Marionette, $, _) ->
	@startWithParent = false
	
	API =
		showFooter: ->
			FooterApp.Show.Controller.showFooter()
			#console.log "inside show footer"
	
	FooterApp.on "start", ->
	 API.showFooter()