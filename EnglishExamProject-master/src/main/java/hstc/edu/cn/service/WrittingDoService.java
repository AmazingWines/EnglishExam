package hstc.edu.cn.service;

import hstc.edu.cn.po.WrittingDo;

/**
 * Created by win8 on 2017/5/1.
 */
public interface WrittingDoService {
    //    获取用户写作答题记录
    public WrittingDo getWrittingDo(WrittingDo writtingDo);
    //    插入用户写作答题记录
    public void addWrittingDo(WrittingDo writtingDo);
    //    更新用户写作答题记录
    public void updateWrittingDo(WrittingDo writtingDo);
}
