@Demo.module "HeaderApp.List", (List, App, Backbone, Marionette, $, _) ->
	
	List.Controller =
		
		listHeader: ->
			console.log "list header controller 1"
			headerView = @getHeaderView
			if headerView
			  console.log "list header controller 2"
			else  
				console.log "list header controller -2"
			App.headerRegion.show headerView
			
		  

		getHeaderView: -> 
			new List.Header