<html>
    <head>
        <title><g:message code="springSecurity.login.title"/></title>
    	<meta name="layout" content="notauthorized"/>
    </head>
	<body>
        <section>
            <div class="row">
                <div class="span4 offset4 well">
                    <g:if test="${flash.message}">
                        <div class="alert alert-error">${flash.message}</div>
                    </g:if>
                    <form action="${postUrl}" method="POST" id="loginForm">
                        <label for="username"><g:message code="cms.userEmail"/>:</label>
                        <input type="text" class="span4" name="j_username" id="username" />

                        <label for="password"><g:message code="springSecurity.login.password.label"/>:</label>
                        <input type="password" class="span4" name="j_password" id="password"/>

                        <div class="form-actions">
                            <div class="pull-right">
                                <input type="submit" id="submit" class="btn btn-primary" value="${message(code: "springSecurity.login.button")}"/>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </section>
        <script type="text/javascript">
            <!--
            (function() {
                document.forms["loginForm"].elements["j_username"].focus();
            })();
            // -->
        </script>
    </body>
</html>
