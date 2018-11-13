package cn.train.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.train.dao.PassengerMapper;
import cn.train.entity.Passenger;
import cn.train.service.PassengerService;

@Service
public class PassengerServiceImpl implements PassengerService {
	@Autowired
	private PassengerMapper passengerMapper;
	@Override
	public int addPassenger(Passenger p) {
		int i=passengerMapper.insertPassenger(p);
		return i;
	}
	@Override
	public int checkedLogin(String username, String password) {
		int i=passengerMapper.selectNameAndPwd(username, password);
		return i;
	}
	@Override
	public Passenger selectByName(String username) {
		Passenger p=passengerMapper.selectName(username);
		return p;
	}
	@Override
	public int updpassenger(String userName, String name, String cardNo, String email, String phone) {
		int i=passengerMapper.updpassenger(userName, name, cardNo, email, phone);
		return i;
	}

}
