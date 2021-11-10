<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dalgo</title>
<!-- 제이쿼리 불러오기 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<!-- 테일윈드 불러오기 -->
<!-- 노말라이즈, 라이브러리까지 한방에 해결 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tailwindcss/2.2.15/tailwind.min.css" />

<!-- 데이지 UI -->
<link href="https://cdn.jsdelivr.net/npm/daisyui@1.14.0/dist/full.css" rel="stylesheet" type="text/css" />

<!-- 폰트어썸 불러오기 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />

<!-- 사이트 공토 CSS -->
<link rel="stylesheet" href="/resource/common.css" />
</head>
<body>
  <div class="flex min-h-full min-h-screen">
    <div class="flex flex-grow justify-center items-center place-self-center">
      <div class="alert1 alert-secondary1" role="alert" style="max-width: 800px; min-width: 600px;">
        <h4 class="text-2xl">댕글 관리자 로그인이 필요합니다.</h4>
        <p class="mt-5">
          만약 광고주이시라면
          <a href="/adv">광고주 페이지</a>
          로 로그인해주세요.
        </p>
        <hr>
        <div class="flex justify-center items-center mt-10 mb-5 flex-col">
          <a href="/admin/login">로그인하러 가기</a>
        </div>
      </div>
    </div>
  </div>
</body>
</html>