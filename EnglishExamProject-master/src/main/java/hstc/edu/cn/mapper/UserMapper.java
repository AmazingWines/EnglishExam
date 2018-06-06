package hstc.edu.cn.mapper;

import hstc.edu.cn.po.User;

import java.util.List;

/**
 * Created by win8 on 2017/4/17.
 */
public interface UserMapper {
//    根据用户名获取用户信息
    public User getByUsername(String userName);
//    查询邮箱
    public User getUserEmail(User user);
//    获取用户所有信息
    public User getUserData(User user);
//    注册账户
    public void addUser(User user);
//    更新用户权限
    public void updatePermission(User user);
//    更新用户登录次数和最后登录时间
    public void updateUserLand(User user);
//    更新用户信息
    public void updateUser(User user);
}
