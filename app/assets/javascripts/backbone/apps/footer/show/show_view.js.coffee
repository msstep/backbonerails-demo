@Demo.module "FooterApp.Show", (Show, App, Backbone, Marionette, $, _) ->	

	class Show.Footer extends App.Views.ItemView
		template: "footer/show/templates/show_footer"
		#tagName: "span"
		#id: "footer"
		
		modelEvents:
		 	"change" : "render"
