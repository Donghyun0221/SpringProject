package com.future.my.dashboard.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.future.my.dashboard.vo.DashboardVO;

@Mapper
public interface IDashboardDAO {
	 public List<DashboardVO> getDashboard(String krname);
	// IDashboardDAO.java
	 public List<DashboardVO> getDashboard(String krname, int start, int pageSize);
}
