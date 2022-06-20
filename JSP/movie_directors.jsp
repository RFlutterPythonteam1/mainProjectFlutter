<%@page import = "java.sql.*"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.JSONArray"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% 
String url_mysql = "jdbc:mysql://localhost/movie?serverTimezone=UTC&characterEncoding=utf8&useSSL=FALSE";
String id_mysql = "root";
String pw_mysql = "qwer1234";

String query1 = "select d.director_id id, d.director_name name, d.director_score score, m.movie_name movie, m.movie_img img ";
String query2 = "from director d left join direct dt on d.director_id = dt.director_id ";
String query3 = "join movie m on dt.movie_id = m.movie_id ";
String query4 = "";
String query5 = "order by d.director_name";
String query = query1 + query2 + query3 + query4 + query5; 

JSONObject jsonList = new JSONObject();
JSONArray itemList = new JSONArray();


try{
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection conn_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql);
    Statement stmt_mysql = conn_mysql.createStatement();
    ResultSet rs = stmt_mysql.executeQuery(query);

    while(rs.next()){
        JSONObject tempJson = new JSONObject();  
        tempJson.put("director_id", rs.getString(1));
        tempJson.put("director_name", rs.getString(2));
        tempJson.put("director_score", rs.getString(3));
        tempJson.put("movie_name", rs.getString(4));
        tempJson.put("movie_imgPath", rs.getString(5));
        itemList.add(tempJson);
    }

    jsonList.put("results", itemList);
    conn_mysql.close();
    out.print(jsonList);
}  catch(Exception e){
    e.printStackTrace();
}
%>
