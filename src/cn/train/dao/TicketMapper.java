package cn.train.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.train.entity.Ticket;

public interface TicketMapper {
	/**
	 * ��ѯ��Ʊ��Ϣ
	 * @return list
	 */
   List<Ticket> selectTicket(@Param("start")String start,@Param("arrive")String arrive);
   /**
    * ͨ����Ʊ��Ų�ѯ��Ʊ��Ϣ
    * @param trainNo
    * @return
    */
   Ticket selectTrainNo(@Param("trainNo")String trainNo);
   /**
    * ������Ӧ��Ʊ����Ʊ��Ϣ
    * @param trainNo
    * @return
    */
   int updateTicketNum(String trainNo);
   /**
    * 
    * @param trainNo
    * @return
    */
   int updateTicketNum2(String trainNo);
   /**
    * ͨ���г�������ѯ�г���Ϣ
    * @param trainNo
    * @return
    */
   Ticket selectTicketByTrainNo(String trainNo);
   /**
    * ��ѯȫ����Ʊ��Ϣ
    * @return
    */
   List<Ticket> selectAllTicket();
   /**
    * ���ݳ���ɾ����Ϣ
    * @return
    */
   int delTicket(String trainNo);
   /**
    * ���ݳ��θ�����Ϣ
    * @param trainNo ����
    * @return
    */
   int updataTicket(Ticket t);
   /**
    * ���복Ʊ
    * @param t ��Ʊʵ��
    * @return
    */
   int insertTicket(Ticket t);
}
