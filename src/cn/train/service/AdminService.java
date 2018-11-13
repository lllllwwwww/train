package cn.train.service;

public interface AdminService {
	/**
	 * 添加管理员
	 * @param adminName 管理员名
	 * @param adminPwd  密码
	 * @return
	 */
   int selectAdmin(String adminName,String adminPwd);
}
