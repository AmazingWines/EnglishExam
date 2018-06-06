package hstc.edu.cn.mapper;

import hstc.edu.cn.po.Writting_Page;

import java.util.List;
import java.util.Map;

/**
 * Created by win8 on 2017/5/1.
 */
public interface Writting_PageMapper {
    //    分页获取写作试卷
    public List<Writting_Page> getAllWritting_Page(Map<String,Object> map);
    //    获取总条数
    public long getTotalWritting_Page(Map<String,Object> map);
    //    获取试卷通过试卷类型
    public Writting_Page getWritting_PageByType(Writting_Page writting_page);
}
