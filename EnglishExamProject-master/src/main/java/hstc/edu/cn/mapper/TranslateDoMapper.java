package hstc.edu.cn.mapper;

import hstc.edu.cn.po.TranslateDo;

/**
 * Created by win8 on 2017/5/1.
 */
public interface TranslateDoMapper {
//    获取用户翻译答题记录
    public TranslateDo getTranslateDo(TranslateDo translateDo);
//    插入用户翻译答题记录
    public void addTranslateDo(TranslateDo translateDo);
//    更新用户翻译答题记录
    public void updateTranslateDo(TranslateDo translateDo);
}
