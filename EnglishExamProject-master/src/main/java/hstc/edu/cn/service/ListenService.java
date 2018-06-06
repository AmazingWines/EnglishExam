package hstc.edu.cn.service;

import hstc.edu.cn.po.Listen;

import java.util.List;
import java.util.Map;

/**
 * Created by win8 on 2017/4/25.
 */
public interface ListenService {
    //    获取所有Listen 数据
    public List<Listen> getAllListenData(Map<String,Object> map);
    //    获取Listen 通过id
    public List<Listen> getListenDataById(Listen listen);
    //    插入Listen
    public void addListen(Listen listen);
    //    更新Listen
    public void updateListen(Listen listen);

    public long getListenTotal(Map<String,Object> map);
}
