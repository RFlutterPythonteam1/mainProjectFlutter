<%@page import="java.sql.*"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.JSONArray"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
String url_mysql = "jdbc:mysql://localhost/movie?serverTimezone=UTC&characterEncoding=utf8&useSSL=FALSE";
String id_mysql = "root";
String pw_mysql = "qwer1234";

String u_id = request.getParameter("u_id");

String whereDefault = "select u_pw, count(u_pw) from user where u_id = '" + u_id + "'";

JSONObject jsonList = new JSONObject();
JSONArray itemList = new JSONArray();

try{
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection conn_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql);
    Statement stmt_mysql = conn_mysql.createStatement();

    ResultSet rs = stmt_mysql.executeQuery(whereDefault);
    while(rs.next()) {
        JSONObject tempJson = new JSONObject();
        tempJson.put("u_pw", rs.getString(1));
        tempJson.put("count", rs.getString(2));


        itemList.add(tempJson);
    }

    jsonList.put("results", itemList);
    conn_mysql.close();
    out.print(jsonList);

} catch(Exception e) {
    e.printStackTrace();
}
%>