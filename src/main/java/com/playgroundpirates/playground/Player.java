package com.playgroundpirates.playground;

/**
 * Created by hackathon on 2/4/2016.
 */
public class Player {

    private long id;
    private String handle;
    private String firstName;
    private String lastName;
    private String email;
    private int active;

    public Player(long id, String firstName, String lastName, String handle, String email)
    {
        this.id = id;
        this.firstName = firstName;
        this.lastName = lastName;
        this.handle = handle;
        this.email = email;
        active = 0;
    }

    public long getId() {
        return id;
    }

    public int getActive() {
        return active;
    }

    public String getFirstName() {
        return firstName;
    }

    public String getLastName() {
        return lastName;
    }


}
