package com.playgroundpirates.playground;

import oracle.jdbc.pool.OracleDataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

import com.playgroundpirates.playground.dao.DataSourceConfig;

import javax.sql.DataSource;
import java.sql.SQLException;

@SpringBootApplication
public class Application {
    @Autowired
    private DataSourceConfig dataSourceConfig;

    public static void main(String[] args) {
        SpringApplication.run(Application.class);
    }

    @Bean
    public DataSource dataSource() throws SQLException {
        OracleDataSource dataSource = new OracleDataSource();
        dataSource.setURL(dataSourceConfig.getUrl());
        dataSource.setUser(dataSourceConfig.getUsername());
        dataSource.setPassword(this.dataSourceConfig.getPassword());
        return dataSource;
    }
}
