package com.future.my.news.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.future.my.news.dao.INewsDAO;
import com.future.my.news.vo.NewsVO;

@Service
public class NewsService {
	@Autowired
	INewsDAO dao;
	
	public List<NewsVO> getNewsList() {
		List<NewsVO> result = dao.getNewsList();
		
		return result;


	
}
}