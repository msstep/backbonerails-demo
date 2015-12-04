@Demo = do (Backbone, Marionette) ->
	
	App = new Marionette.Application
	
	#App.rootRoute = "users" before
	App.rootRoute = Routes.users_path()


	#App.on "initialize:before", (options) ->	  устарело
	App.on "before:start", (options) ->	  
		@currentUser = App.request "set:current:user", options.currentUser
		console.log "2"

	App.reqres.setHandler "get:current:user", ->
		App.currentUser		

  
	App.addRegions
		headerRegion: "#header-region"
		mainRegion: "#main-region"
		footerRegion: "#footer-region"
	
	App.addInitializer ->
		console.log "1212"      
		App.module("HeaderApp").start()	    
		App.module("FooterApp").start()

    
	#App.on "initialize:after", (options) ->	 устарело 
	App.on "start", (options) ->	  	
		if Backbone.history
			Backbone.history.start()

			@navigate @rootRoute, trigger: true if @getCurrentRoute() is ""	# trigger true or false не заметил разницы

	App