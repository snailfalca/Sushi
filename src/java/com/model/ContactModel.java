/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.model;

import com.entity.Contact;
import com.entity.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author crust
 */
public class ContactModel {

    int ITEMS_EACH_PAGE = 2;

    public Contact getContact() throws Exception {
        Contact contact = null;
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            String sql = "SELECT * FROM Contact";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);

            rs = ps.executeQuery();

            if (rs.next()) {
                int id = rs.getInt("ID");
                String address = rs.getNString("Address"),
                        tel = rs.getNString("Tel"),
                        email = rs.getNString("Email"),
                        openHours = rs.getNString("OpenHour");
                contact = new Contact(id, address, tel, email, openHours);
            }

            rs.close();
            ps.close();
            conn.close();

            return contact;
        } catch (Exception e) {
            if (rs != null && !rs.isClosed()) {
                rs.close();
            }
            if (ps != null && !ps.isClosed()) {
                ps.close();
            }
            if (conn != null && !conn.isClosed()) {
                conn.close();
            }
            throw e;
        }
    }
}
