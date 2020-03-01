<%-- 
    Document   : controller
    Created on : Mar 1, 2020, 11:29:57 AM
    Author     : Siddharth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="pDAO" class="mypackage.DatabaseClass" scope="page"/>
<%
    if(request.getParameter("page").toString().equals("userlogin"))
    {
        //out.print(pDAO.loginValidateUser(request.getParameter("emailid").toString(),request.getParameter("password").toString()));
        if(pDAO.loginValidateUser(request.getParameter("emailid").toString(),request.getParameter("password").toString()))
        {
            session.setAttribute("userStatus", 1);
            session.setAttribute("emailid",request.getParameter("emailid").toString() );
            response.sendRedirect("userhome.jsp");
        }
        else
        {
            request.getSession().setAttribute("userStatus", "-1");
        response.sendRedirect("index.jsp?value=2");
        }
    }
    
    if(request.getParameter("page").toString().equals("usersignup"))   
 {
     String firstname = request.getParameter("firstname");
     String lastname = request.getParameter("lastname");
     String emailid = request.getParameter("emailid");
     String password = request.getParameter("password");
     String gender = request.getParameter("gender");
     String contactno = request.getParameter("contactno");
     
     pDAO.addNewUser(firstname,lastname,emailid,password,gender,contactno);
     response.sendRedirect("index.jsp");
     
     
 }
    
    
    
    %>