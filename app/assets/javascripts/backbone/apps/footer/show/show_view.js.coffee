@Demo.module "FooterApp.Show", (Show, App, Backbone, Marionette, $, _) ->	
	console.log "111"
	class Show.Footer extends Marionette.ItemView
		template: "footer/show/templates/show_footer"
		#tagName: "span"
		#id: "footer"
		console.log "222"
