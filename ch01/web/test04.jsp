<%@ page import="java.util.Enumeration" %><%--
  User: 서광
  Date: 2023-07-28 오후 4:37 7교시

  jsp 파일은 무조건 web 안에 있어야 한다.

  ul.list>li*14>span+strong

  요소검사 -> Network -> F5 키 누르면 나온다.

  <%=request.getContextPath() %> 이걸 반드시 기억하고 있어야 한다! 계속 써먹는다.

  Enumeration e = request.getHeaderNames(); // e에 헤더의 이름을 받아온다.
  while(e.hasMoreElements()){ } // 끝날 때까지 반복 실행

  Accept : 입력 가능한 Accept 정보가 뜬다. MIME 타입.
  나중에 업로드할 때 별도로 해줘햐 한다.
  text/html 만으로는 파일 업로드를 못한다 폼태그에 마임타입을 별도로 설정해줘야 한다.
  // 분명하게 알아야 한다. enc Type = Application ~~를 입력해줘야 한다.
  enc : 마임타입. 정식 명칭 : Accept.

  리퀘스트 : 요청한 곳 까지만 데이터가 간다.
  -> 이것을 스코프라고 한다.
  -> 가장 작은 것 : 페이지 스코프
  -> 그 다음 : 리퀘스트 스코프
  -> 그 다음 : 리스펀스 스코프
  리퀘스트 + 리스펀스 스코프 = 인터랙트. 상호작용. 이라고 한다.
  요청 받은 곳에서 받아서 다시 요청 한 곳으로 보내줘야 한다. 이게 인터랙트.

  웹 : 기본적으로 리스펀스와 리퀘스트가 중요하다.

  DTO or VO 를 쓴다.



--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>헤더 정보 출력하기</title>
    <%
        request.setCharacterEncoding("UTF-8");
        String msg = request.getParameter("msg");
    %>
</head>
<body>
    <div class="container">
        <h2 class="title">요청 정보 및 헤더 정보 출력하기</h2>
        <hr>
        <ul class="list">
            <li><span>메시지</span> : <strong><%=msg %></strong></li>
            <li><span>프로토콜</span> : <strong><%=request.getProtocol() %></strong></li>
            <li><span>요청된 서버 이름</span> : <strong><%=request.getServerName() %></strong></li>
            <li><span>요청 방식</span> : <strong><%=request.getMethod() %></strong></li>
            <li><span>파라미터열</span><strong><%=request.getQueryString() %></strong></li>
            <li><span>요청주소</span> : <strong><%=request.getRequestURL() %></strong></li>
            <li><span>요청URI</span> : <strong><%=request.getRequestURI() %></strong></li>
            <li><span>서버이름</span> : <strong><%=request.getRemoteHost() %></strong></li>
            <li><span>서버주소</span><strong> : </strong><%=request.getRemoteAddr() %></li>
            <li><span>서버포트(원격)</span> : <strong><%=request.getRemotePort() %></strong></li>
            <li><span>서버포트(지역)</span> : <strong><%=request.getServerPort() %></strong></li>
            <li><span>현재 문서의 경로</span> : <strong><%=request.getContextPath() %></strong></li>
            <li><span>헤더의 어셉트 </span> : <strong><%=request.getHeader("Accept") %></strong></li>
            <li><span>헤더의 호스트(host) 주소</span> : <strong><%=request.getHeader("host") %></strong></li>
        </ul>
        <hr><hr><hr>
        <table class="table" id="td1">
            <caption><h2>헤더 정보</h2></caption>
            <tbody>
            <%
                Enumeration e = request.getHeaderNames();
                while(e.hasMoreElements()){
                    String hdName = (String) e.nextElement();
            %>
            <tr>
                <td><%=hdName %></td>
                <td><%=request.getHeader(hdName) %></td>
            </tr>
            <% } %>
            </tbody>
        </table>
        <hr>
        <p>정보 : <%=request.getParameter("id") %></p>
    </div>
</body>
</html>