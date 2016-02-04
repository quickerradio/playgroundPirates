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
public class MainActivePlayerRepo {

    JdbcTemplate template;

    @Autowired
    public void setDataSource(DataSource dataSource) {
        template = new JdbcTemplate(dataSource);
    }

    public Collection<MAIN_ACTIVEPLAYER> getAll() {
        List<MAIN_ACTIVEPLAYER> mainActivePlayers = new ArrayList<>();
		
		//hendel: pulls listing of the all of the players listed as active in the DB
		//  	used for the main page. 
        template.query(
            "SELECT * FROM jwolski.MAIN_ACTIVEPLAYER",
            (rs) -> {
                mainActivePlayers.add(new MAIN_ACTIVEPLAYER(
                        rs.getLong("PLAYER_HANDLE"),
                        rs.getString("PLAYER_ACTIVE"),
                        "null"
                    )
                );
            }
        );

        return mainActivePlayers;
    }
}