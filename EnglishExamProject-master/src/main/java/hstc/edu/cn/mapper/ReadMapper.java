package hstc.edu.cn.mapper;

import hstc.edu.cn.po.Read;

import java.util.List;
import java.util.Map;

/**
 * Created by win8 on 2017/4/29.
 */
public interface ReadMapper {
//    获取阅读试题列表
    public List<Read> getAllReadData(Map<String,Object> map);
//    通过id 获取 阅读试题列表
    public List<Read> getReadDataById(Read read);
//    获取总条数
    public long getReadTotal(Map<String,Object> map);

}
