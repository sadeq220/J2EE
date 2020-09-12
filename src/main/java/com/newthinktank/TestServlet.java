package com.newthinktank;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

@WebServlet(name = "TestServlet")
public class TestServlet extends HttpServlet {
    ArrayList<AccountInfo> arr=new ArrayList<AccountInfo>();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username=request.getParameter("user");
        AccountInfo tempuser=new AccountInfo();
        tempuser.setUser(username);
       int n= Collections.binarySearch(arr,tempuser,Comparator.comparing(AccountInfo::getUser));
if(n>=0){
    AccountInfo thisuser=arr.get(n);
if(request.getParameter("pass").equals(thisuser.getPass())){
    request.getSession().setAttribute("info",thisuser);
    response.sendRedirect("welcome.jsp");
}else{
response.sendRedirect("login.jsp");}
}else{
    response.sendRedirect("login.jsp");
}

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
PrintWriter out=response.getWriter();
out.print("doget method");
        AccountInfo thisUser=(AccountInfo)request.getSession().getAttribute("info");
        if(thisUser != null){
            arr.add(thisUser);
           arr.sort(Comparator.comparing(AccountInfo::getUser));
            response.sendRedirect("welcome.jsp");
        }
    }
}
