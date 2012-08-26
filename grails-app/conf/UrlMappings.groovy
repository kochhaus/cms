class UrlMappings {

	static mappings = {

        "/$controller/$action?/$id?"{
			constraints {
				controller(matches:/^((?!(api|mobile|web)).*)$/)
		  	}
		}

        "/" (
            controller: 'dashBoard'
        )

        "500"	(view:'/error')
        "404"	(view:'/errors/404')
        "403"	(view:'/error')
	}
}
