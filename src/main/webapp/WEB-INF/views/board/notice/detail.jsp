<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <!DOCTYPE html>
    <html>

    <head>
      <meta charset="UTF-8">
      <!-- meta tag 추가 -->
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <title>Insert title here</title>
      <!-- 공통 css, js, jquery -->
      <c:import url="../../temp/layout_header.jsp"></c:import>
      <!-- 파일 다운로드 아이콘 -->
      <link rel="stylesheet"
        href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    </head>

    <!-- body ID 작성 -->

    <body id="page-top">

      <!-- Page Wrapper 전체 Contents Wrapper -->
      <div id="wrapper">

        <!-- Sidebar import -->
        <c:import url="../../temp/layout_sidebar.jsp"></c:import>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">
          <!-- Main Content -->
          <div id="content">

            <!-- Topbar import-->
            <c:import url="../../temp/layout_topbar.jsp"></c:import>
            <!-- End of Topbar -->

            <!-- Begin Page Content -->
            <div class="container-fluid">

              <!-- 공지사항 작성 -->
              <div class="card mb-3">

                <div class="card-header bg-white">
                  <div class="row justify-content-between">
                    <div class="col-auto align-self-center">
                      <h5 class="mb-0 text-gray-800" data-anchor="data-anchor" id="file-input">[공지사항] ${boardVO.title}
                      </h5>
                    </div>
                    <div class="col-fill ml-auto align-self-end mr-5">
                      <p>조회수 ${boardVO.hit} </p>
                      <p id="regdate" data-date="${boardVO.regDate}"> 등록일자 </p>
                    </div>
                  </div>
                </div>
                <div class="card-body" style="min-height: 500px">
                  <div class="mb-1 row justify-content-end">
                    <div class="col-3">
                      <c:forEach items="${boardVO.fileVOs}" var="files">
                        <p>
                          <a href="/fileDown/board/${files.fileNum}">
                            <span class="material-symbols-outlined">
                              download
                            </span> ${files.oriName}</a>
                        </p>
                      </c:forEach>
                    </div>
                  </div>
                  <div class="mb-5 row">
                    <div class="col">
                      ${boardVO.contents}
                    </div>
                  </div>
                </div>

              </div>
              <a href="/notice/update?num=${boardVO.num}" class="btn btn-danger">글 수정</a>
              <button type="button" class="btn btn-danger">글 삭제</button>
            </div>
            <!-- End Page Content -->

          </div>
          <!-- End of Main Content -->

          <!-- Footer import -->
          <c:import url="../../temp/layout_footer.jsp"></c:import>
          <!-- End of Footer -->
        </div>
        <!-- End of Content Wrapper -->
      </div>
      <script type="text/javascript">
        let regDate = $("#regdate").attr("data-date")
        $("#regdate").append(regDate.slice(0, 16))

      </script>
      <!-- Scroll Top, Logout Modal import -->
      <c:import url="../../temp/layout_top_logoutModal.jsp"></c:import>
    </body>

    </html>
