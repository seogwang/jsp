<%--
  User: 서광
  Date: 2023-07-28 오후 3:30 6교시

  form.frm>table.table#tb1>tbody>tr*5>(th>label)+(td>input)

  (input[type=checkbox][value=$]#pet$+label[forpet$])*4


--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Title</title>
</head>
<body>
<div class="container">
    <h2 class="title">설문조사</h2>
    <form action="research.jsp" class="frm" method="post">
        <table class="table" id="tb1">
            <tbody>
            <tr>
                <th><label for="id">아이디</label></th>
                <td><input type="text" name="id" id="id" required autofocus></td>
            </tr>
            <tr>
                <th><label for="year">출생년도</label></th>
                <td><input type="number" name="year" id="year" min="1970" max="2023" step="1" value="1998" required></td>
            </tr>
            <tr>
                <th><label for="name">이름</label></th>
                <td><input type="text" name="name" id="name" required></td>
            </tr>
            <tr>
                <th><label>좋아하는 동물</label></th>
                <td>
                    <input type="checkbox" name="pet" value="dog" id="pet1" checked><label for="pet1">강아지</label>
                    <input type="checkbox" name="pet" value="cat" id="pet2"><label for="pet2">고양이</label>
                    <input type="checkbox" name="pet" value="cow" id="pet3"><label for="pet3">송아지</label>
                    <input type="checkbox" name="pet" value="horse" id="pet4"><label for="pet4">망아지</label>
                    <input type="checkbox" name="pet" value="crocs" id="pet5"><label for="pet5">악어</label>
                    <input type="checkbox" name="pet" value="dino" id="pet6"><label for="pet6">공룡</label>
                    <input type="checkbox" name="pet" value="tiger" id="pet7"><label for="pet7">호랑이</label>
                    <input type="checkbox" name="pet" value="egle" id="pet8"><label for="pet8">독수리</label>
                </td>
            </tr>
            <tr>
                <td colspan="">
                    <input type="submit" value="값 전송" class="btn btn-danger">
                    <input type="reset" value="취소" class="btn btn-primary">
                </td>
            </tr>
            </tbody>
        </table>
    </form>
</div>
</body>
</html>