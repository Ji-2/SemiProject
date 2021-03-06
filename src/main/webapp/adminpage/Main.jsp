<%@page import="model.AccountVO"%>
<%@page import="model.AccountDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../inc/top.jsp"%>

<script src="<%=request.getContextPath() %>/js/jquery-3.6.0.js"></script>
<script>

	$(function() {

		$('ul.p_tabs li').click(function() {
			var tab_id = $(this).attr('data-tab');

			$('ul.p_tabs li').removeClass('p_on');
			$('.p_cont').removeClass('p_on');

			$(this).addClass('p_on');
			$("#" + tab_id).addClass('p_on');
		});

	});
	/*tab2*/
	$(function() {

		$('ul.p_tabs2 li').click(function() {
			var tab_id2 = $(this).attr('data-tab');

			$('ul.p_tabs2 li').removeClass('p_on2');
			$('.p_cont2').removeClass('p_on2');

			$(this).addClass('p_on2');
			$("#" + tab_id2).addClass('p_on2');
		});

	});
	
	/*각 페이지로 이동*/
	function account(){ //주문내역확인
		location.href="account_view.jsp";
	}	
	function editInfo(){//내정보 수정
		location.href="editInfo.jsp";
	}
	function order(){//주문확인
		location.href="OrderCheck.jsp";
	}
	function Withdrawal(){//회원탈퇴
		location.href="Withdrawal.jsp";
	}
</script>

<%
	
	
%>
<section class="section_padding">
	<div class="container">
		<!--마이페이지-->
		<div class="mt20 tb_area row">
			<div class="col-lg-6 sm-6 page_area" onclick="account()">
				<div class="page_cont">
					<div class="line"></div>
					<p>
						<strong class="m_txt">List / </strong> 회원목록조회
					</p>
				</div>
			</div>
			<div class="col-lg-6 sm-6 page_area" onclick="order()">
				<div class="page_cont">
					<div class="line"></div>
					<p>
						<strong class="m_txt"> Order/ </strong> 전체주문조회
					</p>
				</div>
			</div>
			<div class="col-lg-6 sm-6 page_area" onclick="editInfo()">
			</div>			
		</div>
		<!--//마이페이지-->
	</div>
</section>

<%@include file="../inc/bottom.jsp"%>