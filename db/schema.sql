# DB 생성
DROP DATABASE IF EXISTS dalgo2_service;
CREATE DATABASE dalgo2_service;
USE dalgo2_service;

CREATE TABLE `member` (
  `mem_id` INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT '사용자 아이디',
  `mem_userid` VARCHAR(100) CHARACTER SET utf8mb4 NOT NULL DEFAULT '',
  `mem_email` VARCHAR(140) DEFAULT NULL COMMENT '로그인용 이메일 주소',
  `mem_password` BINARY(60) DEFAULT NULL COMMENT 'Salted Password',
  `mem_username` VARCHAR(40) DEFAULT NULL COMMENT '사용자 이름',
  `mem_nickname` VARCHAR(100) CHARACTER SET utf8mb4 NOT NULL DEFAULT '',
  `mem_level` MEDIUMINT(6) UNSIGNED NOT NULL DEFAULT 0,
  `mem_point` INT(11) NOT NULL DEFAULT 0,
  `mem_homepage` TEXT CHARACTER SET utf8mb4 DEFAULT NULL,
  `mem_phone` VARCHAR(255) CHARACTER SET utf8mb4 NOT NULL DEFAULT '',
  `mem_birthday` CHAR(10) CHARACTER SET utf8mb4 NOT NULL DEFAULT '',
  `mem_sex` TINYINT(4) UNSIGNED NOT NULL DEFAULT 0 COMMENT '가입자 성별',
  `mem_zipcode` VARCHAR(7) CHARACTER SET utf8mb4 NOT NULL DEFAULT '',
  `mem_address1` LONGTEXT DEFAULT NULL COMMENT '거주지 - 검색을 통한 주소',
  `mem_address2` LONGTEXT DEFAULT NULL COMMENT '거주지 - 상세 주소',
  `mem_address3` VARCHAR(255) CHARACTER SET utf8mb4 NOT NULL DEFAULT '',
  `mem_address4` VARCHAR(255) CHARACTER SET utf8mb4 NOT NULL DEFAULT '',
  `mem_receive_email` TINYINT(4) UNSIGNED NOT NULL DEFAULT 0,
  `mem_use_note` TINYINT(4) UNSIGNED NOT NULL DEFAULT 0,
  `mem_receive_sms` TINYINT(4) UNSIGNED NOT NULL DEFAULT 0,
  `mem_open_profile` TINYINT(4) UNSIGNED NOT NULL DEFAULT 0,
  `mem_denied` TINYINT(4) UNSIGNED NOT NULL DEFAULT 0,
  `mem_email_cert` TINYINT(4) UNSIGNED NOT NULL DEFAULT 0,
  `mem_register_datetime` DATETIME NOT NULL COMMENT '생성 시각',
  `mem_register_ip` VARCHAR(50) CHARACTER SET utf8mb4 NOT NULL DEFAULT '''"''',
  `mem_lastlogin_datetime` DATETIME NOT NULL COMMENT '마지막 접속 시각',
  `mem_lastlogin_ip` VARCHAR(50) CHARACTER SET utf8mb4 NOT NULL DEFAULT '"',
  `mem_is_admin` TINYINT(4) UNSIGNED NOT NULL DEFAULT 0,
  `mem_profile_content` TEXT CHARACTER SET utf8mb4 DEFAULT NULL,
  `mem_adminmemo` TEXT CHARACTER SET utf8mb4 DEFAULT NULL,
  `mem_following` INT(11) UNSIGNED NOT NULL DEFAULT 0,
  `mem_followed` INT(11) UNSIGNED NOT NULL DEFAULT 0,
  `mem_icon` VARCHAR(255) CHARACTER SET utf8mb4 NOT NULL DEFAULT '',
  `mem_photo` VARCHAR(255) CHARACTER SET utf8mb4 NOT NULL DEFAULT '',
  `updatedAt` DATETIME NOT NULL COMMENT '업데이트 시각',
  `unread` INT(11) NOT NULL DEFAULT 0 COMMENT '읽지 않은 알림의 갯수',
  `roadHourType` ENUM('RH_0_1','RH_1_3','RH_4_6','RH_7_9','RH_10_12','RH_13_15','RH_16_18','RH_19_21','RH_22_24') DEFAULT NULL COMMENT '일 평균 주행시간',
  `roadLocType` LONGTEXT NOT NULL COMMENT '자주 방문하는 지역구 - json array of string',
  `bankName` VARCHAR(20) DEFAULT NULL COMMENT '광고수익을 입금받을 은행',
  `bankAccount` VARCHAR(20) DEFAULT NULL COMMENT '광고수익을 입금받을 계좌번호',
  `lastLoginToken` VARCHAR(10) NOT NULL COMMENT '마지막 접속 날짜 토큰 (YYYY-MM-DD)',
  `allowPushNoti` TINYINT(4) NOT NULL DEFAULT 1 COMMENT '푸시 알림을 받을 것인가?',
  `phoneNum` VARCHAR(50) DEFAULT NULL COMMENT '인증이 완료된 전화번호 (정규화된 형태)',
  `beaconStatus` ENUM('DontHave','DeliveringToUser','InPossession','ReturnRequested','ReturnStarted') NOT NULL DEFAULT 'DontHave' COMMENT '광고 기기 소유 상태',
  `beaconType` ENUM('CarSide','CarRear','CarRoof','BikeDefault','BusDefault','LoadableTruckDefault','TruckDefault') DEFAULT NULL COMMENT '광고 기기 종류',
  `beaconSerial` VARCHAR(100) DEFAULT NULL COMMENT '광고판 일련번호',
  `vehicleType` ENUM('Business','Personal') DEFAULT NULL COMMENT '사용자의 차량 유형 (상업용여부)',
  `vehicleSize` ENUM('Bike','MotorCycle','SmallMedium','Bus','Truck','LoadableTruck','Person') DEFAULT NULL COMMENT '사용자의 차종 (크기에 의한 분류)',
  `vehicleManufacturer` VARCHAR(255) DEFAULT NULL COMMENT '차량제조사',
  `vehicleModelName` VARCHAR(255) DEFAULT NULL COMMENT '차량모델명',
  `driverLicenseStatus` INT(11) NOT NULL DEFAULT 0 COMMENT '사용자 운전면허증 인증 단계 (DANGLE_APPROVAL_STATUS)',
  `driverLicenseRejectReason` LONGTEXT DEFAULT NULL COMMENT '사용자 운전면허증 반려시 반려 이유',
  `signupMethod` ENUM('SignUpEmail','SignUpKakao','SignUpNaver','SignUpApple','SignUpSlave') NOT NULL COMMENT '가입 방법 (연동된 소셜 계정)',
  `accEarning` INT(11) NOT NULL DEFAULT 0 COMMENT '누적 광고 수익',
  `bankAccountStatus` INT(11) NOT NULL DEFAULT 0 COMMENT '통장사본 인증 단계',
  `bankAccountRejectReason` LONGTEXT DEFAULT NULL COMMENT '통장사본 반려시 반려 이유',
  `vehicleRegStatus` INT(11) NOT NULL DEFAULT 0 COMMENT '자동차등록증 인증 단계',
  `vehicleRegRejectReason` LONGTEXT DEFAULT NULL COMMENT '자동차등록증 반려시 반려 이유',
  `joinId` INT(11) DEFAULT NULL,
  `reservedJoinId` INT(11) DEFAULT NULL,
  `numCampaignsTotal` INT(11) NOT NULL DEFAULT 0 COMMENT '총 참여한 캠페인의 개수',
  `deviceID` LONGTEXT DEFAULT NULL COMMENT '디바이스 ID',
  `recPushSent` INT(11) NOT NULL DEFAULT 0 COMMENT '추천 푸시 전송 여부',
  `lastCampaignFinishedAt` DATETIME DEFAULT NULL COMMENT '마지막으로 캠페인 참여가 종료된 시각',
  `beaconReturnPushSentAt` DATETIME DEFAULT NULL COMMENT '비콘 반납 푸시를 마지막으로 보낸 시각',
  `lastKnownLocation` VARCHAR(100) DEFAULT NULL COMMENT '마지막으로 데이터팀 서버에서 전달해준 위치 정보',
  `lastExposureLevel` INT(11) NOT NULL DEFAULT 2 COMMENT '마지막으로 데이터팀 서버에서 받아온 노출 수준',
  `lastChargedAt` DATETIME DEFAULT NULL COMMENT '마지막으로 데이터팀 서버에 정산을 요청한 시각',
  `lastTipAt` DATETIME DEFAULT NULL COMMENT '마지막으로 데이터팀 서버에 팁을 받아온 시각',
  `enableForceTestingMode` TINYINT(4) NOT NULL DEFAULT 1 COMMENT '강제 테스트 모드를 활성화할 것인가?',
  `driverLicenseApprovedAt` DATETIME DEFAULT NULL COMMENT '사용자 운전면허증 승인 시점',
  `promoPush11Hours` INT(11) NOT NULL DEFAULT 0 COMMENT '독려 푸시 1.1 운전면허증 승인 후 경과 시간',
  `promoPush11Count` INT(11) NOT NULL DEFAULT 0 COMMENT '독려 푸시 1.1 발송 횟수',
  `promoPush12Hours` INT(11) NOT NULL DEFAULT 0 COMMENT '독려 푸시 1.2 광고 종료 후 경과 시간',
  `promoPush12Count` INT(11) NOT NULL DEFAULT 0 COMMENT '독려 푸시 1.2 발송 횟수',
  `deletedAt` DATETIME DEFAULT NULL COMMENT '이동수단 정보 삭제 여부 및 시점',
  `pendingEarning` INT(11) NOT NULL DEFAULT 0 COMMENT '출금 대기 수익',
  `availableEarning` INT(11) NOT NULL DEFAULT 0 COMMENT '출금 가능 수익',
  `rewardedEarning` INT(11) NOT NULL DEFAULT 0 COMMENT '출금 완료 수익',
  `masterId` INT(11) DEFAULT NULL COMMENT '주행자 master Primary Key',
  `leftAt` DATETIME DEFAULT NULL COMMENT '유저 탈퇴 시각',
  `advertiserId` INT(11) DEFAULT NULL COMMENT '광고주 id',
  `invitationCode` VARCHAR(16) DEFAULT NULL COMMENT '유저 고유 초대 코드',
  `danglePoint` FLOAT NOT NULL DEFAULT 0 COMMENT '달고포인트',
  `dangleCash` INT(11) NOT NULL DEFAULT 0 COMMENT '달고캐시',
  `campaignPoint` INT(11) NOT NULL DEFAULT 0 COMMENT '캠페인포인트',
  `campaignCash` INT(11) NOT NULL DEFAULT 0 COMMENT '캠페인캐시',
  `commCarName` VARCHAR(120) DEFAULT NULL COMMENT '차명',
  `resCarModelType` VARCHAR(120) DEFAULT NULL COMMENT '차종',
  `resVehicleIdNo` VARCHAR(120) DEFAULT NULL COMMENT '차대번호',
  `resMotorType` VARCHAR(120) DEFAULT NULL COMMENT '원동기형식',
  `resUseType` VARCHAR(120) DEFAULT NULL COMMENT '용도',
  `vehicleRegNo` VARCHAR(20) DEFAULT NULL COMMENT '차량등록번호',
  `vehicleOwnerName` VARCHAR(30) DEFAULT NULL COMMENT '차량 소유자명',
  `codefResultCode` VARCHAR(10) DEFAULT NULL COMMENT 'codef api 결과코드',
  `isDriving` TINYINT(4) DEFAULT 0 COMMENT '운행중인가여부?',
  `isBooster` TINYINT(4) DEFAULT 0 COMMENT '부스터 시작여부?'
) ENGINE=INNODB DEFAULT CHARSET=utf32;

CREATE TABLE `admin` (
  `admin_Id` INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT '어드민 ID',
  `unread` INT(11) NOT NULL DEFAULT 0 COMMENT '읽지 않은 알림의 갯수',
  `admin_register_datetime` DATETIME NOT NULL COMMENT '생성 시각',
  `admin_lastlogin_datetime` DATETIME NOT NULL COMMENT '마지막 접속 시각',
  `admin_email` VARCHAR(140) DEFAULT NULL COMMENT '로그인용 이메일 주소',
  `admin_password` BINARY(60) DEFAULT NULL COMMENT 'Salted Password',
  `updatedAt` DATETIME NOT NULL COMMENT '업데이트 시각',
  `lastLoginToken` VARCHAR(10) NOT NULL COMMENT '마지막 접속 날짜 토큰 (YYYY-MM-DD)'
) ENGINE=INNODB DEFAULT CHARSET=utf32;

INSERT INTO `admin`
SET admin_register_datetime = NOW(),
admin_lastlogin_datetime = NOW(),
admin_email = 'admin@ashk.co.kr',
admin_password = UNHEX(SHA2('31073107', 256)),
`updatedAt` = NOW(),
`lastLoginToken` = '2021-11-12'