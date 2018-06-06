package hstc.edu.cn.service;

import hstc.edu.cn.po.Read;

import java.util.List;
import java.util.Map;

/**
 * Created by win8 on 2017/4/29.
 */
public interface ReadService {
    public List<Read> getAllReadData(Map<String,Object> map);
    public List<Read> getReadDataById(Read read);
    public long getReadTotal(Map<String,Object> map);
}
