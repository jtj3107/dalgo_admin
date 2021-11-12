package com.jtj.exam.demo.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Admin {
	private int admin_Id;
	private int unread;
	private String admin_register_datetime;
	private String admin_lastlogin_datetime;
	private String admin_email;
	private String admin_password;
	private String updatedAt;
	private String lastLoginToken;
}

