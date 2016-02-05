package com.playgroundpirates.playground.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.playgroundpirates.playground.Event;
import com.playgroundpirates.playground.Player;

import java.sql.Clob;
import java.time.LocalDateTime;
import java.time.OffsetDateTime;
import java.time.ZoneOffset;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import javax.sql.DataSource;

@Repository
public class ActivePlayerRepo {

    JdbcTemplate template;

    @Autowired
    public void setDataSource(DataSource dataSource) {
        template = new JdbcTemplate(dataSource);
    }
    
    public Collection<Player> getActivePlayers() {
        List<Player> activePlayers = new ArrayList<>();
        template.query(
            "SELECT * FROM MAIN_ACTIVEPLAYER",
            (rs) -> {
                Player.Builder builder = new Player.Builder();
                builder.withHandle(rs.getString("PLAYER_HANDLE"));
                builder.withActive(rs.getString("PLAYER_ACTIVE").equals("Y"));
            }
        );
        return activePlayers;
    }
}
