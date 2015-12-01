@Demo.module "FooterApp.Show", (Show, App, Backbone, Marionette, $, _) ->
	
	Show.Controller =
		
		showFooter: ->		
      #console.log "Show.Controller 1"
			footerView = @getFooterView()	
			console.log footerView 		
			App.footerRegion.show footerView
      #console.log "Show.Controller 3"
		
		getFooterView: ->
			new Show.Footer