<%@page import="model.TipBoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../inc/top.jsp" %>
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/substyle.css">
<style>
textarea{width:100%; padding:10px; border:1px solid #ccc; border-radius:5px;}
.mt50{margin-top:50px;}
.mb50{margin-bottom:50px;}    
.w100{width:100%;}
.bord_n{border:none;}
</style>
<script type="text/javascript" src="../js/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	$(function(){
		
		$('#btList').click(function(){
			location.href='list.jsp';	
		});
		$('#btList2').click(function(){
			location.href='list.jsp';	
		});
		
		$('form[name=admin_tip]').submit(function(){
	         $('.infobox').each(function(idx, item){
	            if($(this).val().length<1){
	               alert($(this).prev().html() + "을(를) 입력하세요");
	               $(this).focus();
	               event.preventDefault();
	               return false;  //each 탈출
	            }
	         });
		
	});
</script>
<%-- <%
	String email = (String)session.getAttribute("email");
	if(email == null) {%>
		<script>
			alert('로그인을 해주세요.');
			location.href = '<%=request.getContextPath()%>/adminsign/signin.jsp';
		</script>
	<%}
%> --%>
<section class="section_padding">
	<div class="container">
	<h2 class="mb50">세탁정보</h2>
		<fieldset>
			<form name="admin_tip" action="write_ok.jsp" method="post">
				<input type="hidden" name="email" value="bbosong1001@dream.com">
	            <div class="input_area">
	                <div class="p_input">
	                	<label for="title">제목</label>
	                    <input type="text" id="title" name="title" class="t_input w100 infobox" placeholder="제목을 입력하세요">
	                </div>
	            </div>
	            <script src="../ckeditor5/ckeditor.js"></script>
	            <textarea name="content" id="content"></textarea>
	            <script>
	            	ClassicEditor
	            		.create(document.querySelector('#content'))
	            		.catch(error => {
	            			console.error(error)
	            		});
	            </script>
				<div class="btn_all t_center mt50">
			        <input type="submit" class="mint_btn hover" id="btList" value="글등록" />
			        <input type="button" id="btList2" class="begie_btn hover" value="목록"/>
		    	</div>
	        </form>
		</fieldset>
	</div>
</section>
<%@include file="../inc/bottom.jsp" %>