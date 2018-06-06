package hstc.edu.cn.service.Impl;

import hstc.edu.cn.mapper.Read_Page_TitleMapper;
import hstc.edu.cn.po.Read_Page_Title;
import hstc.edu.cn.service.Read_PageService;
import hstc.edu.cn.service.Read_Page_TitleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by win8 on 2017/4/29.
 */
@Service("read_Page_TitleService")
public class Read_Page_TitleServiceImpl implements Read_Page_TitleService {
    @Autowired
    private Read_Page_TitleMapper read_page_titleMapper;
    public List<Read_Page_Title> getRead_Page_TitleByType(int read_pageId) {
        return read_page_titleMapper.getRead_Page_TitleByType(read_pageId);
    }
}
