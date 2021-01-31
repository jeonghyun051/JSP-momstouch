package com.cos.momstouch.menuboard;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;


@AllArgsConstructor
@NoArgsConstructor
@Data
@Builder
public class MenuBoard {

	private int id;
	private String menuname;
	private int kcal;
	private int mg;
	private int g;
	private String menuimg;
	private String menugroup;
	
}
