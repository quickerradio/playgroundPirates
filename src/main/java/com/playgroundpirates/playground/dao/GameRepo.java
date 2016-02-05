package com.playgroundpirates.playground.dao;

import com.playgroundpirates.playground.Event;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import javax.sql.DataSource;
import java.sql.Blob;
import java.sql.Clob;
import java.time.LocalDateTime;
import java.time.OffsetDateTime;
import java.time.ZoneOffset;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import com.playgroundpirates.playground.Game;
import org.springframework.stereotype.Repository;

@Repository
public class GameRepo {

    JdbcTemplate template;

    @Autowired
    public void setDataSource(DataSource dataSource) {
        template = new JdbcTemplate(dataSource);
    }

    public Collection<Game> getTopGames() {
        List<Game> games = new ArrayList<>();
        template.query(
                "SELECT * FROM MAIN_TOPGAMES",
                (rs) -> {
                    Game.Builder builder = new Game.Builder();
                    builder.withName(rs.getString("GAME_NAME"));
                    builder.withCategory(rs.getString("GAME_CATEGORY"));
                    builder.withMaker(rs.getString("GAME_MAKER"));
                    Clob clob = rs.getClob("GAME_DESC");
                    builder.withMaxPlayers(rs.getInt("GAME_MAXPLAYER"));
                    builder.withDesc(clob.getSubString(1, (int) clob.length()));
                    games.add(builder.build());
   
                }
        );
        return games;
    }
}
