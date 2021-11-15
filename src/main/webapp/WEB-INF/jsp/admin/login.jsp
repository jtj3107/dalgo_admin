<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dalgo</title>

<!-- 사이트 공통 CSS -->
<link rel="stylesheet" href="/resource/common.css" />
</head>
<body>
  <div style="flex-grow: 1;">
    <div
      style="background-color: rgb(27, 31, 38); height: 84px; display: flex; align-items: center; justify-content: space-between; border-bottom: 1px solid silver;">
      <div style="display: flex; flex-direction: column; align-items: center; justify-content: center;">
        <div class="sc-fMiknA skAoH">
          <img
            src="data:image/png;base64,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"
            alt="Dalgo Logo" style="width: 117px; height: 45px;">
        </div>
      </div>
      <div style="margin-right: 32px;">
        <a href="/adv/signin">광고주 로그인</a>
      </div>
    </div>
    <div class="sc-bRBYWo" style="height: 56px;"></div>
    <div style="display: flex; justify-content: center; align-items: center; flex-direction: column;">
      <div class="container" style="width: 600px; border-right: 0px; margin-top: 34px;">
        <div class="row">
          <div class="col">
            <span class="sc-hzDkRC leQzCI">댕글 어드민 로그인</span>
          </div>
        </div>
        <div class="sc-bRBYWo dXqfar" style="height: 56px;"></div>
        <form class="">
          <div class="row form-group">
            <label for="loginEmail" class="col-sm-3 col-form-label">
              <span class="sc-jhAzac jURzqC">이메일 아이디</span>
            </label>
            <div style="flex-grow: 1"></div>
            <div class="col-sm-9">
              <input type="email" name="email" id="loginEmail" placeholder="아이디를 입력해주세요." class="sc-dnqmqq fRtgut" value=""
                style="width: 100%;">
            </div>
          </div>
          <div class="row form-group">
            <label for="loginPassword" class="col-sm-3 col-form-label">
              <span class="sc-jhAzac jURzqC">비밀번호</span>
            </label>
            <div style="flex-grow: 1"></div>
            <div class="col-sm-9">
              <input type="password" name="password" id="loginPassword" placeholder="비밀번호를 입력해주세요." class="sc-dnqmqq fRtgut" value=""
                style="width: 100%;">
            </div>
          </div>
          <div class="sc-bRBYWo jeGhWX" style="height: 51px;"></div>
          <div class="row form-check">
            <div class="col-sm-9 offset-sm-3" style="padding-left: 0px; height: 48px;">
              <div class="sc-cMljjf fsDzEI">
                <span class="sc-jAaTju gHdAVb">로그인</span>
              </div>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
</body>
</html>