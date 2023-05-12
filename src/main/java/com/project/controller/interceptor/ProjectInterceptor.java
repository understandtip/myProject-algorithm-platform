package com.project.controller.interceptor;

import com.project.controller.UserController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@Component
//定义拦截器类，实现HandlerInterceptor接口
//注意当前类必须受Spring容器控制
public class ProjectInterceptor implements HandlerInterceptor {
    @Autowired
    private UserController usercontroller;
    @Override
    //原始方法调用前执行的内容
    //返回值类型可以拦截控制的执行，true放行，false终止
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        String contentType = request.getHeader("Content-Type");
        HandlerMethod hm = (HandlerMethod)handler;
        System.out.println("preHandle..."+contentType);

        //判断访问资源路径是否和登录注册相关
        String[] urls = {"/login.jsp","/imgs/","/css/","/loginServlet","/register.jsp"};
        // 获取当前访问的资源路径
        String url = request.getRequestURL().toString();
        //循环判断
        for (String u : urls) {
            if(url.contains(u)){
                //找到了
                //放行
                usercontroller.login(request, response);
                //break;
                break;
            }
        }


        //1. 判断session中是否有user
        HttpSession session = request.getSession();
        Object user = session.getAttribute("user");

        //2. 判断user是否为null
        if(user != null){
            // 登录过了
            //放行
            usercontroller.login(request, response);
        }else {
            // 没有登陆，存储提示信息，跳转到登录页面

            request.setAttribute("login_msg","您尚未登陆！");
            request.getRequestDispatcher("/login.jsp").forward(request,response);
        }

        return true;
    }

    @Override
    //原始方法调用后执行的内容
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
        System.out.println("postHandle...");
    }

    @Override
    //原始方法调用完成后执行的内容
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {
        System.out.println("afterCompletion...");
    }
}
