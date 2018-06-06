package hstc.edu.cn.service;

import hstc.edu.cn.po.Word_Page;

import java.util.List;
import java.util.Map;

/**
 * Created by win8 on 2017/4/30.
 */
public interface Word_PageService {
    public List<Word_Page> getAllWord_Page(Map<String,Object> map);
    public long getTotalWord_Page(Map<String,Object> map);
    public Word_Page getWord_PageByType(Word_Page word_page);
}
