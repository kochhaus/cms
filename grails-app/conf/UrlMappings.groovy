class UrlMappings {

	static mappings = {
		
		"/"	{
			controller = 'login'
			action =  'auth'
        }

        "/$controller/$action?/$id?"{
			constraints {
				controller(matches:/^((?!(api|mobile|web)).*)$/)
		  	}
		}

        "500"	(view:'/error')
        "404"	(view:'/error')
	}
}
