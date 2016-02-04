package com.playgroundpirates.playground.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.playgroundpirates.playground.Event;

import javax.sql.DataSource;

import java.sql.Clob;
import java.time.LocalDateTime;
import java.time.OffsetDateTime;
import java.time.ZoneOffset;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

@Repository
public class EventRepo {

    JdbcTemplate template;

    @Autowired
    public void setDataSource(DataSource dataSource) {
        template = new JdbcTemplate(dataSource);
    }

    public Collection<Event> getUpcomingGame() {
        List<Event> games = new ArrayList<>();
        template.query(
            "SELECT * FROM MAIN_GAMEEVENTS",
            (rs) -> {
                Event.Builder builder = new Event.Builder();
                builder.withName(rs.getString("EVENT_NAME"));
                builder.withLocation(rs.getString("EVENT_LOCATION"));
                builder.withStart(
                    OffsetDateTime.of(
                        LocalDateTime.parse(
                            rs.getString("EVENT_START"),
                            DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss")
                        ),
                        ZoneOffset.UTC
                    )
                );
                builder.withEnd(
                    OffsetDateTime.of(
                        LocalDateTime.parse(
                            rs.getString("EVENT_END"),
                            DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss")
                        ),
                        ZoneOffset.UTC
                    )
                );
                builder.withHost(rs.getString("EVENT_HOST"));
                builder.withCategory(rs.getString("EVENT_CATEGORY"));
                Clob clob = rs.getClob("EVENT_DESC");
                builder.withDesc(clob.getSubString(1, (int) clob.length()));
                games.add(builder.build());
            }
        );
        return games;
    }
}
