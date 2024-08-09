$(document).ready(function() {
	$('.resetBtn').click(function() {
        // 폼을 초기화
        $('#searchForm')[0].reset();

        // 기본 리스트 로드
        loadTemplateList(1);
    });
       // 폼 서밋 막기 및 AJAX를 통해 데이터 로드 
    $('#searchForm').submit(function(event) {
        event.preventDefault(); // 폼의 기본 제출 동작 방지
        loadTemplateList(1); // ajax 요청을 통해 필요한 부분만 갱신
    });
    	
    	// 템플릿 리스트를 가져오는 함수
        function loadTemplateList(page) {
        const formData = $('#searchForm').serialize() + `&currentPage=${page}`;
        $.ajax({
            url: '/topaz/groupware/approval/approvalTemplateList',
            method: 'POST',
            data: formData,
            success: function(response) {
                console.log("템플릿 리스트: ", response);

                // JSON 데이터를 HTML로 변환하여 templateListContainer에 추가
                const templateList = response.templateList;
                const templateListContainer = $('#templateListContainer');
                templateListContainer.empty();
                templateList.forEach(temp => {

                    templateListContainer.append(`
                        <tr onclick="window.location.href='/topaz/groupware/approval/approvalTemplateModify?templateNo=${temp.templateNo}'" style="cursor:pointer;">
                            <td>${temp.templateNo}</td>
                            <td>${temp.cdNm}</td>
                            <td>${temp.empName}</td>
                            <td>${temp.regTime}</td>
                            <td>${temp.empName}</td>
                            <td>${temp.modTime}</td>
                        </tr>
                    `);
                });

                // 페이지 정보 업데이트
                const currentPage = response.currentPage;
                const lastPage = response.lastPage;
                
                updatePagination(currentPage, lastPage);
            }
        });
    }
        // 페이징 버튼 업데이트 
    function updatePagination(currentPage, lastPage) {
        // 페이지 버튼 추가해줄 ul 가져오기
        let paginationUl = $('#paginationUl');
        
        //한 번에 표시할 페이지 수
        const RANGE = 10;
        
        //페이징 버튼 비워주기
        paginationUl.empty();
        
        // << 버튼 (이전 RANGE로 이동)
        const prevRangePage = Math.max(1, currentPage - RANGE);
        paginationUl.append(`<li class="page-item"><a class="page-link" href="#" onclick="changePage(${prevRangePage})" aria-label="Previous Range"><span aria-hidden="true">&laquo;</span></a></li>`);
        
        // < 버튼 (이전 페이지로 이동)
        const prevPage = Math.max(1, currentPage - 1);
        paginationUl.append(`<li class="page-item"><a class="page-link" href="#" onclick="changePage(${prevPage})" aria-label="Previous"><span aria-hidden="true">&lt;</span></a></li>`);
        
        //페이지 번호
        const startPage = Math.floor((currentPage - 1) / RANGE) * RANGE + 1;
        const endPage = Math.min(startPage + RANGE - 1, lastPage); // .min() 함수는 가장 작은 값을 반환한다. Math.min(3,6) 6을 반환
        
        //페이지 번호 버튼 만들기
        for (let i = startPage; i <= endPage; i++) {
            paginationUl.append(`<li class="page-item ${i === currentPage ? 'active' : ''}"><a class="page-link" href="#" onclick="changePage(${i})">${i}</a></li>`);
        }
        
        // > 버튼 (다음 페이지로 이동)
        const nextPage = Math.min(lastPage, currentPage + 1);
        paginationUl.append(`<li class="page-item"><a class="page-link" href="#" onclick="changePage(${nextPage})" aria-label="Next"><span aria-hidden="true">&gt;</span></a></li>`);
        
        // >> 버튼 (다음 RANGE로 이동)
        const nextRangePage = Math.min(lastPage, currentPage + RANGE);
        paginationUl.append(`<li class="page-item"><a class="page-link" href="#" onclick="changePage(${nextRangePage})" aria-label="Next Range"><span aria-hidden="true">&raquo;</span></a></li>`);
    }
    
    //페이지 변경 함수
    window.changePage = function(page) {
        event.preventDefault();
        loadTemplateList(page);
    }

    //템플릿 리스트 로드
    loadTemplateList(1);
});
