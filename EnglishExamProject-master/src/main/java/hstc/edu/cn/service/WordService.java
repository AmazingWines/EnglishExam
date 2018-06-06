package hstc.edu.cn.service;

import hstc.edu.cn.po.Word;

import java.util.List;
import java.util.Map;

/**
 * Created by win8 on 2017/4/30.
 */
public interface WordService {
    public List<Word> getAllWordData(Map<String,Object> map);
    public List<Word> getWordDataById(Word word);
    public long getWordTotal(Map<String,Object> map);
}
