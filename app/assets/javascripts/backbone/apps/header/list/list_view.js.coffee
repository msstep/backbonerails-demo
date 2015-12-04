@Demo.module "HeaderApp.List", (List, App, Backbone, Marionette, $, _) ->
	class List.Header extends App.Views.ItemView
		tagName: "li"
		template: "header/list/templates/_header"		
	#class Show.Footer extends Marionette.ItemView
	#	template: "footer/show/templates/show_footer"
	class List.Headers extends App.Views.CompositeView		
		childView: List.Header
		childViewContainer: "ul"
		template: "header/list/templates/headers"

