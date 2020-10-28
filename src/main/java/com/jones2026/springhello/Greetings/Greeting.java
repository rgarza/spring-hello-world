package com.jones2026.springhello.Greetings;

public class Greeting {

    private final long id;
    private final String content;
    private final String message = "pickles";

    public Greeting(long id, String content) {
        this.id = id;
        this.content = content;
    }

    public long getId() {
        return id;
    }

    public String getContent() {
        return content;
    }

    public String getMessage() {
        return message;
    }
}