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


String query1 = "select jo_actor.jo_actor_name, jo_actor.jo_actor_score, movie.movie_img from jo_in join movie on jo_in.movie_id = movie.movie_id ";
String query2 = "join jo_actor on jo_actor.jo_actor_id = jo_in.jo_actor_id ";
String query3 = "join direct on direct.movie_id = movie.movie_id ";
String query4 = "join director on direct.director_id = director.director_id ";
String query5 = "where jo_in.jo_actor_id in (select jo_actor_id from jo_actor ";
String query6 = "where jo_actor_id in (select jo_actor_id from jo_in where movie_id in (select movie_id from direct where director_id = " + director_id + ")))";
String query = query1 + query2 + query3 + query4 + query5 + query6; 

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