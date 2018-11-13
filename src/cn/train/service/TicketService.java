package cn.train.service;

import java.util.List;

import cn.train.entity.Ticket;

public interface TicketService {
	/**
	 * չʾ��Ʊ��Ϣ
	 * @return ��Ʊ����
	 */
    List<Ticket> showTicket(String start,String arrive);
    /**
     * ͨ����Ʊ��Ų��ҳ�Ʊ��Ϣ
     * @param trainNo
     * @return
     */
    Ticket selectByTrainNo(String trainNo);
    /**
     * ������Ʊ��Ϣ
     * @param trainNo
     * @return
     */
    int updateTicketNum(String trainNo);
    /**
     * ������Ʊ��Ϣ2
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
     * ��ʾ���г�Ʊ
     * @return
     */
    List<Ticket> showAllTicket();
    /**
     * ɾ����Ʊ
     * @param trainNo
     * @return
     */
    int delTicket(String trainNo);
    /**
     * ���³�Ʊ
     * @param t
     * @return
     */
    int updateTicket(Ticket t);
    /**
     * ��ӳ�Ʊ
     * @param t
     * @return
     */
    int addTicket(Ticket t);
}
