<%--
  Created by IntelliJ IDEA.
  User: db400tea
  Date: 2023-07-27
  Time: 오후 2:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <title>$Title$</title>
  </head>
  <body>
  <%-- 3. 스크립트릿(Scriptlet) --%>
  <%-- <% %> 로 감싼다. : 자바코딩 --%>
  <%
    setName("김기태");
    String addr = "가산동";
  %>
    <div class="container">
      <h2 class="title">천재교육</h2>
      <hr>
      <%--4. 표현식(Expression)--%>
      <%--값을 가져올 때는 <%= %> 안에 쓴다. 이퀄이 추가.--%>
      <p>이름 : <%=getName() %></p>
      <p>주소 : <%=addr %></p>
      <a href="test01.jsp">테스트1</a><br>
      <a href="test02.jsp">로그인 폼 테스트</a><br>
      <a href="test03.jsp">복수 개의 값 전송</a><br>
      <a href="test04.jsp?msg=한시간남았네">요청 정보 및 헤더 정보</a><br>

    </div>
  </body>
</html>
