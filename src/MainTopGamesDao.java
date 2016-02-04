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
public class MainTopGamesDao {

    JdbcTemplate template;

    @Autowired
    public void setDataSource(DataSource dataSource) {
        template = new JdbcTemplate(dataSource);
    }

    public Collection<MainTopGames> getAll() {
        List<MainTopGames> mainTopGame = new ArrayList<>();

        template.query(
            "SELECT * FROM jwolski.MAIN_TOPGAMES",
            (rs) -> {
                mainTopGame.add(new MainTopGames(
                        rs.getString("GAME_NAME"),
						rs.getString("GAME_CATEGORY"),
						rs.getString("GAME_DESC"),
						rs.getString("GAME_PHOTO"),
                        "null"
                    )
                );
            }
        );

        return mainTopGame;
    }
}
