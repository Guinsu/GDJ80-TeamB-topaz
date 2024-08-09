<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fm" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- 
	 * 분류 번호 :  #4 - 근무 조회 페이지
	 * 시작 날짜 : 2024-07-10
	 * 담당자 : 김인수
 -->

<!DOCTYPE html>
<html lang="en">
<head>
	<!-- ======= header <Head> 부분 ======= -->
	<jsp:include page="/WEB-INF/view/groupware/inc/headerHead.jsp"></jsp:include>
    <link rel="stylesheet" href="/topaz/css/insuEmpList.css"> <!-- CSS -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script> <!-- Jquery -->
</head>
	
<body>
	<!-- ======= header <Body> 부분 ======= -->
	<jsp:include page="/WEB-INF/view/groupware/inc/hearderBody.jsp"></jsp:include>
	
	<!-- ======= sideBar 부분 ======= -->
	<jsp:include page="/WEB-INF/view/groupware/inc/sideBar.jsp"></jsp:include>

	<!-- =============================== Main 메인 시작 부분 ================================ -->
	<main id="main" class="main">
		
		<!-- Title 시작 -->
		<div class="pagetitle">
		   <h1>전체 직원 근무 목록</h1>
		   <nav>
		     <ol class="breadcrumb">
		       <li class="breadcrumb-item"><a href="/topaz/groupware/empMain">Home</a></li>
		       <li class="breadcrumb-item active">Employee Attendance List</li>
		     </ol>
		   </nav>
		</div><!-- Title 종료 -->
		
		<section class="section">
			<div class="card">
				<div class="card-body">

					<!-- 메인 -->
				     <div class="mainContent">
				     
			     		<div style="margin-bottom: 20px;">
                    		<button type="button" class="moveBtn" onclick="window.location.href='${pageContext.request.contextPath}/groupware/emp/empList'">직원정보</button>
                    		<button type="button" class="moveBtn" onclick="window.location.href='${pageContext.request.contextPath}/groupware/emp/empLeave'">연월차 조회</button>
                    		<button type="button" class="moveBtn" onclick="window.location.href='${pageContext.request.contextPath}/groupware/emp/empAttendance'">근무조회</button>
                    	</div>
                    	
				     	<form id="searchForm" action="/topaz/groupware/emp/empAttendance" method="post" >
					     	
					     	
					     	<div class="col d-flex justify-content-end mt-3" >
					     		 <div class="row justify-content-center form-group g-3 align-items-center">
					     		 	
					     		 	<div class="col-auto">
					     		 		<label class="col-form-label">기간</label>
					     		 	</div>
					     		 	
					     		 	<div class="col-auto">
					     		 		<input type="date" name="startDate" class="no-max-width">
					     		 	</div>
				     		 	 	
				     		 	 	<div class="col-auto">
                                        <span>~</span>
                                    </div>

					     		 	<div class="col-auto">
					     		 		<input type="date" name="endDate" class="no-max-width">
					     		 	</div>
				     		 	 	
					     		 	<input type="hidden" name="startDateHidden">
   								 	<input type="hidden" name="endDateHidden">
					     		 	
					     		 	
					     		 	<div class="col-auto">
					     		 		<label class="col-form-label">사원이름</label>
					     		 	</div>
					     		 	
					     		 	<div class="col-auto">
					     		 		<input type="text" name="empName" class="no-max-width" style="width: 130px;">
					     		 	</div>
					     		 	
					     		 	
					     		 	<div class="col-auto">
					     		 		<label class="col-form-label">사원번호</label>
					     		 	</div>
					     		 	
					     		 	<div class="col-auto">
					     		 		<input type="text" name="empNo" class="no-max-width" style="width: 130px;">
					     		 	</div>
					     		 	
					     		 	
					     		 	<div class="col-auto">
					     		 		<button type="submit">검색</button>
						     			<button type="button" class="resetBtn">초기화</button>
					     		 	</div>
					     		 	
					     		 </div>
					     	</div>

				     	</form>
				     	
				     	
				     	<table class="table table-hover">
				     		<thead>
								<tr>
									<th scope="col">날짜</th>
									<th scope="col">사원 이름</th>
									<th scope="col">사원 번호</th>
									<th scope="col">출근시간</th>
									<th scope="col">퇴근시간</th>
								</tr>
							</thead>
							
							<tbody id="empListContainer">
	                       	</tbody>
	                       	
						</table>
						
						
						<!-- 페이징 -->
						<nav aria-label="Page navigation example">
							<ul class="pagination" id="paginationUl">
				           </ul>
						</nav>
						
				     </div>			
				</div>
			</div>
		</section>
	</main><!-- End #main -->
	<!-- =============================== Main 메인 끝 부분 ================================ -->
	
	<!-- ======= footer 부분 ======= -->
	<jsp:include page="/WEB-INF/view/groupware/inc/footer.jsp"></jsp:include>
	<script src="/topaz/js/insuEmpAttendance.js"></script>
</body>
</html>