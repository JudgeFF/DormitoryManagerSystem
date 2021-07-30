package com.itheima.service;

import com.itheima.po.Admin;
import com.itheima.po.PageInfo;


import java.util.List;

/**
 * 用户Service层接口
 */
public interface AdminService {
    // 通过账号和密码查询用户
    public Admin findAdmin(Admin admin);

    //分页查询
    public PageInfo<Admin> findPageInfo(String a_username, String a_describe, Integer a_id, Integer pageIndex, Integer pageSize);

	//添加管理员信息
    public int addAdmin(Admin admin);

	//删除管理员信息
    public int deleteAdmin(Integer a_id);

	//修改管理员信息
    public int updateAdmin(Admin admin);

    public Admin findAdminById(Integer a_id);

    public List<Admin> getAll();
}
