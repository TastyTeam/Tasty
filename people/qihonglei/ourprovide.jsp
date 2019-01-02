<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="main-head">
            <p>
                <span>我们提供</span>
            </p>
        </div>
        <div class="main-we-provide">
        <c:forEach items="${ourprovide }" var="ourprovide1">
            <ul>
                <li><span><img src="${ourprovide1.provideImg }" alt=""></span>
                    <h2>${ourprovide1.provideName }</h2>
                    <p>${ourprovide1.provideText }</p></li>
                
            </ul>
         </c:forEach>
        </div>
</body>
</html>