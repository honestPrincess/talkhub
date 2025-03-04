<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 25. 3. 4.
  Time: 오후 2:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Talkhub</title>
</head>

<body>
<h1>Talkhub</h1>
<h3>talkhub 회원가입</h3>
<form action="${pageContext.request.contextPath}/user/join-proceed">
    <label>아이디</label>
    <div>
        <label>
            <input type="text" name="id"/>
        </label>
    </div>

    <label>비밀번호</label>
    <div>
        <label>
            <input type="password" name="password"/>
        </label>
    </div>

    <label>활동명</label>
    <div>
        <label>
            <input type="text" name="nickname"/>
        </label>
    </div>
    <label>성별</label>
    <div>
        <label>
            <input type="radio" value="남"/>
            남
        </label>
        <label>
            <input type="radio" value="여"/>
            여
        </label>
        <label>
            <input type="radio" value="비공개"/>
            비공개
        </label>
    </div>
    <label>출생년도</label>
    <div>
        <label>
            <select>
                <c:forEach var="i" begin="1970" end="2025">
                    <option value="${i}"> ${i}년</option>
                </c:forEach>
            </select>
        </label>
    </div>
    <button type="submit">가입하기</button>
</form>

</body>
</html>
