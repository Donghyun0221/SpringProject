package com.future.my.news.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.future.my.news.vo.NewsVO;

@Mapper
public interface INewsDAO {
	public List<NewsVO> getNewsList();
}
