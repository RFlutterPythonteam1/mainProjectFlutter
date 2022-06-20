<%@page import="org.rosuda.REngine.Rserve.RConnection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
    request.setCharacterEncoding("utf-8");

    double dis = Double.parseDouble(request.getParameter("dis"));
    double genre = Double.parseDouble(request.getParameter("genre"));
    double diract = Double.parseDouble(request.getParameter("diract"));
    double ju = Double.parseDouble(request.getParameter("ju"));
    double dir = Double.parseDouble(request.getParameter("dir"));
    double screen = Double.parseDouble(request.getParameter("screen"));
    double jo = Double.parseDouble(request.getParameter("jo"));

    RConnection conn = new RConnection();

    conn.voidEval("library(e1071)");
    conn.voidEval("rf <- readRDS(url('http://localhost:8080/Rserve/SVM_Model_2.rds','rb'))");

    conn.voidEval("result <- as.character(predict(rf, (data.frame(배급사점수=" + dis + ", 장르점수=" + genre + ","
    + "감독_배우시너지점수=" + diract + ", 주연점수=" + ju +", 감독점수="+ dir +", 개봉일스크린수=" + screen + ",조연점수=" + jo + "))))");

    String result = conn.eval("result").asString();
    // out.println(result);

%>
{"result":"<%=result%>"}

