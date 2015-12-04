@Demo.module "FooterApp.Show", (Show, App, Backbone, Marionette, $, _) ->
	
	Show.Controller =
		
		showFooter: ->		  
			console.log "111"
			cu = App.currentUser
			footerView = @getFooterView cu#App.currentUser#currentUser

			App.footerRegion.show footerView
		
		getFooterView: (currentUser) ->
			new Show.Footer  
			  model: currentUser 