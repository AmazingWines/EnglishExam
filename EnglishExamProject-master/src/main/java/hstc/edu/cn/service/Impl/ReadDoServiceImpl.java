package hstc.edu.cn.service.Impl;

import hstc.edu.cn.mapper.ReadDoMapper;
import hstc.edu.cn.po.ReadDo;
import hstc.edu.cn.service.ReadDoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by win8 on 2017/4/29.
 */
@Service("readDoService")
public class ReadDoServiceImpl implements ReadDoService {
    @Autowired
    private ReadDoMapper readDoMapper;
    public List<ReadDo> getAllReadDoData(ReadDo readDo) {
        return readDoMapper.getAllReadDoData(readDo);
    }

    public void addReadDo(ReadDo readDo) {
        readDoMapper.addReadDo(readDo);
    }

    public ReadDo getReadDoData(ReadDo readDo) {
        return readDoMapper.getReadDoData(readDo);
    }

    public void updateReadDo(ReadDo readDo) {
        readDoMapper.updateReadDo(readDo);
    }
}
