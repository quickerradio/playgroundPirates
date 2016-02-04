Skip to content
This repository  
Search
Pull requests
Issues
Gist
 @quickerradio
 Watch 1
  Star 0
  Fork 0 AKrill91/tcc-hacku
 Code  Issues 0  Pull requests 0  Wiki  Pulse  Graphs
Branch: master Find file Copy pathtcc-hacku/src/main/java/com/hacku/tcc/MainGameEventsRepo.java
8fcc2ca  5 hours ago
@AKrill AKrill Connecting to db.
1 contributor
RawBlameHistory     42 lines (33 sloc)  1.03 KB
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
public class MainGameEventsDao {

    JdbcTemplate template;

    @Autowired
    public void setDataSource(DataSource dataSource) {
        template = new JdbcTemplate(dataSource);
    }

    public Collection<MainGameEvent> getAll() {
        List<MainGameEvent> mainGameEvents = new ArrayList<>();

        template.query(
            "SELECT * FROM jwolski.MAIN_GAMEEVENT",
            (rs) -> {
                mainGameEvents.add(new MainGameEvent(
                        rs.getString("EVENT_NAME"),
						rs.getString("EVENT_DATE"),
						rs.getString("EVENT_LOCATION"),
						rs.getString("EVENT_HOST"),
						rs.getString("EVENT_CATEGORY"),
						rs.getString("EVENT_DESC"),
						rs.getString("EVENT_PHOTO"),
                        "null"
                    )
                );
            }
        );

        return mainGameEvents;
    }
}
Status API Training Shop Blog About Pricing
© 2016 GitHub, Inc. Terms Privacy Security Contact Help