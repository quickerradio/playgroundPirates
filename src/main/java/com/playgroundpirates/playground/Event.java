package com.playgroundpirates.playground;

import sun.util.calendar.LocalGregorianCalendar;

import java.awt.*;
import java.util.Date;

/**
 * Created by hackathon on 2/4/2016.
 */
public class Event {

    public final long id;
    public final String name;
    public final Date start;
    public final Date end;

    public void setStatus(String status) {
        this.status = status;
    }

    private String status;
    public final String location;
    public final int maxPerson;
    public final String host;
    public final String category;
    public final String desc;
    public final Image photo;

    public Event(long id, String name, Date start, Date end
            , String status, String location, int maxPerson,
                 String host, String category, String desc, Image photo) {
        this.id = id;
        this.name = name;
        this.start = start;
        this.end = end;
        this.status = status;
        this.location = location;
        this.maxPerson = maxPerson;
        this.host = host;
        this.category = category;
        this.desc = desc;
        this.photo = photo;
    }

    public long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public Date getStart() {
        return start;
    }

    public Date getEnd() {
        return end;
    }

    public String getStatus() {
        return status;
    }

    public String getLocation() {
        return location;
    }

    public int getMaxPerson() {
        return maxPerson;
    }

    public String getHost() {
        return host;
    }

    public String getCategory() {
        return category;
    }

    public String getDesc() {
        return desc;
    }

    public Image getPhoto() {
        return photo;
    }


}
