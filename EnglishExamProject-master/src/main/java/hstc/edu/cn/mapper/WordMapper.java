package hstc.edu.cn.mapper;

import hstc.edu.cn.po.Word;

import java.util.List;
import java.util.Map;

/**
 * Created by win8 on 2017/4/30.
 */
public interface WordMapper {
//    获取试题列表
    public List<Word> getAllWordData(Map<String,Object> map);
//    获取单个
    public List<Word> getWordDataById(Word word);
//    获取总条数
    public long getWordTotal(Map<String,Object> map);
}
