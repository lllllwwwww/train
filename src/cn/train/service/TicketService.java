package cn.train.service;

import java.util.List;

import cn.train.entity.Ticket;

public interface TicketService {
	/**
	 * 展示车票信息
	 * @return 车票集合
	 */
    List<Ticket> showTicket(String start,String arrive);
    /**
     * 通过车票编号查找车票信息
     * @param trainNo
     * @return
     */
    Ticket selectByTrainNo(String trainNo);
    /**
     * 更新余票信息
     * @param trainNo
     * @return
     */
    int updateTicketNum(String trainNo);
    /**
     * 更新余票信息2
     * @param trainNo
     * @return
     */
    int updateTicketNum2(String trainNo);
    /**
     * 
     * @param trainNo
     * @return
     */
    Ticket selectTicketByTrainNo(String trainNo);
    /**
     * 显示所有车票
     * @return
     */
    List<Ticket> showAllTicket();
    /**
     * 删除车票
     * @param trainNo
     * @return
     */
    int delTicket(String trainNo);
    /**
     * 更新车票
     * @param t
     * @return
     */
    int updateTicket(Ticket t);
    /**
     * 添加车票
     * @param t
     * @return
     */
    int addTicket(Ticket t);
}
