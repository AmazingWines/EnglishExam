package hstc.edu.cn.service.Impl;

import hstc.edu.cn.mapper.Listen_PageMapper;
import hstc.edu.cn.po.Listen;
import hstc.edu.cn.po.Listen_page;
import hstc.edu.cn.service.ListenService;
import hstc.edu.cn.service.Listen_PageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * Created by win8 on 2017/4/25.
 */
@Service("listen_pageService")
public class Listen_PageServiceImpl implements Listen_PageService {
    @Autowired
    Listen_PageMapper listen_pageMapper;
    public List<Listen_page> listListen_Page(Map<String, Object> map) {
        return listen_pageMapper.listListen_Page(map);
    }

    public long getTotalListen_Page(Map<String, Object> map) {
        return listen_pageMapper.getTotalListen_Page(map);
    }

    public Listen_page findListenPageById(int listen_pageId) {
        return listen_pageMapper.findListenPageById(listen_pageId);
    }

    public void addListenPage(Listen_page listen_page) {
        listen_pageMapper.addListenPage(listen_page);
    }
}
