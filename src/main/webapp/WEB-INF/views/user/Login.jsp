<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 25. 3. 4.
  Time: 오후 5:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>로그인</title>
</head>
<body>

<h1><b>로그인을 해주세요.</b></h1>

<form action="${pageContext.request.contextPath}/user/login-proceed">
    <div>
    <label>아이디 입력</label>
        <label>
            <input type="text" name="id"/>
        </label>

    <label>비밀번호 입력</label>
        <label>
            <input type="password" name="password"/>
        </label>
    </div>
    <button type="submit">로그인!</button>

</form>

</body>
</html>
