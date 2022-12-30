<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL Core 라이브러리 (1)</title>
</head>
<body>
	<h1>1. 변수 정의하기 (c:set)</h1>
	<c:set var="number1" value="100" /> <%-- 권장방법 --%>
	number1 : ${number1}<br>
	<c:set var="number2">250</c:set>
	number2 : ${number2}<br>
	number1 + number2 : ${number1 + number2} <%-- 숫자끼리만 더할 수 있다 --%>
	
	<h1>2. 변수 출력하기 (c:out)</h1>
	number1 : <c:out value="${number1}" /><br>
	<c:out value="Hello world!!!" /><br>
	
	<%-- 문구 그대로 출력된다 --%>
	<c:out value="<script>alert('얼럿창 띄우기');</script>" />
	
	<%-- 문구 그대로 출력된다 --%>
	<c:out value="<script>alert('얼럿창 띄우기');</script>" escapeXml="true" />
	
	<%-- 스크립트가 수행된다 --%>
	<c:out value="<script>console.log('얼럿창 띄우기');</script>" escapeXml="false" />
	
	<h1>3. 조건문 (c:if)</h1>
	<c:if test="${number1 > 50}">
		number1은 50보다 크다<br>
	</c:if>
	<c:if test="${number1 == 100}">
		number1은 100이다<br>
	</c:if>
	<c:if test="${number1 eq 100}"> <%-- equal --%>
		number1은 100이다<br>
	</c:if>
	<c:if test="${number1 != 222}">
		number1은 222가 아니다<br>
	</c:if>
	<c:if test="${number1 ne 222}"> <%-- not equal --%>
		number1은 222가 아니다<br>
	</c:if>
	<c:if test="${not empty number1}">
		number1은 비어있지 않다
	</c:if>
</body>
</html>