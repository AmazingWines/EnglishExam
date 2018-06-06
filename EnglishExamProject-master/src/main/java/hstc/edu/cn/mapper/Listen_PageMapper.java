package hstc.edu.cn.mapper;

import hstc.edu.cn.po.Listen;
import hstc.edu.cn.po.Listen_page;

import java.util.List;
import java.util.Map;

/**
 * Created by win8 on 2017/4/25.
 */
public interface Listen_PageMapper {
//    获取听力试卷列表
    public List<Listen_page> listListen_Page(Map<String,Object> map);
//    获取总条数
    public long getTotalListen_Page(Map<String,Object> map);
//    查询试卷通过试卷id
    public Listen_page findListenPageById(int listen_pageId);
//    添加试卷，这个用于测试
    public void addListenPage(Listen_page listen_page);
}
