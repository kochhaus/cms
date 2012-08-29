<html>
    <head>
        <title>500</title>
        <meta name="layout" content="notauthorized" />
        <r:require module="errors"/>
    </head>
<body>
    <section class="error500">
        <g:if test="${exception}">
            <pre><g:each in="${exception.stackTraceLines}">${it.encodeAsHTML()}<br/></g:each></pre>
        </g:if>
    </section>
</body>
</html>