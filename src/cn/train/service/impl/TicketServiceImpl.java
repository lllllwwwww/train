package cn.train.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.train.dao.TicketMapper;
import cn.train.entity.Ticket;
import cn.train.service.TicketService;
@Service
public class TicketServiceImpl implements TicketService {
    @Autowired
    private TicketMapper ticketMapper;
	@Override
	public List<Ticket> showTicket(String start,String arrive) {
		List<Ticket> list=ticketMapper.selectTicket(start, arrive);
		return list;
	}
	@Override
	public Ticket selectByTrainNo(String trainNo) {
		Ticket t=ticketMapper.selectTrainNo(trainNo);
		return t;
	}
	@Override
	public int updateTicketNum(String trainNo) {
		int i=ticketMapper.updateTicketNum(trainNo);
		return i;
	}
	@Override
	public int updateTicketNum2(String trainNo) {
		int i=ticketMapper.updateTicketNum2(trainNo);
		return i;
	}
	@Override
	public Ticket selectTicketByTrainNo(String trainNo) {
		Ticket t=ticketMapper.selectTicketByTrainNo(trainNo);
		return t;
	}
	@Override
	public List<Ticket> showAllTicket() {
		List<Ticket> list=ticketMapper.selectAllTicket();
		return list;
	}
	@Override
	public int delTicket(String trainNo) {
		int i=ticketMapper.delTicket(trainNo);
		return i;
	}
	@Override
	public int updateTicket(Ticket t) {
		int i=ticketMapper.updataTicket(t);
		return i;
	}
	@Override
	public int addTicket(Ticket t) {
		int i=ticketMapper.insertTicket(t);
		return i;
	}

}
