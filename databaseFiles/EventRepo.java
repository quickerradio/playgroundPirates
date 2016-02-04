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
public class MemberRepo {

    JdbcTemplate template;

    @Autowired
    public void setDataSource(DataSource dataSource) {
        template = new JdbcTemplate(dataSource);
    }

    public Collection<Member> getAll() {
        List<Member> members = new ArrayList<>();

        template.query(
            "SELECT * FROM jwolski.TEAM_MEMBER",
            (rs) -> {
                members.add(new Member(
                        rs.getLong("TEAM_MEMBER_ID"),
                        rs.getString("FIRST_NAME"),
                        "null"
                    )
                );
            }
        );

        return members;
    }
}