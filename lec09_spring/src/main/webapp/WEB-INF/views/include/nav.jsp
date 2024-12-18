<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     
<link href='<c:url value="/resources/css/include/nav.css"/>' rel="stylesheet" type="text/css">
<nav>
	<div id="nav_wrap">
		<div class="menu">
			<ul>
				<li>
					<a href="#">로그인</a>
				</li>
				<li>
					<a href="#">회원가입</a>
				</li>
				<li>
					<a href="<c:url value='/board'/> ">게시판</a>
				</li>
			</ul>
		</div>
		<div class="search">
			<form action="<c:url value='/board'/>" method="get">
				<%-- <input type="text" name="board_title" placeholder="검색어를 입력하세요."
				value="<c:out value='${paging.board_title}'/>"> --%>
				<select name="search_type">
					<option value="1" <c:if test="${paging.search_type == '1'}">selected</c:if>>제목</option>
					<option value="2" <c:if test="${paging.search_type == '2'}">selected</c:if>>내용</option>
					<option value="3" <c:if test="${paging.search_type == '3'}">selected</c:if>>제목 + 내용</option>
				</select>
				<input type="text" name="search_text" placeholder="검색어를 입력하세요" 
				value="<c:out value='${paging.search_text}'/>">
				<input type="submit" value="검색">
			</form>
		</div>
	</div>
</nav>	 









