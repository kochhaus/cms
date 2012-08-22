class UrlMappings {

	static mappings = {
		
		"/"	{
			controller	= 'home'
			action		= { 'index' }
            view		= { 'index' }
        }
		"/$controller/$action?/$id?"{
			constraints {
				controller(matches:/^((?!(api|mobile|web)).*)$/)
		  	}
		}
		
		/* 
		 * System Pages without controller 
		 */
		"500"	(view:'/error')
	}
}
