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
            <div class="panel-heading">구매페이지</div>
        </div>
        
    <div class="panel-body">   
	<form id="myForm" action="buy" method="post">
            <div class="form-group">
                <label>이름</label><input class="form-control" name="free_name" value='<c:out value="${login.free_name}"/>' readonly="readonly">
            </div>
            <div class="form-group">
            	<label>비밀번호</label><input class="form-control" name="free_password" value='<c:out value="${login.free_password}"/>' readonly="readonly">
            </div>
            <div class="form-group">
            	<label>주소</label><input class="form-control" name="main_address" value='<c:out value="${login.main_address}"/>' readonly="readonly">
            </div>
			<div class="form-group">
            	<label>상세주소</label><input class="form-control" name="detail_address" value='<c:out value="${login.detail_address}"/>' readonly="readonly">
            </div>
            <div class="form-group">
            	<label>모바일 전화번호</label><input class="form-control" name="cellphone" value='<c:out value="${login.cellphone}"/>' readonly="readonly">
            </div>
            <div class="form-group">
            	<label>송장번호</label><input class="form-control" name="invoice">
            </div>
            <div class="form-group">
            	<label>구매물품</label>
            		<select name="goods" id="target">
		    			<option value="11">--구입물품을 선택하세요--</option>
					    <option value="americano">아메리카노</option>
					    <option value="caffelatte">카페라떼</option>
					    <option value="espressso">에스프레소</option>
					    <option value="tea">결명차</option>
					    <option value="smoothie">스무디</option>
					</select>
            </div>
			<div class="form-group">
            	<label>가격</label><input class="form-control" id="priceIs" name="price" value="">
            </div>
            <div class="form-group">
            	<label>수량</label><input class="form-control" id="quantityIs" name="quantity">
            </div>
            <div class="form-group">
            	<label>총금액</label><input class="form-control" id="totalIs" name="total_price">
            </div>
            <div class="form-group">
            	<label>쿠폰사용금액</label><input class="form-control" id="couponIs" name="coupon">
            </div>
			<div class="form-group">
            	<label>쿠폰사용여부</label><input class="form-control" id="couponUse" name="coupon_use">
            </div>
            </form>
            <button class="btn btn-warning">구매하기</button>
        </div>
             <script>
 			
/*              function makechange() {
 				
 				var getValue;
 				
 				
 				if ($("#target").attr("value") == 'americano') {
 					getValue = 3000;
 				}
 				if ($("#target").attr("value") == 'caffelatte') {
 					getValue = 4000;
 				}
 				if ($("#target").attr("value") == 'espressso') {
 					getValue = 5000;
 				}
 				if ($("#target").attr("value") == 'tea') {
 					getValue = 2000;
 				}
 				if ($("#target").attr("value") == 'smoothie') {
 					getValue = 4500;
 				}
 				$("#priceIs").val(getValue);	
 				console.log(getValue);
 				
 			} */
              
/*              function total() {
            	 var total = ($("#quantityIs").val() * $("#priceIs").val()) - $("#couponIs");
            	 $("#totalIs").val(total);
             } */
             
/*              function couponUse() {
            	 if($("#couponIs").val() != null) {
            		 $("couponUse").val("Y");
            	 }
            	 else {
            		 $("couponUse").val("N");
            	 }
             }
              */
        	$(document).ready(function() {
        		
        		
        			//$("#target").on('keyup', makechange);
        			var getValue;
        			$("#target").change(function() {
        				
        				var $v1 = $("#target option");
        				console.log($(this).val());	
        				 $v1.each(function(i,j){
        					console.log($(this).val());	
        				})
        				
        					if ($(this).val() == 'americano') {
             					getValue = 3000;
             					$("#priceIs").val(getValue);
             					
             				}
             				if ($(this).val() == 'caffelatte') {
             					getValue = 4000;
             					$("#priceIs").val(getValue);
             				}
             				if ($(this).val() == 'espressso') {
             					getValue = 5000;
             					$("#priceIs").val(getValue);
             				}
             				if ($(this).val() == 'tea') {
             					getValue = 2000;
             					$("#priceIs").val(getValue);
             				}
             				if ($(this).val() == 'smoothie') {
             					getValue = 4500;
             					$("#priceIs").val(getValue);
             				}

        			})
		
        			//$("#target option:selected").val(makechange);
        			//console.log(getValue);
        			var total;
        			$("#quantityIs").on('keyup', function () {
        				 total = ($("#quantityIs").val() * $("#priceIs").val());
                    	 $("#totalIs").val(total);
        			});
        			
        			
        			$("#couponIs").on('keyup', function() {
        				console.log($("#couponIs").val());
	                   	 if($("#couponIs").val() != 0) {
	                   		console.log($("#couponIs").val());
	                		 $("#couponUse").val("Y");
	                	 }
	                	 else {
	                		 $("#couponUse").val("N");
	                	 }
	                   	 
	                   	 total = ($("#quantityIs").val() * $("#priceIs").val())- ($("#couponIs").val());
	                   	$("#totalIs").val(total);
        			});	
        			
        			$('button').click (function() {
            				$('#myForm').submit();
            			
        				
        			})
        			
        		})
        
        </script>
    </div>
</div>

<%@	include file="../include/footer.jsp" %>