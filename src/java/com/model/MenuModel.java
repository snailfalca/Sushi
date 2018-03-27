/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.model;

import com.entity.Menu;
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
public class MenuModel {

    int ITEMS_EACH_PAGE = 2;

    public ArrayList<Menu> getProductsInPage(int pageNo) throws Exception {
        ArrayList<Menu> products = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            int to = pageNo * ITEMS_EACH_PAGE,
                    from = to - ITEMS_EACH_PAGE;
            String sql = "SELECT * FROM( "
                    + "SELECT *, ROW_NUMBER() over (order by ID) as row "
                    + "FROM Menu) a WHERE a.row > ? and a.row <= ?";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);

            ps.setInt(1, from);
            ps.setInt(2, to);

            rs = ps.executeQuery();

            while (rs.next()) {
                int id = rs.getInt("ID");
                String title = rs.getNString("Title"),
                        content = rs.getNString("Content");
                double price = rs.getDouble("price");

                products.add(new Menu(id, title, content, price));
            }

            rs.close();
            ps.close();
            conn.close();

            return products;
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

    public int getPagesCount() throws Exception {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            int result = 0;

            String sql = "SELECT COUNT(ID) FROM Menu";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();

            if (rs.next()) {
                result = (int) Math.ceil((double) rs.getInt(1) / ITEMS_EACH_PAGE);
            }

            rs.close();
            ps.close();
            conn.close();

            return result;
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
