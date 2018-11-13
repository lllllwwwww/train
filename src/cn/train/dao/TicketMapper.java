package cn.train.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.train.entity.Ticket;

public interface TicketMapper {
	/**
	 * 查询火车票信息
	 * @return list
	 */
   List<Ticket> selectTicket(@Param("start")String start,@Param("arrive")String arrive);
   /**
    * 通过车票编号查询车票信息
    * @param trainNo
    * @return
    */
   Ticket selectTrainNo(@Param("trainNo")String trainNo);
   /**
    * 更新相应车票的余票信息
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
    * 通过列车号来查询列车信息
    * @param trainNo
    * @return
    */
   Ticket selectTicketByTrainNo(String trainNo);
   /**
    * 查询全部车票信息
    * @return
    */
   List<Ticket> selectAllTicket();
   /**
    * 根据车次删除信息
    * @return
    */
   int delTicket(String trainNo);
   /**
    * 根据车次更新信息
    * @param trainNo 车次
    * @return
    */
   int updataTicket(Ticket t);
   /**
    * 插入车票
    * @param t 车票实体
    * @return
    */
   int insertTicket(Ticket t);
}
