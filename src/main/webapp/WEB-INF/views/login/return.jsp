<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ include file="../include/header.jsp" %>

<div class="row">
    <div class="col-lg-12">
        <h1 class="page-header">반품하기</h1>
    </div>
</div>


<div class="row">
    <div class="col-lg-12">
        <div class="pannel-default">
            <div class="panel-heading">반품하기</div>
        </div>
        
    <div class="panel-body">   
	<form id="myForm" action="return" method="post">

            <div class="form-group">
            	<label>송장번호</label><input class="form-control" name="invoice">
            </div>
	</form>
            <button class="btn btn-warning">반품하기</button>
        </div>
             <script>
        	$(document).ready(function() {
        			$('button').click (function() {
            				$('#myForm').submit();
        			
        		})
        	})
        
        </script>
    </div>
</div>

<%@	include file="../include/footer.jsp" %>