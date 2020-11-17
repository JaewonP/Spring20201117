<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ include file="../include/header.jsp" %>

<div class="row">
    <div class="col-lg-12">
        <h1 class="page-header">구매페이지</h1>
    </div>
</div>


<div class="row">
    <div class="col-lg-12">
        <div class="pannel-default">
            <div class="panel-heading">개인페이지</div>
        </div>
        
    <div class="panel-body">   
	<form id="myForm" action="login/getOne" method="post">
	        <div class="form-group">
                <label>번호</label><input class="form-control" name="free_id" 
                value='<c:out value="${login.free_id}"/>' readonly="readonly">
            </div>
            <div class="form-group">
                <label>아이디</label><input class="form-control" name="free_name" 
                value='<c:out value="${login.free_name}"/>' readonly="readonly">
            </div>
            <div class="form-group">
            	<label>비밀번호</label><input class="form-control" name="free_password" 
            	value='<c:out value="${login.free_password}"/>' readonly="readonly">
            </div>
            <div class="form-group">
            	<label>주소</label><input class="form-control" name="main_address" 
            	value='<c:out value="${login.main_address}"/>' readonly="readonly">
            </div>
			<div class="form-group">
            	<label>상세주소</label><input class="form-control" name="detail_address" 
            	value='<c:out value="${login.detail_address}"/>' readonly="readonly">
            </div>
            <div class="form-group">
            	<label>모바일 전화번호</label><input class="form-control" name="cellphone" 
            	value='<c:out value="${login.cellphone}"/>' readonly="readonly">
            </div>
            <div class="form-group">
            	<label>주민번호</label><input class="form-control" name="juminNo" 
            	value='<c:out value="${login.juminNo}"/>' readonly="readonly">
            </div>
            <div class="form-group">
            	<label>집전화번호</label><input class="form-control" name="homeNum" 
            	value='<c:out value="${login.homeNum}"/>' readonly="readonly">
            </div>
            <div class="form-group">
            	<label>송장번호/구매물품</label>
            	<ul>
					<c:forEach var ="list" items = "${account}">
						<li><c:out value="${list.invoice}"></c:out></li>
					</c:forEach>
				</ul>
            </div>
            </form>
            <button type="button" class="btn btn-warning" 
            onclick="location.href='/login/buy?free_id=<c:out value="${login.free_id}"/>'">구매하기</button>
            <button type="button" class="btn btn-warning" 
            onclick="location.href='/login/return?free_id=<c:out value="${login.free_id}"/>'">반품하기</button>
        </div> 
    </div>
</div>

<%@	include file="../include/footer.jsp" %>