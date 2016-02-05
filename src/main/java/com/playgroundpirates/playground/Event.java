package com.playgroundpirates.playground;

import java.awt.*;
import java.time.OffsetDateTime;

public class Event {

    public final long id;
    public final String name;
    public final OffsetDateTime start;
    public final OffsetDateTime end;
    public final String status;
    public final String location;
    public final int maxPeople;
    public final String host;
    public final String category;
    public final String desc;
    public final Sting imgUrl;

    private Event(Builder builder) {
        id = builder.id;
        name = builder.name;
        start = builder.start;
        end = builder.end;
        status = builder.status;
        location = builder.location;
        maxPeople = builder.maxPeople;
        host = builder.host;
        category = builder.category;
        desc = builder.desc;
        imgUrl = builder.imgUrl;
    }

    public static class Builder {

        private long id;
        private String name;
        private OffsetDateTime start;
        private OffsetDateTime end;
        private String status;
        private String location;
        private int maxPeople;
        private String host;
        private String category;
        private String desc;
        private String imgUrl;
        
        public String getImgUrl() {
        	return imgUrl;
        }

        public Builder withImg(String img) {
        	this.imgUrl = img;
        	return this;
        }
        
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

        public OffsetDateTime getStart() {
            return start;
        }

        public Builder withStart(OffsetDateTime start) {
            this.start = start;
            return this;
        }

        public OffsetDateTime getEnd() {
            return end;
        }

        public Builder withEnd(OffsetDateTime end) {
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

        public int getMaxPeople() {
            return maxPeople;
        }

        public Builder withMaxPeople(int maxPeople) {
            this.maxPeople = maxPeople;
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

        public Event build() {
            return new Event(this);
        }
    }

}
