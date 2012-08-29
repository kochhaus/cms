<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <title><g:layoutTitle default="${meta(name: 'app.name')}"/></title>
        <g:layoutHead/>
        <r:require modules="bootstrap, application"/>
        <r:layoutResources/>
    </head>
    <body>
        <div class="navbar navbar-fixed-top">
            <div class="navbar-inner">
                <div class="container">
                    <a class="brand" href="${createLink(uri: '/')}">${meta(name: 'app.name')}&nbsp;<small>v${meta(name: 'app.version')}</small></a>
                    <ul class="nav">
                        <li  class="${controllerName == 'user' ? 'active' : ''}"><a href="${createLink(controller: 'user')}">Users</a></li>
                    </ul>
                    <ul class="pull-right nav">
                        <li class="pull-right"><a href="${createLink(controller: 'logout')}">Logout</a></li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="container">
            <g:layoutBody/>
        </div>

        <!--[if lt IE 9]>
              <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
         <![endif]-->
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
        <r:layoutResources/>
    </body>
</html>