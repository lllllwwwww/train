package cn.train.dao;

import org.apache.ibatis.annotations.Param;

public interface AdminMapper {
	/**
	 * ͨ������Ա���������ѯ
	 * @return ��������
	 */
   int selectAdmin(@Param("adminName")String adminName,@Param("adminPwd")String adminPwd);
}
