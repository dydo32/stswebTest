package advanced;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

//컨트롤러에 요청이 전달되기 전이나 요청을 수행한 후 실행할 코드를 구현 - 공통으로 적용
//컨트롤러가 실행되는 시간을 측정(ip도 추출)
public class TimeCheckInterceptor extends HandlerInterceptorAdapter{

	private long start;
	private long end;
	
	//컨트롤러 시작전 
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		System.out.println("========== preHandle ========== ");
		System.out.println("접속한 ip: "+request.getRemoteHost());
		start = System.nanoTime();
		return true; // 다음 객체 or 컨트롤러를 요청
	}

	//컨트롤러 실행후
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		end = System.nanoTime();
		System.out.println("========== postHandle ========== ");
		String handlerClass = handler.getClass().getName(); 
		System.out.println(handlerClass + ": 실행시간은=>"+(end-start));
	}

}
