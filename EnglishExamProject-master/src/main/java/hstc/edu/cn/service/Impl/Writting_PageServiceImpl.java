package hstc.edu.cn.service.Impl;

import hstc.edu.cn.mapper.Writting_PageMapper;
import hstc.edu.cn.po.Writting_Page;
import hstc.edu.cn.service.Writting_PageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * Created by win8 on 2017/5/1.
 */
@Service("writting_PageService")
public class Writting_PageServiceImpl implements Writting_PageService {
    @Autowired
    Writting_PageMapper writting_pageMapper;
    public List<Writting_Page> getAllWritting_Page(Map<String, Object> map) {
        return writting_pageMapper.getAllWritting_Page(map);
    }

    public long getTotalWritting_Page(Map<String, Object> map) {
        return writting_pageMapper.getTotalWritting_Page(map);
    }

    public Writting_Page getWritting_PageByType(Writting_Page writting_page) {
        return writting_pageMapper.getWritting_PageByType(writting_page);
    }
}
