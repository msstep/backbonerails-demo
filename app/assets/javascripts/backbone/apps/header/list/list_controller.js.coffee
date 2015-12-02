@Demo.module "HeaderApp.List", (List, App, Backbone, Marionette, $, _) ->
	
	List.Controller =
		
		listHeader: ->
			console.log "list header controller 1"
			links = App.request "header:entities"
			console.log links
			headerView = @getHeaderView links
			if headerView
			  console.log headerView
			else  
				console.log "list header controller -2"
			App.headerRegion.show headerView
			#console.log "list header controller 3"
		  

		getHeaderView: (links) -> 
			new List.Headers
			  collection: links   
