package hstc.edu.cn.service.Impl;

import hstc.edu.cn.mapper.TranslateDoMapper;
import hstc.edu.cn.po.TranslateDo;
import hstc.edu.cn.service.TranslateDoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by win8 on 2017/5/1.
 */
@Service("translateDoService")
public class TranslateDoServiceImpl implements TranslateDoService {
    @Autowired
    TranslateDoMapper translateDoMapper;
    public TranslateDo getTranslateDo(TranslateDo translateDo) {
        return translateDoMapper.getTranslateDo(translateDo);
    }

    public void addTranslateDo(TranslateDo translateDo) {
        translateDoMapper.addTranslateDo(translateDo);
    }

    public void updateTranslateDo(TranslateDo translateDo) {
        translateDoMapper.updateTranslateDo(translateDo);
    }
}
