<%--
  User: 서광
  Date: 2023-07-28 오후 2:42 5교시

  jsp에는 6개의 객체가 있다.
  request : 요청 객체이다. jsp에서 데이터를 보내면 모두 여기에 저장돼 있다.

  처리문장 : 스크립틀릿
  선언문 : 클래스 선언이라고 보면 되겠네
  디렉티브 : 임포트나 인터페이스, 오버라이드라고 생각하면 되겠네
  스크립틀릿 : 자바 스크립트라고 생각하면 되겠네
  표현식 : 값, 출력 이라고 생각하면 되겠네

  jsp 표현식. <% %> 안에 equal을 붙인다.

  이 값이 안 들어올 것을 대비해서 null 처리를 해줘야 한다.

  38line equals가 잘 안되면, (String)으로 형변환 해서 =="" 공백과 비교한 if 문을 써준다.)

        // 이렇게 예외 처리 해도 되질 않는다. 나중에 배운다.
        int qty = 2;
        if (!request.getParameter("qty").equals("")) {
            int qty = Integer.parseInt(request.getParameter("qty"));
        }
        int price = 50000;
        if(!request.getParameter("price").equals()) {
            int price = Integer.parseInt(request.getParameter("price"));
        }

--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>보내온 결과</title>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>

    <%
        String id = request.getParameter("id");  // 오른쪽에서 요청한 데이터 중에서 name이 'id'인 것을 String변수 id에 저장 하라!
        String pw = request.getParameter("pw");
        int qty = Integer.parseInt(request.getParameter("qty")); // 이렇게 하면 예외가 생겨서 나중에 예외 처리법 배울 것이다.
        int price = Integer.parseInt(request.getParameter("price"));
    %>
</head>
<body>
    <div class="container">
        <ul class="lst">
            <li><span>아이디 : </span><%=id %></li>
            <li><span>비밀번호 : </span><%=pw %></li>
            <li><span>qty*price : </span><%=qty*price %></li>
        </ul>
    </div>
</body>
</html>