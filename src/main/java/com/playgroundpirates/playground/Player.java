package com.playgroundpirates.playground;

/**
 * Created by hackathon on 2/4/2016.
 */
public class Player {

    public final long id;
    public final String handle;
    public final String firstName;
    public final String lastName;
    public final String email;
    public final int active;

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

    public String getEmail() {
        return email;
    }

    public String getHandle() {
        return handle;
    }
}
