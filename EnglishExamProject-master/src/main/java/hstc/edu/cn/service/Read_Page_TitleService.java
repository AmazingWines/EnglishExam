package hstc.edu.cn.service;

import hstc.edu.cn.po.Read_Page_Title;

import java.util.List;

/**
 * Created by win8 on 2017/4/29.
 */
public interface Read_Page_TitleService {
    public List<Read_Page_Title> getRead_Page_TitleByType(int read_pageId);
}
