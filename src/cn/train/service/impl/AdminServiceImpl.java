package cn.train.service.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.train.dao.AdminMapper;
import cn.train.service.AdminService;
@Service
public class AdminServiceImpl implements AdminService {
	@Autowired
    private AdminMapper adminMapper;
	@Override
	public int selectAdmin(String adminName, String adminPwd) {
		int i=adminMapper.selectAdmin(adminName, adminPwd);
		return i;
	}

	
}
