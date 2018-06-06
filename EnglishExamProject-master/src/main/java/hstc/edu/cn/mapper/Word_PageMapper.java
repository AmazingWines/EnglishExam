package hstc.edu.cn.mapper;

import hstc.edu.cn.po.Word_Page;

import java.util.List;
import java.util.Map;

/**
 * Created by win8 on 2017/4/30.
 */
public interface Word_PageMapper {
//    获取填词试卷列表
    public List<Word_Page> getAllWord_Page(Map<String,Object> map);
//    获取总条数
    public long getTotalWord_Page(Map<String,Object> map);
//    获取试卷通过试卷类型
    public Word_Page getWord_PageByType(Word_Page word_page);
}
