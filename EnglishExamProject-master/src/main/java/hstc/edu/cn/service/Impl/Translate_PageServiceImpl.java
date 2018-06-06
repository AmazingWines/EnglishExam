package hstc.edu.cn.service.Impl;

import hstc.edu.cn.mapper.Translate_PageMapper;
import hstc.edu.cn.po.Translate_Page;
import hstc.edu.cn.service.Translate_PageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * Created by win8 on 2017/5/1.
 */
@Service("translate_PageService")
public class Translate_PageServiceImpl implements Translate_PageService {
    @Autowired
    private Translate_PageMapper translate_pageMapper;
    public List<Translate_Page> getAllTranslate_Page(Map<String, Object> map) {
        return translate_pageMapper.getAllTranslate_Page(map);
    }

    public long getTotalTranslate_Page(Map<String, Object> map) {
        return translate_pageMapper.getTotalTranslate_Page(map);
    }

    public Translate_Page getTranslate_PageByType(Translate_Page translate_page) {
        return translate_pageMapper.getTranslate_PageByType(translate_page);
    }
}
