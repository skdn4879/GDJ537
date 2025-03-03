<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- meta tag 추가 -->
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Insert title here</title>
<script defer src="/js/hjs/drop.js"></script>
<c:import url="../common/jquery.jsp"></c:import>
<style>
	.deptLi, .roleLi, #depInput, #roleInput{
		cursor: pointer;
	}
</style>
<!-- 공통 css, js, jquery -->
<c:import url="../temp/layout_header.jsp"></c:import>
</head>

<!-- body ID 작성 -->
<body id="page-top">

	<!-- Page Wrapper 전체 Contents Wrapper -->
    <div id="wrapper">

		<!-- Sidebar import -->
		<c:import url="../temp/layout_sidebar.jsp"></c:import>
		<!-- End of Sidebar -->
		
		 <!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">
			<!-- Main Content -->
			<div id="content">
			
				<!-- Topbar import-->
				<c:import url="../temp/layout_topbar.jsp"></c:import>
				<!-- End of Topbar -->
				
				<!-- Begin Page Content -->
	            <div class="container-fluid">
	
	            	<!-- Page Heading -->
	            	<h1 class="h3 mb-4 text-gray-800">여기에 상세페이지 작성</h1>
	            	
	       <!-- 부서 -->
	       <form action="insa" method="get">	
		       <div class="btn-group">
		       		
						 <button class="btn btn-secondary btn-sm dropdown-toggle" type="button" data-toggle="dropdown" aria-expanded="false">
						  	<input type="text" id="depInput" readonly value="">
						 </button>
					 
					  <div class="dropdown-menu">
			              <input id="dropId" name="depNum" > 
						   <ul>
						   		<li class="deptLi" data-depNum="1">영업팀</li>
						   		<li class="deptLi" data-depNum="2">총무팀</li>
						   		<li class="deptLi" data-depNum="3">인사팀</li>
						   		<li class="deptLi" data-depNum="4">IT개발팀</li>
						   		<li class="deptLi" data-depNum="5">생산팀</li>
						   </ul>
					  </div>
				</div>
				
				<!-- 직급 -->
				<div class="btn-group">
					 <button class="btn btn-secondary btn-sm dropdown-toggle" type="button" data-toggle="dropdown" aria-expanded="false">
					   <input type="text" id="roleInput" readonly value="">
					 </button>
					  <div class="dropdown-menu">
					  	<input id="roleId" name="roleNum" value="${userVO.roleNum}"> 
						   <ul>
						   		<li class="roleLi" data-roleNum="1">사장</li>
						   		<li class="roleLi" data-roleNum="2">부장</li>
						   		<li class="roleLi" data-roleNum="3">과장</li>
						   		<li class="roleLi" data-roleNum="4">대리</li>
						   		<li class="roleLi" data-roleNum="5">주임</li>
						   		<li class="roleLi" data-roleNum="7">사원</li>
						   </ul>
					  </div>
				</div>
			</form>     
			
			<button type="button" id="listBtn">
				조회
			</button>
	            <!-- End Page Content -->
					
			</div>
			<!-- End of Main Content -->
			
			<form action="insa1" method="post">
					<table class="table table-striped">
		                            <thead id="thd">
		                                <tr class="text-success">
		                                	<!-- <th>아이디</th>
		                                    <th>이름</th>
		                                    <th>승인여부</th> -->
		                                </tr>
		                            </thead>
		                            <tbody id="tbd">
		                               <%--  <c:forEach items="${list}" var="userrr">
										
		                           			
		                           			<tr>
												<td>${list.id}</td>
												<td>${userrr.name}</td>
												<td>${list.}</td>
												
												
												
											</tr>
		                                </c:forEach>  --%>
		                            </tbody>
		                        </table>
            </form>
			
			
			
			<!-- Footer import -->
			<c:import url="../temp/layout_footer.jsp"></c:import>
			<!-- End of Footer -->
		</div>
		<!-- End of Content Wrapper -->
	</div>

	<!-- Scroll Top, Logout Modal import -->
	<c:import url="../temp/layout_top_logoutModal.jsp"></c:import>
	
	
<script>
    $('#listBtn').click(function() {

    	let depNum = $("#dropId").val();
    	let roleNum = $("#roleId").val();
    	let value = $("#roleInput").val();
            $.ajax({
                type: 'GET',
                url:  '/report/insa1?depNum='+depNum+'&roleNum='+roleNum,
            }).done(function(dd){
                	console.log(dd)
                	$("#thd").empty();
                	$("#tbd").empty();
                		$("#thd").append('<tr class="text-success"><th>아이디</th><th>이름</th><th>직급</th><th>승인부여</th></tr>')
                	for(var i=0; i<dd.length; i++){
                		
              
                			
	                	$("#tbd").append('<tr><td id="tdId">'+dd[i].id+'</td><td>'+dd[i].name+'</td><td>'+dd[i].depNum+'</td><td>'+value+'</td><td><button id="statusBtn" type="button" class="btn btn-secondary" data-depNum="'+dd[i].depNum+'" data-name="'+dd[i].id+'">부여</button></td></tr>')
                	
                		
                		
                	}
                	
                })
        
    });
</script>	


</body>
</html>