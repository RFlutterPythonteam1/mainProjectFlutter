<%@page import="java.sql.*"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.JSONArray"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
String url_mysql = "jdbc:mysql://localhost/movie?serverTimezone=UTC&characterEncoding=utf8&useSSL=FALSE";
String id_mysql = "root";
String pw_mysql = "qwer1234";

String director_id= request.getParameter("director_id");


String query = " select jo_actor.jo_actor_name, jo_actor.jo_actor_score, movie.movie_img movie from jo_actor left join jo_in on jo_actor.jo_actor_id = jo_in.jo_actor_id join movie on jo_in.movie_id = movie.movie_id order by jo_actor.jo_actor_name";

JSONObject jsonList = new JSONObject();
JSONArray itemList = new JSONArray();

try{
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection conn_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql);
    Statement stmt_mysql = conn_mysql.createStatement();

    ResultSet rs = stmt_mysql.executeQuery(query);
    while(rs.next()) {
        JSONObject tempJson = new JSONObject();
        tempJson.put("jo_actor_name", rs.getString(1));
        tempJson.put("jo_actor_score", rs.getString(2));
        tempJson.put("movie_img", rs.getString(3));
        itemList.add(tempJson);
    }

    jsonList.put("results", itemList);
    conn_mysql.close();
    out.print(jsonList);

} catch(Exception e) {
    e.printStackTrace();
}
%>