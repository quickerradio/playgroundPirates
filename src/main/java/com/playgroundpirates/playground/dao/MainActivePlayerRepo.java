package com.playgroundpirates.playground.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;

@Repository
public class MainActivePlayerRepo {

    JdbcTemplate template;

    @Autowired
    public void setDataSource(DataSource dataSource) {
        template = new JdbcTemplate(dataSource);
    }
}
