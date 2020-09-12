package com.newthinktank;

import java.io.Serializable;

public class AccountInfo implements Serializable {
    private String user;
    private  String pass;

    public void setUser(String user){
        this.user=user;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getPass() {
        return pass;
    }

    public String getUser() {
        return user;
    }
}
