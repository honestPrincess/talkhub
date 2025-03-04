package org.codenova.talkhub.model.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

/*
   user 테이블에 관련된 DB 작업을 처리하게 될것.
 */
public class UserDAO {
    // 1. 데이터 등록
    // insert into users values(?, ? , ? , ? , ?, now() )
    public boolean create(String id, String password, String nickname, String gender, int birth) {
        boolean result = false;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn =  DriverManager.getConnection("jdbc:mysql://database.czmu6aw8cbi7.ap-northeast-2.rds.amazonaws.com:3306/talkhub","admin","1q2w3e4r");

            PreparedStatement ps = conn.prepareStatement("insert into users values(?, ?, ?, ?, ?, now())");
            ps.setString(1, id);
            ps.setString(2, password);
            ps.setString(3, nickname);
            ps.setString(4, gender);
            ps.setInt(5, birth);

            int r = ps.executeUpdate();
            result = true; // r값을 확인 안하고 result를 트루로 설정한 이유?

            conn.close();

        }catch (Exception e) {
            System.out.println("UserDao.create : "+e.toString() );
        }

        return result;
        // end boolean create(String id, String password, ... ) ==================================

    }
}
