<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 25. 3. 4.
  Time: 오후 5:51
  To change this template use File | Settings | File Templates.
--%>

<%-- Bootstrap latest version 
     Who's idea: 공쥬
     Updated date: 25.03.12
-%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>로그인</title>
</head>
<body>

<h1>로그인을 해주세요.</h1>

<form class="row g-3" action="${pageContext.request.contextPath}/user/login-proceed">
  <div class="col-auto">
    <label for="staticEmail2" class="visually-hidden">Input your Email</label>
    <input type="text" readonly class="form-control-plaintext" id="id" value="email@example.com">

  <div class="col-auto">
    <label for="inputPassword2" class="visually-hidden">비밀번호 입력</label>
    <input type="password" class="form-control" id="password" placeholder="Password">
  </div>

  <div class="col-auto">
    <button type="submit" class="btn btn-primary mb-3">로그인!</button>
  </div>

</form>

</body>
</html>
