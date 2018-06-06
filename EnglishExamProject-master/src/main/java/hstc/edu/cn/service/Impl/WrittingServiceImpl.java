package hstc.edu.cn.service.Impl;

import hstc.edu.cn.mapper.WrittingMapper;
import hstc.edu.cn.po.Writting;
import hstc.edu.cn.service.WrittingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by win8 on 2017/5/1.
 */
@Service("writtingService")
public class WrittingServiceImpl implements WrittingService {
    @Autowired
    private WrittingMapper writtingMapper;
    public Writting getWrittingByPageId(Writting writting) {
        return writtingMapper.getWrittingByPageId(writting);
    }
}
