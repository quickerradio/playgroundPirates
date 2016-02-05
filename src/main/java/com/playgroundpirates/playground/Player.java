package com.playgroundpirates.playground;

import com.playgroundpirates.playground.Event.Builder;

public class Player {

	public final long id;
    public final String handle;
    public final String firstName;
    public final String lastName;
    public final String email;
    public final boolean active;
    
    private Player(Builder builder){
    	id = builder.id;
    	handle = builder.handle;
    	firstName = builder.firstName;
    	lastName = builder.lastName;
    	email = builder.email;
    	active = builder.active;	
    }
    
    public static class Builder{
    	private long id;
    	private String handle;
    	private String firstName;
    	private String lastName;
    	private String email;
    	private boolean active;
    
    	public Builder withId(long id) {
    		this.id = id;
    		return this;
    	}
    	
    	public Builder withHandle(String handle) {
    		this.handle = handle;
    		return this;
    	}
    	
    	public Builder withFirstName(String firstName) {
    		this.firstName = firstName;
    		return this;
    	}
    	
    	public Builder withLastName(String lastName) {
    		this.lastName = lastName;
    		return this;
    	}
    	
    	public Builder withEmail(String email) {
    		this.email = email;
    		return this;
    	}
    	
    	public Builder withActive(boolean active) {
    		this.active = active;
    		return this;
    	}
    	
    	public long getId() {
    		return id;
    	}
    	
    	public String getHandle() {
    		return handle;
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
    	
    	public boolean getActive() {
    		return active;
    	}
    }
}
