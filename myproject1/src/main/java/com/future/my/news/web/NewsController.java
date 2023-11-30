package com.future.my.news.web;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;



import com.future.my.news.service.NewsService;
import com.future.my.news.vo.NewsVO;

@Controller 
public class NewsController {
	
	@Autowired
	NewsService newsService;
	
	@RequestMapping("/dashboardmypage")
	public String dashboardmypage(Model model, HttpSession session) {
		List<NewsVO> newsList = newsService.getNewsList(); 
		System.out.println("newsList"+newsList);
		model.addAttribute("newsList", newsList);
		return "member/dashboardmypage";
		
	}
	

	
}
