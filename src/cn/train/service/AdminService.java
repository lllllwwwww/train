package cn.train.service;

public interface AdminService {
	/**
	 * ��ӹ���Ա
	 * @param adminName ����Ա��
	 * @param adminPwd  ����
	 * @return
	 */
   int selectAdmin(String adminName,String adminPwd);
}
