package cn.train.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.train.entity.ShowOrder;

public interface OrderMapper {
	/**
	 * 插入订单信息
	 * @param userName
	 * @param trainNo
	 * @param startDate
	 * @return
	 */
   int insertOrder(@Param("userName")String userName,@Param("trainNo")String trainNo,@Param("startDate")String startDate);
   /**
    * 根据用户名查询订单信息
    * @param username
    * @return
    */
   List<ShowOrder> selectAllOrder(@Param("username")String username);
   /**
    * 根据订单id来删除订单
    * @param orderId
    * @return
    */
   int deleteOrder(@Param("userName")String userName,@Param("trainNo")String trainNo,@Param("startDate")String startDate);
}
