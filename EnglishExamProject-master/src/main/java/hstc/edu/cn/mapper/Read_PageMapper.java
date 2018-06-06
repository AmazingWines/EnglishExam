package hstc.edu.cn.mapper;

import hstc.edu.cn.po.Read_Page;

import java.util.List;
import java.util.Map;

/**
 * Created by win8 on 2017/4/29.
 */
public interface Read_PageMapper {
//    获取阅读试卷列表
    public List<Read_Page> getAllRead_Page(Map<String,Object> map);
//    获取总条数
    public long getTotalRead_Page(Map<String,Object> map);
//    通过id 获取 阅读试卷
    public Read_Page getRead_PageByType(Read_Page read_page);

}
