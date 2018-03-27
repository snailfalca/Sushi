/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bean;

import com.entity.Product;
import com.model.DBContext;
import com.model.ProductModel;
import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author rat
 */
public class ProductBean implements Serializable {

    private boolean errorOccurs = false;

    public boolean isErrorOccurs() {
        return errorOccurs;
    }

    //Get most recent article
    public ArrayList<Product> getProductsInPage(int pageNo) {
        try {
            return new ProductModel().getProductsInPage(pageNo);
        } catch (Exception ex) {
            Logger.getLogger(ProductBean.class.getName()).log(Level.SEVERE, null, ex);
        }
        errorOccurs = true;
        return null;
    }

    public int getPagesCount() {
        try {
            return new ProductModel().getPagesCount();
        } catch (Exception ex) {
            Logger.getLogger(ProductBean.class.getName()).log(Level.SEVERE, null, ex);
        }
        errorOccurs = true;
        return 0;
    }
}
