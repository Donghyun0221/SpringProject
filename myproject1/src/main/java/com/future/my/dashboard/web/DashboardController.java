package com.future.my.dashboard.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.future.my.dashboard.service.DashboardService;
import com.future.my.dashboard.vo.DashboardVO;

@RestController 
public class DashboardController {
	
	@Autowired
	DashboardService dashboardService;
	
    @RequestMapping("/getData")
    public List<DashboardVO> getDashboard(Model model, @RequestParam("krname") String krname) {
        List<DashboardVO> dashboardList = dashboardService.getDashboard(krname);
        return dashboardList; // 적절한 뷰 이름으로 변경
    }
	
}
