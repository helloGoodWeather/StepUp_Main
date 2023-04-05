<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>join_terms</title>
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css"><!-- xeicon 연결 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous"><!-- 부트스트랩 CSS 연결 -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/Style.css"><!-- CSS연결 -->

	<!-- ㅆㅁㄴㅌ 연결-->
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="/plugin/summernote/summernote-lite.js"></script>
    <script src="/plugin/summernote/summernote-ko-KR.min.js"></script>
    <link rel="stylesheet" href="/plugin/summernote/summernote-lite.css">
</head>

<body style="background-color: #fafafa;">
        <div class="jointermslogo">
            <h1 class="jointerms_title">
                <a href="/">
                    <img src="<%=request.getContextPath()%>/resources/image/kickshublogo.png" alt="kickshub">
                </a>
            </h1>
        </div>
        <div class="jointerms-area">
            <form action="" class="jointerms">
                <ul class="jointerms_box">
                    <li class="jtcheckBox check01">
                        <ul class="clearfix">
                            <li class="joinline">이용약관, 개인정보 수집 및 이용,
                                위치정보 이용약관(선택), 프로모션 안내
                                메일 수신(선택)에 모두 동의합니다.</li>
                            <li class="checkAllBtn">
                                <input type="checkbox" name="chkAll" id="chk" class="chkAll">
                            </li>
                        </ul>
                    </li>
                    <li class="jtcheckBox check02">
                        <ul class="clearfix">
                            <li>킥스허브 이용약관 동의<strong>(필수)</strong></li>
                            <li class="checkBtn">
                                <input type="checkbox" name="chk"> 
                            </li>
                        </ul>
                        <textarea name="" id="">
여러분을 환영합니다.

킥스허브 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 킥스허브 서비스의 이용과 관련하여 킥스허브 서비스를 제공하는 킥스허브 주식회사(이하 ‘킥스허브’)와 이를 이용하는 킥스허브 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 킥스허브 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
                            
킥스허브 서비스를 이용하시거나 킥스허브 서비스 회원으로 가입하실 경우 여러분은 본 약관 및 관련 운영 정책을 확인하거나 동의하게 되므로, 잠시 시간을 내시어 주의 깊게 살펴봐 주시기 바랍니다.
                        </textarea>
                    </li>
                    <li class="jtcheckBox check03">
                        <ul class="clearfix">
                            <li>개인정보 수집 및 이용에 대한 안내<strong>(필수)</strong></li>
                            <li class="checkBtn">
                                <input type="checkbox" name="chk">
                            </li>
                        </ul>
                        <textarea name="" id="">
킥스허브 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 킥스허브 서비스의 이용과 관련하여 킥스허브 서비스를 제공하는 킥스허브 주식회사(이하 ‘킥스허브’)와 이를 이용하는 킥스허브 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 킥스허브 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
                        </textarea>
                    </li>
                    <li class="jtcheckBox check03">
                        <ul class="clearfix">
                            <li>위치정보 이용약관 동의(선택)</li>
                            <li class="checkBtn">
                                <input type="checkbox" name="chk">
                            </li>
                        </ul>
                        <textarea name="" id="">
위치기반서비스 이용약관에 동의하시면, 위치를 활용한 광고 정보 수신 등을 포함하는 킥스허브 위치기반 서비스를 이용할 수 있습니다.

제 1 조 (목적)
이 약관은 킥스허브 주식회사 (이하 “회사”)가 제공하는 위치기반서비스와 관련하여 회사와 개인위치정보주체와의 권리, 의무 및 책임사항, 기타 필요한 사항을 규정함을 목적으로 합니다.

제 2 조 (약관 외 준칙)
이 약관에 명시되지 않은 사항은 위치정보의 보호 및 이용 등에 관한 법률, 개인정보보호법, 정보통신망 이용촉진 및 정보보호 등에 관한 법률, 전기통신기본법, 전기통신사업법 등 관계법령과 회사의 이용약관 및 개인정보처리방침, 회사가 별도로 정한 지침 등에 의합니다.
                        </textarea>
                    </li>
                    <li class="jtcheckBox check04">
                        <ul class="clearfix">
                            <li>이벤트 등 프로모션 알림 메일 수신(선택)</li>
                            <li class="checkBtn">
                                <input type="checkbox" name="chk">
                            </li>
                        </ul>
    
                    </li>
                </ul>
                <ul class="footBtwrap clearfix">
                    <li><button class="fpmgBt1">취소</button></li>
                    <li><button class="fpmgBt2">확인</button></li>
                </ul>
            </form>
        </div>
</body>
</html>