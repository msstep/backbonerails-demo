@Demo.module "UsersApp.List", (List, App, Backbone, Marionette, $, _) ->
	
	class List.Layout extends App.Views.Layout
		console.log "rrrrrrr"
		template: "users/list/templates/list_layout"

