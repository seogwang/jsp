<%--
  User: 서광
  Date: 2023-07-28 오후 3:42 6~7교시

  전송받은 데이터가 한글일 때, 깨지는 경우
  서버 클릭 -> tomcat9 에서 VM options : -Dfile.encoding=UTF-8

  equest.setCharacterEncoding("UTF-8"); 이렇게 해도 된다.

  리퀘스트와 리스펀스.
  딱 요청 받은 곳까지만 보낸다. 또 보내주려면 a태그로 또 보내줘야 한다.
  get : 상세 페이지 넘어갈 때, get 방식이다.
  로그인, 회원가입, 데이터 insert : post. 입력폼이 있으면 post
  게시판 목록 보기 : 목록이 떠야 한다.
  -> 이것은 get 방식.
  -> 올 때, 목록으로 받아온다. 이게 ArrayList다.(컬렉션 프레임 워크)

  #매핑
  우리가 만든 것들 DB랑 연결하는 것 : 매핑.

  #바인딩
  어딘가에 그 데이터 값을 던져줘야 한다. 매핑 한 것을 던져주는 것 : 바인딩이라고 한다.

  디스패처 : 서블릿 자기가 못하니까, jsp 문서를 호출해서 떠 넘기는 것이다.
  여기서 데이터를 넘기는 것을 포워드라고 한다.

--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>설문조사 결과</title>
    <%
        request.setCharacterEncoding("UTF-8");
        String id = request.getParameter("id");
        String year = request.getParameter("year");
        String name = request.getParameter("name");
        String[] pet = request.getParameterValues("pet");

        for(int i=0;i<pet.length;i++){
            if(pet[i].equals("dog")){
                pet[i] = "강아지";
            } else if (pet[i].equals("cat")){
                pet[i] = "고양이";
            } else if (pet[i].equals("cow")){
                pet[i] = "송아지";
            } else if (pet[i].equals("horse")){
                pet[i] = "망아지";
            } else if (pet[i].equals("crocs")){
                pet[i] = "악어";
            } else if (pet[i].equals("dino")){
                pet[i] = "공룡";
            } else if (pet[i].equals("tiger")){
                pet[i] = "호랑이";
            } else {
                pet[i] = "독수리";
            }
        }
    %>
</head>
<body>
    <div class="container">
        <p>아이디 : <strong><%=id %></strong></p>
        <p>출생년도 : <strong><%=year %></strong></p>
        <p>이름 : <strong><%=name %></strong></p>
        <p>좋아하는 동물 :<br>
            <% for(int i=0; i<pet.length;i++) { %>
            <strong><%=pet[i] %></strong>
            <% } %>
        </p>
        <a href="test03.jsp">테스트03으로 돌아가기</a><br>
        <a href="test04.jsp?id=<%=id %>">테스트04로 이동하기</a>
    </div>
</body>
</html>