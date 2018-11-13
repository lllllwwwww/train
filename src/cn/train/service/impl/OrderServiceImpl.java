package cn.train.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.train.dao.OrderMapper;
import cn.train.entity.ShowOrder;
import cn.train.service.OrderService;
@Service
public class OrderServiceImpl implements OrderService {
	@Autowired
    private OrderMapper orderMapper;
	@Override
	public int addOrder(String userName, String trainNo, String startDate) {
		int i=orderMapper.insertOrder(userName, trainNo, startDate);
		return i;
	}
	@Override
	public List<ShowOrder> showOrder(String username) {
		List<ShowOrder> list=orderMapper.selectAllOrder(username);
		return list;
	}
	@Override
	public int delOrder(String userName,String trainNo,String startDate) {
		int i=orderMapper.deleteOrder(userName, trainNo, startDate);
		return i;
	}

}
