<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>회원관리</title>
    <link
      href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css"
      rel="stylesheet"
    />
    <link href="/resources/css/admin/css/styles.css" rel="stylesheet" />
    <script
      src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js"
      crossorigin="anonymous"
    ></script>
  	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
  
  </head>
  
  <body class="sb-nav-fixed">
	
    <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
        <!-- Navbar Brand 네비게이션 -->
        <a class="navbar-brand ps-3" href="admin.html">Space Cloud Admin</a>
        <!-- Sidebar Toggle 사이드바 -->
        <button
          class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0"
          id="sidebarToggle"
          href="#!"
        >
          <i class="fas fa-bars"></i>
        </button>
        <!-- Navbar Search-->
        <form
          class="
            d-none d-md-inline-block
            form-inline
            ms-auto
            me-0 me-md-3
            my-2 my-md-0
          "
        >
          <div class="input-group">
            <input
              class="form-control"
              type="text"
              placeholder="Search for..."
              aria-label="Search for..."
              aria-describedby="btnNavbarSearch"
            />
            <button class="btn btn-primary" id="btnNavbarSearch" type="button">
              <i class="fas fa-search"></i>
            </button>
          </div>
        </form>
        <!-- Navbar-->
        <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
          <li class="nav-item dropdown">
            <a
              class="nav-link dropdown-toggle"
              id="navbarDropdown"
              href="#"
              role="button"
              data-bs-toggle="dropdown"
              aria-expanded="false"
              ><i class="fas fa-user fa-fw"></i
            ></a>
            <ul
              class="dropdown-menu dropdown-menu-end"
              aria-labelledby="navbarDropdown"
            >
              <li><a class="dropdown-item" href="#!">Settings</a></li>
              <li><a class="dropdown-item" href="#!">Activity Log</a></li>
              <li><hr class="dropdown-divider" /></li>
              <li><a class="dropdown-item" href="#!">Logout</a></li>
            </ul>
          </li>
        </ul>
      </nav>
      <div id="layoutSidenav">
        <div id="layoutSidenav_nav">
          <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
            <!--사이드바 nav태그(사이드메뉴) 시작-->
            <div class="sb-sidenav-menu">
              <div class="nav">
                <div class="sb-sidenav-menu-heading">Core</div>
                <a class="nav-link" href="index.html">
                  <div class="sb-nav-link-icon">
                    <i class="fas fa-tachometer-alt"></i>
                  </div>
                  Dashboard
                </a>
  
                <div class="sb-sidenav-menu-heading">Menu</div>
                <a
                  class="nav-link collapsed"
                  href="#"
                  data-bs-toggle="collapse"
                  data-bs-target="#collapseMember"
                  aria-expanded="false"
                  aria-controls="collapseMember"
                >
                  <div class="sb-nav-link-icon">
                    <i class="fa fa-user-circle"></i>
                  </div>
                  
                  회원 관리
                  <div class="sb-sidenav-collapse-arrow">
                    <i class="fas fa-angle-down"></i>
                  </div>
                </a>
                <div
                  class="collapse"
                  id="collapseMember"
                  aria-labelledby="headingOne"
                  data-bs-parent="#sidenavAccordion"
                >
                  <nav class="sb-sidenav-menu-nested nav">
                    <a class="nav-link" href="#">전체 사용자 관리</a>
                    <a class="nav-link" href="tablesMembers.html">신고 회원 관리</a>
                    <a class="nav-link" href="tablesCoupon.html">쿠폰 관리</a>
                  </nav>
                </div>
                <a
                  class="nav-link collapsed"
                  href="#"
                  data-bs-toggle="collapse"
                  data-bs-target="#collapsePayManagement"
                  aria-expanded="false"
                  aria-controls="collapsePayManagement"
                >
                  <div class="sb-nav-link-icon">
                    <i class="fas fa-money-bill-alt"></i>
                  </div>
                  결제/예약/매출 관리
                  <div class="sb-sidenav-collapse-arrow">
                    <i class="fas fa-angle-down"></i>
                  </div>
                </a>
                <div
                  class="collapse"
                  id="collapsePayManagement"
                  aria-labelledby="headingOne"
                  data-bs-parent="#sidenavAccordion"
                >
                  <nav class="sb-sidenav-menu-nested nav">
                    <a class="nav-link" href="layout-static.html">결제 관리</a>
                    <a class="nav-link" href="layout-sidenav-light.html"
                      >예약 관리</a
                    >
                    <a class="nav-link" href="chartsAdmin.html"
                      >매출 현황</a
                    >
                  </nav>
                </div>
                <a
                  class="nav-link collapsed"
                  href="#"
                  data-bs-toggle="collapse"
                  data-bs-target="#collapseAnnounce"
                  aria-expanded="false"
                  aria-controls="collapseAnnounce"
                >
                  <div class="sb-nav-link-icon">
                    <i class="fas fa-bullhorn"></i>
                  </div>
                  공지사항 관리
                  <div class="sb-sidenav-collapse-arrow">
                    <i class="fas fa-angle-down"></i>
                  </div>
                </a>
                <div
                  class="collapse"
                  id="collapseAnnounce"
                  aria-labelledby="headingOne"
                  data-bs-parent="#sidenavAccordion"
                >
                  <nav class="sb-sidenav-menu-nested nav">
                    <a class="nav-link" href="layout-static.html">공지사항관리</a>
                  </nav>
                </div>
                <a
                  class="nav-link collapsed"
                  href="#"
                  data-bs-toggle="collapse"
                  data-bs-target="#collapseFAQ"
                  aria-expanded="false"
                  aria-controls="collapseFAQ"
                >
                  <div class="sb-nav-link-icon">
                    <i class="fas fa-question-circle"></i>
                  </div>
                  FAQ
                  <div class="sb-sidenav-collapse-arrow">
                    <i class="fas fa-angle-down"></i>
                  </div>
                </a>
                <div
                  class="collapse"
                  id="collapseFAQ"
                  aria-labelledby="headingOne"
                  data-bs-parent="#sidenavAccordion"
                >
                  <nav class="sb-sidenav-menu-nested nav">
                    <a class="nav-link" href="layout-static.html">FAQ</a>
                </div>
                <a
                  class="nav-link collapsed"
                  href="#"
                  data-bs-toggle="collapse"
                  data-bs-target="#collapsePages"
                  aria-expanded="false"
                  aria-controls="collapsePages"
                >
                  <div class="sb-nav-link-icon">
                    <i class="fas fa-book-open"></i>
                  </div>
                  Pages
                  <div class="sb-sidenav-collapse-arrow">
                    <i class="fas fa-angle-down"></i>
                  </div>
                </a>
                <div
                  class="collapse"
                  id="collapsePages"
                  aria-labelledby="headingTwo"
                  data-bs-parent="#sidenavAccordion"
                >
                  <nav
                    class="sb-sidenav-menu-nested nav accordion"
                    id="sidenavAccordionPages"
                  >
                    <a
                      class="nav-link collapsed"
                      href="#"
                      data-bs-toggle="collapse"
                      data-bs-target="#pagesCollapseAuth"
                      aria-expanded="false"
                      aria-controls="pagesCollapseAuth"
                    >
                      Authentication
                      <div class="sb-sidenav-collapse-arrow">
                        <i class="fas fa-angle-down"></i>
                      </div>
                    </a>
                    <div
                      class="collapse"
                      id="pagesCollapseAuth"
                      aria-labelledby="headingOne"
                      data-bs-parent="#sidenavAccordionPages"
                    >
                      <nav class="sb-sidenav-menu-nested nav">
                        <a class="nav-link" href="login.html">Login</a>
                        <a class="nav-link" href="register.html">Register</a>
                        <a class="nav-link" href="password.html"
                          >Forgot Password</a
                        >
                      </nav>
                    </div>
                    <a
                      class="nav-link collapsed"
                      href="#"
                      data-bs-toggle="collapse"
                      data-bs-target="#pagesCollapseError"
                      aria-expanded="false"
                      aria-controls="pagesCollapseError"
                    >
                      Error
                      <div class="sb-sidenav-collapse-arrow">
                        <i class="fas fa-angle-down"></i>
                      </div>
                    </a>
                    <div
                      class="collapse"
                      id="pagesCollapseError"
                      aria-labelledby="headingOne"
                      data-bs-parent="#sidenavAccordionPages"
                    >
                      <nav class="sb-sidenav-menu-nested nav">
                        <a class="nav-link" href="401.html">401 Page</a>
                        <a class="nav-link" href="404.html">404 Page</a>
                        <a class="nav-link" href="500.html">500 Page</a>
                      </nav>
                    </div>
                  </nav>
                </div>
  
                <div class="sb-sidenav-menu-heading">Management</div>
                <a
                  class="nav-link collapsed"
                  href="#"
                  data-bs-toggle="collapse"
                  data-bs-target="#collapseSiteManage"
                  aria-expanded="false"
                  aria-controls="collapseSiteManage"
                >
                  <div class="sb-nav-link-icon">
                    <i class="fas fa-laptop-house"></i>
                  </div>
                  사이트 관리
                  <div class="sb-sidenav-collapse-arrow">
                    <i class="fas fa-angle-down"></i>
                  </div>
                </a>
                <div
                  class="collapse"
                  id="collapseSiteManage"
                  aria-labelledby="headingOne"
                  data-bs-parent="#sidenavAccordion"
                >
                  <nav class="sb-sidenav-menu-nested nav">
                    <a class="nav-link" href="layout-static.html"
                      >Static Navigation</a
                    >
                    <a class="nav-link" href="layout-sidenav-light.html"
                      >Light Sidenav</a
                    >
                  </nav>
                </div>
  
                <div class="sb-sidenav-menu-heading">Addons</div>
                <a class="nav-link" href="charts.html">
                  <div class="sb-nav-link-icon">
                    <i class="fas fa-chart-area"></i>
                  </div>
                  Charts
                </a>
                <a class="nav-link" href="tables.html">
                  <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                  Tables
                </a>
              </div>
            </div>
            <div class="sb-sidenav-footer">
              <div class="small">Logged in as:</div>
              Start Bootstrap
            </div>
          </nav>
          <!--사이드바 nav태그((사이드메뉴)) 끝-->
      </div>

      <!-- 회원관리 테이블 시작 -->
      
      <div id="layoutSidenav_content">
      <form action="/memberView.mdo" method="POST" >
        <main>
          <div class="container-fluid px-4">
            <h1 class="mt-4">회원관리</h1>
            <ol class="breadcrumb mb-4">
              <li class="breadcrumb-item">
                <a href="indexOurPlace.html">Go Home</a>
              </li>
              <li class="breadcrumb-item active">Member</li>
            </ol>
            <div class="card mb-4">
              <div class="card-body">
                	모든 회원의 정보를 볼 수 있으며, 삭제할 수 있는 페이지 입니다.
              </div>
            </div>
            
            <!-- DataTable 시작 -->
            <div class="card mb-4">
              <div class="card-header">
                <i class="fas fa-table me-1"></i>
                	전체 회원 관리
              </div>
              <div class="card-body">
	              <select class="dataTable-selector">
	              	<option>전체 회원 보기</option>
	              	<option>게스트만 보기</option>
	              	<option>호스트만 보기</option>
	              </select>
                <table id="datatablesSimple">
                  <thead>
                    <tr>
                        <th>회원번호</th>
                        <th>회원타입</th>                
                        <th>아이디</th>
                        <th>이름</th>
                        <th>전화번호</th>
                        <th>이메일</th>
                        <th>성별</th>
                        <th>가입일자</th>
                        <th>SMS 수신동의</th>
                        <th>Email 수신동의</th>
                        <th>삭제</th>
                    </tr>
                  </thead>

				<tbody>
                  <c:forEach var="mem" items="${memberList}">
                    <tr>
                      <td>${mem.userNum }</td>
                      
                      <td>
                      	<c:if test="${mem.userType eq '0'}">
                      	게스트
                      	</c:if>
                      	<c:if test="${mem.userType ne '0'}">
                      	호스트
                      	</c:if>
                      </td>
                      
                      <td>${mem.userId  }</td>
                      <td>${mem.userName }</td>
                      <td>${mem.userTel }</td>
                      <td>${mem.userEmail }</td>
                      <td>${mem.userSex }</td>
                      <td>${mem.userRegDate }</td>
                      <td>${mem.userSmsAgree }</td>
                      <td>${mem.userEmailAgree }</td>
                      <td>
	                      <button type="button"
	                      class="btn btn-danger"
	                      style="font-size: 10px; margin-left: 10px;" id="delete_btn">
	                      	Delete
	                      </button>
                      </td>
                    </tr>
                  </c:forEach>
				</tbody>
               </table>
                
              </div>
            </div>
            <!-- DataTable 끝 -->
            
          </div>
        </main>
       </form>
       
       <!-- test -->
       <form id = "submitForm" method="POST" action="/deleteMember.mdo" hidden="hidden">
       	<input type="hidden" id="deleteUserHidden" name="deleteUserId">
       </form>
       
        <footer class="py-4 bg-light mt-auto">
          <div class="container-fluid px-4">
            <div
              class="d-flex align-items-center justify-content-between small"
            >
              <div class="text-muted">Copyright &copy; Your Website 2021</div>
              <div>
                <a href="#">Privacy Policy</a>
                &middot;
                <a href="#">Terms &amp; Conditions</a>
              </div>
            </div>
          </div>
        </footer>
      </div>
    </div>
    

    
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"
      crossorigin="anonymous">
    </script>
    
    <script src="resources/css/admin/js/scripts.js"></script>
    
    <script
      src="https://cdn.jsdelivr.net/npm/simple-datatables@latest"
      crossorigin="anonymous">
    </script>
    
    <script src="resources/css/admin/js/datatables-simple-demo.js"></script>

	<script>

		$(document).on("click","#delete_btn",function()
		{
// 			console.log('삭제버튼 클릭');
			
			var tdArr = new Array();
			var checkBtn = $(this);
			
			var tr = checkBtn.parent().parent();
			var td = tr.children();

			var no = td.eq(0).text();
			var name = td.eq(1).text();
			var id = td.eq(2).text();
			
			td.each(function(i)
			{
				tdArr.push(td.eq(i).text());
			});
			
			console.log("아이디 text : " + id);
		
			$("#deleteUserHidden").val(id);
			$("#submitForm").submit();
			
		});
			
			</script>
		
  </body>
</html>