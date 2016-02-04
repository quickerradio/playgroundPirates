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

/* HENDEL: 
	FOR USE ON THE MAIN PAGE, SUBEVENTS BENEATH THE MAIN EVENTS. 
	*/
	
@Repository
public class MainOtherEventRepo {

    JdbcTemplate template;

    @Autowired
    public void setDataSource(DataSource dataSource) {
        template = new JdbcTemplate(dataSource);
    }

    public Collection<MainOtherEvent> getAll() {
        List<MainOtherEvent> moevents = new ArrayList<>();

        template.query(
            "SELECT * FROM jwolski.MAIN_OTHEREVENT",
            (rs) -> {
                moevents.add(new MainOtherEvent(
                        rs.getString("EVENT_NAME"),
						rs.getString("EVENT_DATE"),
						rs.getString("EVENT_LOCATION"),
						rs.getString("EVENT_HOST"),
						rs.getString("EVENT_CATEGORY"),
						rs.getString("EVENT_DEC"),
						rs.getString("EVENT_PHOTO"),
                        "null"
                    )
                );
            }
        );

        return moevents;
    }
}
