/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bean;

import com.entity.Contact;
import com.model.ContactModel;
import java.io.Serializable;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author rat
 */
public class ContactBean implements Serializable {

    private boolean errorOccurs = false;

    public Contact getContact() {
        try {
            return new ContactModel().getContact();
        } catch (Exception ex) {
            Logger.getLogger(ContactBean.class.getName()).log(Level.SEVERE, null, ex);
        }
        errorOccurs = true;
        return null;
    }
}
