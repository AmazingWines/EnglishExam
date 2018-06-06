package hstc.edu.cn.service.Impl;

import hstc.edu.cn.mapper.ReadMapper;
import hstc.edu.cn.po.Read;
import hstc.edu.cn.service.ReadService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * Created by win8 on 2017/4/29.
 */
@Service("readService")
public class ReadServiceImpl implements ReadService {
    @Autowired
    private ReadMapper readMapper;
    public List<Read> getAllReadData(Map<String, Object> map) {
        return readMapper.getAllReadData(map);
    }

    public List<Read> getReadDataById(Read read) {
        return readMapper.getReadDataById(read);
    }

    public long getReadTotal(Map<String, Object> map) {
        return readMapper.getReadTotal(map);
    }
}
