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
public class MainGameEventsRepo {

    JdbcTemplate template;

    @Autowired
    public void setDataSource(DataSource dataSource) {
        template = new JdbcTemplate(dataSource);
    }

    public Collection<EVENT> getAll() {
        List<EVENT> events = new ArrayList<>();
		
		/* Hendel
		Pulls all data from the EVENT table. You should not need this table and should
		use the views instead. Check before using this */
        template.query(
            "SELECT * FROM jwolski.EVENT",
            (rs) -> {
                events.add(new EVENT(
                        rs.getString("EVENT_NAME"),
                        rs.getString("EVENT_DATE"),
                        rs.getString("EVENT_LOCATION"),
                        rs.getString("EVENT_HOST"),
                        rs.getString("EVENT_CATEGORY"),
                        rs.getString("EVENT_PHOTO"),
                        rs.getString("EVENT_DESC"),
                        "null"
                    )
                );
            }
        );

        return events;
    }
}