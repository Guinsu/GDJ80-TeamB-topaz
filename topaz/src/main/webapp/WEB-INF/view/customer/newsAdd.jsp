<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <title>알림마당 등록</title>
  <!-- Favicons -->
  <link href="/topaz/assets/img/TOPAZ_logo.png" rel="icon">

  <!-- Fonts -->
  <link href="https://fonts.googleapis.com" rel="preconnect">
  <link href="https://fonts.gstatic.com" rel="preconnect" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&family=Lato:ital,wght@0,100;0,300;0,400;0,700;0,900;1,100;1,300;1,400;1,700;1,900&display=swap" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="/topaz/assets/vendorGST/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="/topaz/assets/vendorGST/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="/topaz/assets/vendorGST/aos/aos.css" rel="stylesheet">
  <link href="/topaz/assets/vendorGST/swiper/swiper-bundle.min.css" rel="stylesheet">
  <link href="/topaz/assets/vendorGST/glightbox/css/glightbox.min.css" rel="stylesheet">

  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script> <!-- Jquery -->

  <!-- Main CSS File -->
  <link href="/topaz/assets/css/main.css" rel="stylesheet">
  
</head>

<body class="team-page">
  <!-- Header -->
  <jsp:include page="inc/header.jsp"></jsp:include>

  <main class="main">

    <!-- Page Title -->
    <div class="page-title light-background">
      <div class="container">
        <h1>알림마당 등록</h1>
        <nav class="breadcrumbs">
          <ol>
            <li><a href="gstMain">Home</a></li>
            <li><a href="newsList">알림 마당</a></li>
            <li class="current">알림마당 등록</li>
          </ol>
        </nav>
      </div>
    </div><!-- Page Title 끝 -->

    <!-- 입력 폼 -->
    <section id="contact" class="contact section">

      <div class="col-xl-6" style="margin: auto">
          <div class="card" > 
            <div class="card-body pt-3">
            	
                <div class="tab-pane show profile-edit pt-3" id="profile-edit">
					<form action="/topaz/customer/newsAdd" method="post" enctype="multipart/form-data" onsubmit="return validateForm()">
                		
						<div class="row" >
	                    	<div class="col-lg-6 col-md-6" style="margin: auto" >
	                    	
								<h3 class="info-item text-center">알림마당 등록</h3>								
							    <div class="info-item mb-3">
								    <span class="label">제목</span>
								    <span><input style="width: 350px; display: inline;" class="form-control" id="title" name="title" type="text"></span>
								</div>

								<div class="info-item mb-3">
								    <span class="label">내용</span>
								    <span><textarea style=" display: inline;" class="form-control" rows="7" cols="40" name="content"></textarea></span>
								</div>
								
	                    		<div class="info-item mb-3">
								    <span class="label" >사진</span>
								    <span><input class="form-control" type="file" id="formFile" name="uploadFile"></span>
								</div>
								
								<div class="info-item mb-3">
								   	<span><input style="width: 200px; display: inline;" class="form-control" name="newsNo" type="hidden" ></span>
								   	<span><input style="width: 200px; display: inline;" class="form-control" name="category" type="hidden" ></span>
								   	<span><input style="width: 200px; display: inline;" class="form-control" name="grade" type="hidden" ></span>
									<span><input style="width: 200px; display: inline;" class="form-control" name="startDate" type="hidden" ></span>
									<span><input style="width: 200px; display: inline;" class="form-control" name="endDate" type="hidden" ></span>
									<span><input style="width: 200px; display: inline;" class="form-control" name="regId" type="hidden" ></span>
									<span><input style="width: 200px; display: inline;" class="form-control" name="modId" type="hidden" ></span>
									<span><input style="width: 200px; display: inline;" class="form-control" name="useYn" type="hidden" ></span>
								</div>
							</div>
				    		<div class="text-center">
		                      <button type="submit" class="btn submitBtn" style="background-color: var(--accent-color); color: white;">등록</button>
		                    </div>
				    	</div>
					</form><!-- End Profile Edit Form -->      
	            </div>
              </div><!-- End Bordered Tabs -->

            </div>
          </div>

    </section><!-- 입력 폼 끝 -->   
  </main>
  <script>
  function validateForm() {
      var title = document.querySelector('input[name="title"]');
      var content = document.querySelector('textarea[name="content"]');
      var fileInput = document.querySelector('input[name="uploadFile"]');

      // 검사 조건들
      if (title.value == "") {
          alert("제목이 입력되지 않았습니다.");
          return false;
      }

      if (content.value == "") {
          alert("내용이 입력되지 않았습니다.");
          return false;
      }

      if (fileInput.value == "") {
          alert("파일이 선택되지 않았습니다.");
          return false;
      }
  }
  </script>

  <!-- footer -->
  <jsp:include page="inc/footer.jsp"></jsp:include>
  <!-- Scroll Top -->
  <a href="#" id="scroll-top" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Preloader -->
  <div id="preloader"></div>

  <!-- Vendor JS Files -->
  <script src="/topaz/assets/vendorGST/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="/topaz/assets/vendorGST/aos/aos.js"></script>
  <script src="/topaz/assets/vendorGST/swiper/swiper-bundle.min.js"></script>
  <script src="/topaz/assets/vendorGST/purecounter/purecounter_vanilla.js"></script>
  <script src="/topaz/assets/vendorGST/glightbox/js/glightbox.min.js"></script>
  <script src="/topaz/assets/vendorGST/imagesloaded/imagesloaded.pkgd.min.js"></script>
  <script src="/topaz/assets/vendorGST/isotope-layout/isotope.pkgd.min.js"></script>

  <!-- Main JS File -->
  <script src="/topaz/assets/js/mainGST.js"></script>

</body>

</html>