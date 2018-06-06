package hstc.edu.cn.service.Impl;

import hstc.edu.cn.mapper.Read_PageMapper;
import hstc.edu.cn.po.Read_Page;
import hstc.edu.cn.service.Read_PageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * Created by win8 on 2017/4/29.
 */
@Service("read_PageService")
public class Read_PageServiceImpl implements Read_PageService {
    @Autowired
    private Read_PageMapper read_pageMapper;
    public List<Read_Page> getAllRead_Page(Map<String, Object> map) {
        return read_pageMapper.getAllRead_Page(map);
    }

    public long getTotalRead_Page(Map<String, Object> map) {
        return read_pageMapper.getTotalRead_Page(map);
    }

    public Read_Page getRead_PageByType(Read_Page read_page) {
        return read_pageMapper.getRead_PageByType(read_page);
    }
}
