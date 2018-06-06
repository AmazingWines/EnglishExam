package hstc.edu.cn.service;

import hstc.edu.cn.po.Listen;
import hstc.edu.cn.po.Listen_page;

import java.util.List;
import java.util.Map;

/**
 * Created by win8 on 2017/4/25.
 */
public interface Listen_PageService {
    public List<Listen_page> listListen_Page(Map<String,Object> map);
    public long getTotalListen_Page(Map<String,Object> map);
    public Listen_page findListenPageById(int listen_pageId);
    public void addListenPage(Listen_page listen_page);
}
