package com.jk.service;

import com.jk.model.Users;

import javax.servlet.http.HttpServletRequest;

public interface Userservice {

    void adduser(Users str);

    boolean userpas(Users user, HttpServletRequest request);
}
