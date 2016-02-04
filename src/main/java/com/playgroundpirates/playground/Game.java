package com.playgroundpirates.playground;

import java.awt.*;

/**
 * Created by hackathon on 2/4/2016.
 */
public class Game {

    public long id;
    public final String name;
    public final String category;
    public final String maker;
    public final int count;
    public final int maxPlayers;
    public final String desc;
    public final Image photo;


    private Game(Builder builder)
    {
        id = builder.id;
        name = builder.name;
        category = builder.category;
        maker = builder.maker;
        count = builder.count;
        maxPlayers = builder.maxPlayers;
        desc = builder.desc;
        photo = builder.photo;

    }

    public static  class  Builder{
        private long id;
        private String name;
        private String category;
        private String maker;
        private int count;
        private int maxPlayers;
        private String desc;
        private Image photo;

        public Builder withPhoto(Image photo){
            this.photo = photo;
            return this;
        }

        public Builder withDesc(String desc){
            this.desc = desc;
            return this;
        }

        public Builder withMaxPlayers(int maxPlayers){
            this.maxPlayers = maxPlayers;
            return this;
        }

        public Builder withId(long id){
            this.id = id;
            return this;
        }

        public Builder withName(String name){
            this.name = name;
            return this;
        }

        public Builder withCategory(String category){
            this.category = category;
            return this;
        }

        public Builder withMaker(String maker){
            this.maker = maker;
            return this;
        }

        public Builder withCount(int count){
            this.count = count;
            return this;
        }

        public long getId() {
            return id;
        }

        public String getName() {
            return name;
        }

        public String getCategory() {
            return category;
        }

        public String getMaker() {
            return maker;
        }

        public int getCount() {
            return count;
        }

        public int getMaxPlayers() {
            return maxPlayers;
        }

        public String getDesc() {
            return desc;
        }

        public Image getPhoto() {
            return photo;
        }

        public Game build() {
            return new Game(this);
        }


    }

    public long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getCategory() {
        return category;
    }

    public String getMaker() {
        return maker;
    }

    public int getCount() {
        return count;
    }

    public int getMaxPlayers() {
        return maxPlayers;
    }

    public String getDesc() {
        return desc;
    }

    public Image getPhoto() {
        return photo;
    }
}

