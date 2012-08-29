package com.foodible.flash

public enum Level {

    ERROR('alert-error'),
    WARNING('alert-warning'),
    INFO('alert-info')

    public final String presentation

    public Level(final String presentation){
        this.presentation = presentation
    }
}