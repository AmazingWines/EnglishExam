package hstc.edu.cn.service;

import hstc.edu.cn.po.Translate_Page;

import java.util.List;
import java.util.Map;

/**
 * Created by win8 on 2017/5/1.
 */
public interface Translate_PageService {
    //    分页获取翻译试卷
    public List<Translate_Page> getAllTranslate_Page(Map<String,Object> map);
    //    获取总条数
    public long getTotalTranslate_Page(Map<String,Object> map);
    //    获取试卷通过试卷类型
    public Translate_Page getTranslate_PageByType(Translate_Page translate_page);
}
