package Cookie;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CookieManager {
	
	public Cookie[] getAllCookies(HttpServletRequest request) {
	    return request.getCookies();
	}
	
	 public void deleteAllCookies(HttpServletRequest request, HttpServletResponse response) {
	        Cookie[] cookies = request.getCookies();
	        
	        if (cookies != null) {
	            for (Cookie cookie : cookies) {
	                cookie.setMaxAge(0);
	                cookie.setPath("/");
	                response.addCookie(cookie);
	            }
	        }
	    }
	
	public String getCookie(HttpServletRequest request, String Cname) {
		Cookie[] cookies = request.getCookies();
		
		if(cookies != null) {
			for(Cookie cookie : cookies) {
				if(cookie.getName().equals(Cname)) {
					return cookie.getValue();
				}
			}
		}else {
			System.out.println("Cookie가 존재하지 않음.");
		}
		return null;
	}
	
	public void deleteCookie(HttpServletResponse response, String Cname) {
		Cookie cookie = new Cookie(Cname, null);
		
		cookie.setMaxAge(0);
		
		response.addCookie(cookie);
	}
	
	public void setCookie(HttpServletResponse response, String Cname, String Cvalue, int maxAge) {
		Cookie cookie = new Cookie(Cname, Cvalue);
		
		cookie.setMaxAge(maxAge);
		
		response.addCookie(cookie);
	}
	
	public boolean existsCookie(HttpServletRequest request, String Cname) {
	    Cookie[] cookies = request.getCookies();
	    
	    if (cookies != null) {
	        for (Cookie cookie : cookies) {
	            if (cookie.getName().equals(Cname)) {
	                return true;
	            }
	        }
	    }
	    return false;
	}
	
	public void updateCookie(HttpServletResponse response, String Cname, String newValue, int maxAge) {
	    setCookie(response, Cname, newValue, maxAge);
	}
}
