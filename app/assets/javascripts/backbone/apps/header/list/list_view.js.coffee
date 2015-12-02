@Demo.module "HeaderApp.List", (List, App, Backbone, Marionette, $, _) ->
  #console.log "333"
	class List.Header extends Marionette.ItemView
		tagName: "li"
		template: "header/list/templates/_header"		
	#class Show.Footer extends Marionette.ItemView
	#	template: "footer/show/templates/show_footer"
	class List.Headers extends Marionette.CompositeView		
		childView: List.Header
		childViewContainer: "ul"
		template: "header/list/templates/headers"
  console.log "555"		
