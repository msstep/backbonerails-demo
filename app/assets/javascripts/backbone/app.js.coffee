@Demo = do (Backbone, Marionette) ->
	
	App = new Marionette.Application
	
	App.addRegions
		headerRegion: "#header-region"
		mainRegion: "#main-region"
		footerRegion: "#footer-region"
	
	App.addInitializer ->
		#App.execute "footer:show"
		#console.log "1111"	
    
    #console.log "22222"	    
    #App.module("HeaderApp").start()	
		App.module("FooterApp").start()
    
 
	
	App.on "initialize:after", ->
		if Backbone.history
			Backbone.history.start()
	
	App