<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Main</title>
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css"><!-- xeicon 연결 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous"><!-- 부트스트랩 CSS 연결 -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/Style.css"><!-- CSS연결 -->
</head>
<body>
   <header id="header"><!--헤더 시작-->
        <div class="d-flex justify-content-between pt-5">
            <div class="p-2 logo-wrap" ><!-- 로고 영역 시작-->
                <h1 class="logo">
                    <a href="/">
                        <span>kikshub</span>
                    </a>    
                </h1>
            </div><!-- 로고 영역 끝-->
            <nav><!--메인 네비게이션 영역 시작-->
                <ul class="d-flex" id="gnb">
                    <li>
                        <a href="#">WE ARE</a>
                        <ul class="mt-5"><!--sub 네비게이션 -->
                            <li><a href="#">소개</a></li>
                            <li><a href="#">위치</a></li>
                        </ul><!--sub 네비게이션 끝-->
                    </li>
                    <li>
                        <a href="#">BRAND</a>
                        <ul class="mt-5"><!--sub 네비게이션 -->
                            <li><a href="#">나이키</a></li>
                            <li><a href="#">뉴발란스</a></li>
                            <li><a href="#">아디다스</a></li>
                            <li><a href="#">반스</a></li>
                            <li><a href="#">푸마</a></li>
                            <li><a href="#">크록스</a></li>
                            <li><a href="#">컨버스</a></li>
                            <li><a href="#">휠라</a></li>
                        </ul><!--sub 네비게이션 -->
                    </li>
                    <li>
                        <a href="#">NEW</a>
                    </li>
                    <li><a href="#">BEST</a></li>
                    <li><a href="#">EVENT</a></li>
                    <li>
                        <a href="#">COMMUNITY</a>
                        <ul class="mt-5"><!--sub 네비게이션 -->
                            <li><a href="#">자유게시판</a></li>
                            <li><a href="#">중고거래</a></li>
                            <li><a href="#">경매</a></li>
                        </ul><!--sub 네비게이션 -->
                    </li>
                    <li>
                        <a href="#">CUSTOMER</a>
                        <ul class="mt-5"><!--sub 네비게이션 -->
                            <li><a href="#">공지사항</a></li>
                            <li><a href="#">QnA</a></li>
                        </ul><!--sub 네비게이션 -->
                    </li>
                </ul>
            </nav><!--메인 네비게이션 영역 끝-->
            <div class="p-2 me-4" id="user"><!-- 로그인, 장바구니, 마이페이지 영역 시작-->
                <a href="#"><i class="xi-search"></i></a>
                <a href="#"><i class="xi-user-o"></i></a>
                <a href="#"><i class="xi-cart-o"></i></a>
            </div><!-- 로그인, 장바구니, 마이페이지 영역 끝-->
    	</div>
    </header><!--헤더 끝--> 
    <main><!--메인 시작-->
        <article id="board_viewcontain">
            <ul id="board_view">
                <li id="board_viewTtl"><div>${vo.eventTitle}</div></li>
                <li id="board_winfo">
                    <div>${vo.userNick}</div><span>|</span><div>조회수 : ${vo.eventHit}</div><p>${vo.eventWdate}</p>
                </li>
                <li id="board_wctn">
                    ${vo.eventCnt}	
                </li>
            </ul>
            <div>
   	           <input type="button" class="board_btn" value="돌아가기"	 onclick="location.href='event.do'">
   	           <c:if test="${not empty login and login.userIndex eq vo.userIndex}">
					<input type="button" class="board_btn" value="수 정" onclick="if(confirm('수정하시겠습니까?')) {location.href='event_modify.do?eventIndex=${vo.eventIndex}'}">
					<input type="button" class="board_btn" value="삭 제" onclick="if(confirm('정말로 삭제하시겠습니까?')) {document.delfrm.submit();}">
		            <form  name="delfrm" action="event_delete.do" method="post">
		           		<input type="hidden" name="eventIndex" value="${vo.eventIndex}">
		           	</form>
	           </c:if>
            </div>
        </article>
	</main>
    <footer class="d-flex justify-content-between pt-2"> <!-- 하단 시작-->
        <div class="d-flex justify-content-between pt-3, footinfo"> <!-- 회사 정보 -->
            <ul>
                <li>(주)스텝업 / 대표자: 이상훈, 곽진훈, 조범준 / 사업장소재지 : 전라북도 전주시 덕진구 백제대로 572 5층</li>
                <li>사업자등록번호 : 257-67-74617 / 통신판매업 신고번호: 제2022-2875호</li>
                <li>이메일: service@kickshub.com / 개인정보관리책임자 : 배유진</li>
                <li></li>
                <li>Copyright Ⓒ kickshub All rights reserved,</li>
            </ul>
            <ul>
                <li>고객센터 : 1660-2875</li>
                <li>운영시간 : 10:00 ~ 17:00 (주말/공휴일 휴무)</li>
                <li>점심시간 : 11:50 ~ 13:00</li>
                <li>반품주소 : 전라북도 전주시 덕진구 백제대로 572 5층</li>
                <li></li>
            </ul>
            <ul>
                <li><a href="#">회사소개</a></li>
                <li><a href="#">공지사항</a></li>
                <li><a href="#">QnA</a></li>
                <li><a href="#">운영정책관리자</a></li>
                <li></li>
            </ul>
        </div> <!-- 회사 정보 끝 -->
        <div id="footlogosns"> <!--로고 및 sns 연결 시작-->
            <h1 id="footlogo"><a href="#">
                <span>kickshub</span>
            </a></h1>
            <ul id="footsns" class="d-flex justify-content-between "> <!--SNS 링크 부분-->
                <li id="sns_fb"><a href="#"><span>facebook</span></a></li>
                <li id="sns_tw"><a href="#"><span>twitter</span></a></li>
                <li id="sns_ist"><a href="#"><span>instagram</span></a></li>
                <li id="sns_ytb"><a href="#"><span>Youtube</span></a></li>
            </ul>
        </div> <!--로고 및 sns 연결 끝-->
    </footer> <!-- 하단 끝-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script><!-- 부트스트랩 자바 스크립트연결 -->
    <script src="<%=request.getContextPath()%>/resources/JS/script.js"></script><!-- 자바 스크립트 연결 -->
</body>
</html>