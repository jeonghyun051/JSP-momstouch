package com.cos.momstouch.config;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CharConfig implements Filter {

	@Override
	public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain)
			throws IOException, ServletException {
		
		HttpServletRequest request = (HttpServletRequest) req;
		HttpServletResponse response = (HttpServletResponse) resp;
		
		request.setCharacterEncoding("utf-8");

		String fileUri = request.getRequestURI();
		
		
		if (fileUri.contains(".css")) {
			resp.setContentType("text/css; charset=utf-8");
		}
		else if (fileUri.contains(".js")) {
			resp.setContentType("text/js; charset=utf-8");
		}
		else if (fileUri.contains(".png")) {
			resp.setContentType("image.png");
		}
		else if (fileUri.contains(".jpg")) {
			resp.setContentType("image/jpeg");
		}
		else {
			resp.setContentType("text/html; charset=utf-8");
		}
				
		chain.doFilter(request, response);	
	}
}
