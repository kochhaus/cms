package com.foodible

class CmsTagLib {

    static namespace = 'cms'

    def flashMessageHeader = {args, body ->
        if (!flash.message){
            return
        }

        out << """
            <div class="alert ${flash.level.presentation}">
                ${flash.message}
            </div>
        """
    }
}
