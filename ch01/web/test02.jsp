<%--
  User: 서광
  Date: 2023-07-28 오후 2:17 5교시

  ##폼태그
  <form action="" class="" method=""> // 여기가 핵심이네 action으로 loginpro.jsp로 보내주고, post로 해당 jsp 파일 가서 코딩 해주네
  ##인풋태그
  <input type="" value="" class="">  // value에는 text type에는 text, password, submit, reset 등이 있다. class는 부트스트랩 문서에서 가져와 쓴다.
  ##테이블태그
  <table> : 테이블 태그
  <tbody> : 테이블 body
  <tr> : raw 행
  <td> : data 열로 생각 하자
  <th> : table head 맨 앞? 이름 태그

  ?qty=2&price=40000
  쿼리 스트링 반드시 기억!
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인 폼</title>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</head>
<body>
<div class="container">
    <h2 class="title">로그인</h2>
    <form action="loginpro.jsp" class="frm" method="post">
        <div>
            <table class="table" id="tb1">
                <tbody>
                    <tr>
                        <th><label for="id">아이디</label></th>
                        <td><input type="text" name="id" id="id" required autofocus></td>
                    </tr>
                    <tr>
                        <<th><label for="pw">비밀번호</label></th>
                        <td><input type="password" name="pw" id="pw" required></td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <input type="submit" value="로그인" class="btn btn-danger">
                            <input type="reset" value="취소" class="btn btn-primary">
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div class="container">
            <a href="loginpro.jsp?qty=2&price=40000" class="btn btn-primary">GET 전송</a>
        </div>
    </form>
</div>
</body>
</html>