package hstc.edu.cn.service.Impl;

import hstc.edu.cn.mapper.WrittingDoMapper;
import hstc.edu.cn.po.WrittingDo;
import hstc.edu.cn.service.WrittingDoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by win8 on 2017/5/1.
 */
@Service("writtingDoService")
public class WrittingDoServiceImpl implements WrittingDoService {
    @Autowired
    private WrittingDoMapper writtingDoMapper;

    public WrittingDo getWrittingDo(WrittingDo writtingDo) {
        return writtingDoMapper.getWrittingDo(writtingDo);
    }

    public void addWrittingDo(WrittingDo writtingDo) {
        writtingDoMapper.addWrittingDo(writtingDo);
    }

    public void updateWrittingDo(WrittingDo writtingDo) {
        writtingDoMapper.updateWrittingDo(writtingDo);
    }
}
