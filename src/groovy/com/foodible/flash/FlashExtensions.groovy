package com.foodible.flash

class FlashExtensions {

    public void setFlashInfo(final String message){
        doSetFlash(message, Level.INFO)
    }

    public void setFlashWarning(final String message){
        doSetFlash(message, Level.WARNING)
    }

    public void setFlashError(final String message){
        doSetFlash(message, Level.ERROR)
    }

    private void doSetFlash(final String message, final Level level){
        flash.message = message
        flash.level = level
    }
}
