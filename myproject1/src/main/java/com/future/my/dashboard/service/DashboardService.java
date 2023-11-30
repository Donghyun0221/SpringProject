package com.future.my.dashboard.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.future.my.dashboard.dao.IDashboardDAO;
import com.future.my.dashboard.vo.DashboardVO;

@Service
public class DashboardService {
	@Autowired
	IDashboardDAO dao;
	
	public List<DashboardVO> getDashboard(String krname) {
		List<DashboardVO> result = dao.getDashboard(krname);
		return result;
	}
	public List<DashboardVO> getDashboard(String krname, int page, int pageSize) {
	    List<DashboardVO> result = dao.getDashboard(krname, (page - 1) * pageSize, pageSize);
	    return result;
	}

	
}
