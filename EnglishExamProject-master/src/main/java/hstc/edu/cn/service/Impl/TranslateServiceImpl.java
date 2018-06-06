package hstc.edu.cn.service.Impl;

import hstc.edu.cn.mapper.TranslateMapper;
import hstc.edu.cn.po.Translate;
import hstc.edu.cn.service.TranslateService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by win8 on 2017/5/1.
 */
@Service("translateService")
public class TranslateServiceImpl implements TranslateService {
    @Autowired
    TranslateMapper translateMapper;
    public Translate getTranslateByPageId(Translate translate) {
        return translateMapper.getTranslateByPageId(translate);
    }
}
