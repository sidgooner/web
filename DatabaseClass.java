/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package mypackage;

import java.sql.*;

/**
 *
 * @author Siddharth
 */

public class DatabaseClass {
private Connection con;

public DatabaseClass() throws SQLException
{
    Connect();
}
    
private void Connect()
{
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        con= DriverManager.getConnection("jdbc:mysql://localhost:3306/webprojsp", "root", "");
    }
    
    catch(Exception ex)
    {
        System.out.println(ex.getMessage());
        
    }
}

public boolean loginValidateUser(String emailid, String password) throws SQLException
{
    String sql="select * from siteuser where emailid=? and password=?";
    PreparedStatement pstm= con.prepareStatement(sql);
    pstm.setString(1, emailid);
    pstm.setString(2, password);
    ResultSet rs=pstm.executeQuery();
    int i=0;
    while(rs.next())
    {
        i++;
    }
    
    if(i==1)
    return true;
    else
    return false;
}
public void addNewUser(String firstname,String lastname,String emailid,String password,String gender,String contactno)
 {
    try
    {
        String sql = "insert into siteuser values(?,?,?,?,?,?)";
        PreparedStatement pstm = con.prepareStatement(sql);
        pstm.setString(1,firstname);
         pstm.setString(2,lastname);
          pstm.setString(3,emailid);
           pstm.setString(4,password);
            pstm.setString(5,gender);
             pstm.setString(6,contactno);
             pstm.executeUpdate();
    }
    catch(Exception ex)
    {
        System.out.println(ex.getMessage());
    }
 
 } 
}