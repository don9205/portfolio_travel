package kr.lee.travel.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class UnauthInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, 
			HttpServletResponse response, 
			Object handler)
					throws Exception {
		HttpSession session = request.getSession();
		Object user = session.getAttribute("user");
		// AccountVo user = (AccountVo)session.getAttribute("user");
		// 있는지 없는지 여부만 확인하면 되기때문에 AccountVo로 형변환 할 필요가없다
		if(user != null) {
			response.sendRedirect(request.getContextPath()+"/bbs/travel_board");
			return false;
		}
		return true;
	}
}
