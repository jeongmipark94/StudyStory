<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<nav class="col-md-2 d-none d-md-block bg-light sidebar">
  <div class="sidebar-sticky">
    <ul class="nav flex-column">
      <li class="nav-item">
        <a class="nav-link ${sessionScope.activeFlag=='nsActiveFlag'? 'active':''}"  href="new_study.do">
          <span data-feather="home"></span>
          	새 스터디 관리 <span class="sr-only">(current)</span>
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link ${sessionScope.activeFlag=='uActiveFlag'? 'active':''}" href="user_mng.do">
          <span data-feather="file"></span>
          	회원정보 관리
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link ${sessionScope.activeFlag=='sActiveFlag'? 'active':''}" href="study_mng.do">
          <span data-feather="shopping-cart"></span>
          	스터디 정보 관리
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link ${sessionScope.activeFlag=='qActiveFlag'? 'active':''}" href="question_mng.do">
          <span data-feather="users"></span>
          	문의사항
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link ${activeFlag=='nActiveFlag'? 'active':''}" href="notice_mng.do">
          <span data-feather="bar-chart-2"></span>
          	공지사항
        </a>
      </li>
    </ul>

	<div style="margin-top:400px;">
    <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
      <span>주간 신규 회원 수 : <strong>${sessionScope.weekUser}명</strong></span>
      <a class="d-flex align-items-center text-muted" href="#">
        <span data-feather="plus-circle"></span>
      </a>
    </h6>
    <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
      <span>주간신규 스터디 수 : <strong>${sessionScope.weekStudy}개</strong></span>
      <a class="d-flex align-items-center text-muted" href="#">
        <span data-feather="plus-circle"></span>
      </a>
    </h6>
    <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
      <span>총 회원수 : <strong>${sessionScope.allUser}명</strong></span>
      <a class="d-flex align-items-center text-muted" href="#">
        <span data-feather="plus-circle"></span>
      </a>
    </h6>
    <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
      <span>총 스터디 수 : <strong>${sessionScope.allStudy}개</strong></span>
      <a class="d-flex align-items-center text-muted" href="#">
        <span data-feather="plus-circle"></span>
      </a>
    </h6>
    </div>
  </div>
</nav>