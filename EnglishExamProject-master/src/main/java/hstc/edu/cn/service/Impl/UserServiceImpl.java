package hstc.edu.cn.service.Impl;

import hstc.edu.cn.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import hstc.edu.cn.po.User;
import hstc.edu.cn.service.UserService;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by win8 on 2017/4/17.
 */
@Service("userService")
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userMapper;

    public User getByUsername(String userName) {
        return userMapper.getByUsername(userName);
    }

    public User getUserEmail(User user) {
        return userMapper.getUserEmail(user);
    }

    public User getUserData(User user) {
        return userMapper.getUserData(user);
    }

    public void addUser(User user) {
        userMapper.addUser(user);
    }

    public void updatePermission(User user) {
        userMapper.updatePermission(user);
    }

    public void updateUserLand(User user) {
        userMapper.updateUserLand(user);
    }

    public void updateUser(User user) {
        userMapper.updateUser(user);
    }
}
