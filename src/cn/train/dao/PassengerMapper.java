package cn.train.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import cn.train.entity.Passenger;

@Repository
public interface PassengerMapper {
    /**
     * 插入乘客信息
     */
	int insertPassenger(Passenger p);
	/**
	 * 通过用户名和密码来查询
	 * @param username
	 * @param password
	 * @return
	 */
	int selectNameAndPwd(@Param("username")String username,@Param("password")String password);
	/**
	 * 通过用户名来查询
	 * @param username
	 * @return
	 */
	Passenger selectName(@Param("username")String username);
	/**
	 * 更新用户信息
	 * @param userName 用户名
	 * @param name  姓名
	 * @param cardNo 卡号
	 * @param email 邮箱
	 * @param phone 电话
	 * @return
	 */
	int updpassenger(@Param("userName")String userName,@Param("name")String name,@Param("cardNo")String cardNo,@Param("email")String email,@Param("phone")String phone);
}
