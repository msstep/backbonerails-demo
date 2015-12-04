@Demo.module "Entities", (Entities, App, Backbone, Marionette, $, _) ->
	
	class Entities.User extends Entities.Model
	
	class Entities.UsersCollection extends Entities.Collection
		model: Entities.User
		#url: "users"		before gem js-routes 
		url: -> Routes.users_path()		#before gem js-routes
	 
	API =
		setCurrentUser: (currentUser) ->
			new Entities.User currentUser		

		getUserEntities: ->
			users = new Entities.UsersCollection		
			users.fetch()
			users
	
	App.reqres.setHandler "set:current:user", (currentUser) ->
		console.log "1"
		console.log currentUser
		API.setCurrentUser currentUser
	
	
	App.reqres.setHandler "user:entities", ->		
		API.getUserEntities()
