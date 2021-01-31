package com.cos.momstouch.domain.user;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@NoArgsConstructor
@AllArgsConstructor
@Data
public class JoinReqDto {

	private int id;
	private String username;
	private String password;
	private String email;
	private String address;

}
