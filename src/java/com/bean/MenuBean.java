/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bean;

import com.entity.Menu;
import com.entity.Product;
import com.model.MenuModel;
import com.model.ProductModel;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author rat
 */
public class MenuBean implements Serializable {

    private boolean errorOccurs = false;

    public boolean isErrorOccurs() {
        return errorOccurs;
    }

    //Get most recent article
    public ArrayList<Menu> getMenusInPage(int pageNo) {
        try {
            return new MenuModel().getProductsInPage(pageNo);
        } catch (Exception ex) {
            Logger.getLogger(MenuBean.class.getName()).log(Level.SEVERE, null, ex);
        }
        errorOccurs = true;
        return null;
    }

    public int getPagesCount() {
        try {
            return new MenuModel().getPagesCount();
        } catch (Exception ex) {
            Logger.getLogger(MenuBean.class.getName()).log(Level.SEVERE, null, ex);
        }
        errorOccurs = true;
        return 0;
    }
}
