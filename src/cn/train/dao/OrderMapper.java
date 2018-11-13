package cn.train.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.train.entity.ShowOrder;

public interface OrderMapper {
	/**
	 * ���붩����Ϣ
	 * @param userName
	 * @param trainNo
	 * @param startDate
	 * @return
	 */
   int insertOrder(@Param("userName")String userName,@Param("trainNo")String trainNo,@Param("startDate")String startDate);
   /**
    * �����û�����ѯ������Ϣ
    * @param username
    * @return
    */
   List<ShowOrder> selectAllOrder(@Param("username")String username);
   /**
    * ���ݶ���id��ɾ������
    * @param orderId
    * @return
    */
   int deleteOrder(@Param("userName")String userName,@Param("trainNo")String trainNo,@Param("startDate")String startDate);
}
