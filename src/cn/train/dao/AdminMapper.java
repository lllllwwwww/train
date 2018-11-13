package cn.train.dao;

import org.apache.ibatis.annotations.Param;

public interface AdminMapper {
	/**
	 * 通过管理员名和密码查询
	 * @return 数据条数
	 */
   int selectAdmin(@Param("adminName")String adminName,@Param("adminPwd")String adminPwd);
}
