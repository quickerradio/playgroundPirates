package com.playgroundpirates.playground;

import java.awt.*;
import java.util.Date;

public class Event {

    public final long id;
    public final String name;
    public final Date start;
    public final Date end;
    public final String status;
    public final String location;
    public final int maxPerson;
    public final String host;
    public final String category;
    public final String desc;
    public final Image photo;

    private Event(Builder builder) {
        id = builder.id;
        name = builder.name;
        start = builder.start;
        end = builder.end;
        status = builder.status;
        location = builder.location;
        maxPerson = builder.maxPerson;
        host = builder.host;
        category = builder.category;
        desc = builder.desc;
        photo = builder.photo;
    }

    public static class Builder {

        private long id;
        private String name;
        private Date start;
        private Date end;
        private String status;
        private String location;
        private int maxPerson;
        private String host;
        private String category;
        private String desc;
        private Image photo;

        public long getId() {
            return id;
        }

        public Builder withId(long id) {
            this.id = id;
            return this;
        }

        public String getName() {
            return name;
        }

        public Builder withName(String name) {
            this.name = name;
            return this;
        }

        public Date getStart() {
            return start;
        }

        public Builder withStart(Date start) {
            this.start = start;
            return this;
        }

        public Date getEnd() {
            return end;
        }

        public Builder withEnd(Date end) {
            this.end = end;
            return this;
        }

        public String getStatus() {
            return status;
        }

        public Builder withStatus(String status) {
            this.status = status;
            return this;
        }

        public String getLocation() {
            return location;
        }

        public Builder withLocation(String location) {
            this.location = location;
            return this;
        }

        public int getMaxPerson() {
            return maxPerson;
        }

        public Builder withMaxPerson(int maxPerson) {
            this.maxPerson = maxPerson;
            return this;
        }

        public String getHost() {
            return host;
        }

        public Builder withHost(String host) {
            this.host = host;
            return this;
        }

        public String getCategory() {
            return category;
        }

        public Builder withCategory(String category) {
            this.category = category;
            return this;
        }

        public String getDesc() {
            return desc;
        }

        public Builder withDesc(String desc) {
            this.desc = desc;
            return this;
        }

        public Image getPhoto() {
            return photo;
        }

        public Builder withPhoto(Image photo) {
            this.photo = photo;
            return this;
        }

        public Event build() {
            return new Event(this);
        }
    }

}
