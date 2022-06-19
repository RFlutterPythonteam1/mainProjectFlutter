<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%

request.setCharacterEncoding("utf-8");
String u_id= request.getParameter("u_id");
String u_pw = request.getParameter("u_pw");
String u_name = request.getParameter("u_name");
String u_email = request.getParameter("u_email");


String url_mysql = "jdbc:mysql://localhost/movie?serverTimezone=UTC&characterEncoding=utf8&useSSL=FALSE";
String id_mysql = "root";
String pw_mysql = "qwer1234";

PreparedStatement ps = null;

try{
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection conn_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql);
    Statement stmt_mysql = conn_mysql.createStatement();

    String query = "insert into user (u_id, u_pw, u_name, u_email) values (?, ?, ?, ?)";

    ps = conn_mysql.prepareStatement(query);
    ps.setString(1, u_id);
    ps.setString(2, u_pw);
    ps.setString(3, u_name);
    ps.setString(4, u_email);
 
    ps.executeUpdate();
    conn_mysql.close();
%>
    {"result":"OK"}
<%
} catch(Exception e){
%>
    {"result":"ERROR"}
<%
}
%>