package com.playgroundpirates.playground;

import java.awt.*;

/**
 * Created by hackathon on 2/4/2016.
 */
public class Game {

    public final long id;
    public final String name;
    public final String category;
    public final String maker;
    public final int count;
    public final int maxPlayers;
    public final String desc;
    public final Image photo;


    public Game(long id, String name, String category, String maker, int count, int maxPlayers, String desc, Image photo) {
        this.id = id;
        this.name = name;
        this.category = category;
        this.maker = maker;
        this.count = count;
        this.maxPlayers = maxPlayers;
        this.desc = desc;
        this.photo = photo;
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

