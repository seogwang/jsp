<%--
  User: 서광
  Date: 2023-07-27 7교시
  --%>
<%-- 1. 디렉티브 (Directive) --%>
<%-- <%@ %> 로 감싼다. --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*"%>
<%--2. 선언문(Declare) : 익명의 클래스를 선언, 현재 문서에서만 유효--%>
<%-- <%! %>로 감싼다. 이렇게 했을 때, 바디에 void main을 섞어 쓸 수 있다.--%>
<%!
    private String name;
    public String getName(){
        return this.name;
    }
    public void setName(String name){
        this.name = name;
    }
%>
<!DOCTYPE html>
<html>
<head>
    <title>기본 구성 요소</title>
</head>
<body>
<%-- 3. 스크립트릿(Scriptlet) --%>
<%-- <% %> 로 감싼다. : 자바코딩 --%>
<%
    setName("김기태");
    String addr = "가산동";
%>
<hr>
<%--4. 표현식(Expression)--%>
<%--값을 가져올 때는 <%= %> 안에 쓴다. 이퀄이 추가.--%>
<p>이름 : <%=getName() %></p>
<p>주소 : <%=addr %></p>
<a href="index.jsp">메인으로</a>
</body>
</html>
