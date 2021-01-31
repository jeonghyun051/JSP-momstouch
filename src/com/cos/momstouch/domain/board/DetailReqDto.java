package com.cos.momstouch.domain.board;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@AllArgsConstructor
@NoArgsConstructor
@Data
public class DetailReqDto {

	private int id;
	private String title;
	private String content;
	private int readCount;
	private Timestamp createDate;
}
