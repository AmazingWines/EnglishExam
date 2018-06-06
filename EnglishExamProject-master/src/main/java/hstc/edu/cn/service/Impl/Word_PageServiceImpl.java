package hstc.edu.cn.service.Impl;

import hstc.edu.cn.mapper.Word_PageMapper;
import hstc.edu.cn.po.Word_Page;
import hstc.edu.cn.service.Word_PageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * Created by win8 on 2017/4/30.
 */
@Service("word_PageService")
public class Word_PageServiceImpl implements Word_PageService {
    @Autowired
    private Word_PageMapper word_pageMapper;
    public List<Word_Page> getAllWord_Page(Map<String, Object> map) {
        return word_pageMapper.getAllWord_Page(map);
    }

    public long getTotalWord_Page(Map<String, Object> map) {
        return word_pageMapper.getTotalWord_Page(map);
    }

    public Word_Page getWord_PageByType(Word_Page word_page) {
        return word_pageMapper.getWord_PageByType(word_page);
    }
}
