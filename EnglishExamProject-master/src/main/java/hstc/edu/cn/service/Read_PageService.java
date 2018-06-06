package hstc.edu.cn.service;

import hstc.edu.cn.po.Read_Page;

import java.util.List;
import java.util.Map;

/**
 * Created by win8 on 2017/4/29.
 */
public interface Read_PageService {
    public List<Read_Page> getAllRead_Page(Map<String,Object> map);
    public long getTotalRead_Page(Map<String,Object> map);
    public Read_Page getRead_PageByType(Read_Page read_page);
}
