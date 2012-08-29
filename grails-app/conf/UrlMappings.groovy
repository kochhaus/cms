class UrlMappings {

	static mappings = {

        "/$controller/$action?/$id?"{
			constraints {
				controller(matches:/^((?!(api|mobile|web)).*)$/)
		  	}
		}

        "/" (
            controller: 'dashboard'
        )

        "/denied"	(view:'/errors/404')

        "500"	(view:'/errors/500')
        "404"	(view:'/errors/404')
        "403"	(view:'/errors/403')
	}
}
