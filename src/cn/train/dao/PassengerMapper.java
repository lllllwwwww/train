package cn.train.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import cn.train.entity.Passenger;

@Repository
public interface PassengerMapper {
    /**
     * ����˿���Ϣ
     */
	int insertPassenger(Passenger p);
	/**
	 * ͨ���û�������������ѯ
	 * @param username
	 * @param password
	 * @return
	 */
	int selectNameAndPwd(@Param("username")String username,@Param("password")String password);
	/**
	 * ͨ���û�������ѯ
	 * @param username
	 * @return
	 */
	Passenger selectName(@Param("username")String username);
	/**
	 * �����û���Ϣ
	 * @param userName �û���
	 * @param name  ����
	 * @param cardNo ����
	 * @param email ����
	 * @param phone �绰
	 * @return
	 */
	int updpassenger(@Param("userName")String userName,@Param("name")String name,@Param("cardNo")String cardNo,@Param("email")String email,@Param("phone")String phone);
}
