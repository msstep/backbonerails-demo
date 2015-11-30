@Demo.module "FooterApp.Show", (Show, App, Backbone, Marionette, $, _) ->
	
	Show.Controller =
		
		showFooter: ->		

			footerView = @getFooterView()	
			console.log "9999" 		
			App.footerRegion.show footerView

		
		getFooterView: ->
			new Show.Footer