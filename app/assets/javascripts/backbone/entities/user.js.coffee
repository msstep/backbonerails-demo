@Demo.module "Entities", (Entities, App, Backbone, Marionette, $, _) ->
	
	class Entities.User extends Entities.Model
	
	class Entities.UsersCollection extends Entities.Collection
		model: Entities.User
		#url: "users"		before gem js -routes 
		url: -> Routes.users_path()		
	 
	API =
		setCurrentUser: (currentUser) ->
			new Entities.User currentUser		

		getUserEntities: (cb) ->	
			users = new Entities.UsersCollection		
			users.fetch
				success: ->
					cb users
		
	
	App.reqres.setHandler "set:current:user", (currentUser) ->
		console.log currentUser
		API.setCurrentUser currentUser
	
	
	App.reqres.setHandler "user:entities", (cb) ->	
		API.getUserEntities cb
