package com.hacku.tcc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import javax.sql.DataSource;
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

    public Collection<event> getAll() {
        List<event> events = new ArrayList<>();
		
		//hendel: pulls the entire events table, should not be necessary for 
		//	initial project so check your needs before using. 
        template.query(
            "SELECT * FROM jwolski.event",
            (rs) -> {
                events.add(new event(
                        rs.getLong("event_ID"),
                        rs.getString("EVENT_NAME"),
                        rs.getString("EVENT_START"),
                        rs.getString("EVENT_END"),
                        rs.getString("EVENT_LOCATION"),
                        rs.getString("EVENT_MAXPLAYER"),
                        rs.getString("EVENT_HOST"),
                        rs.getString("EVENT_CATEGORY"),
                        rs.getString("EVENT_PHOTO"),
                        rs.getString("EVENT_DESC"),
                        "null"
                    )
                );
            }
        );

        return EVENTS;
    }
}