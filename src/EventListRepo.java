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

    public Collection<EVENT_LIST> getAll() {
        List<EVENT_LIST> event = new ArrayList<>();
		
		//hendel: pulls listing of the first 6 upcoming events, 
		// 	for the events page, timeline
        template.query(
            "SELECT * FROM jwolski.EVENT_LIST",
            (rs) -> {
                events.add(new EVENT_LIST(
                        rs.getLong("EVENT_NAME"),
                        rs.getString("EVENT_DATE"),
                        rs.getString("EVENT_LOCATION"),
                        rs.getLong("EVENT_MAXPLAYER"),
                        rs.getString("EVENT_HOST"),
                        rs.getString("EVENT_CATEGORY"),
                        rs.getString("EVENT_DESC"),
						rs.getString("EVENT_PHOTO"),

                        "null"
                    )
                );
            }
        );

        return EVENTS_LIST;
    }
}