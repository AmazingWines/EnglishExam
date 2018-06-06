package hstc.edu.cn.mapper;

import hstc.edu.cn.po.ReadDo;

import java.util.List;

/**
 * Created by win8 on 2017/4/29.
 */
public interface ReadDoMapper {
//    获取阅读诊断列表
    public List<ReadDo> getAllReadDoData(ReadDo readDo);
//    添加阅读诊断
    public void addReadDo(ReadDo readDo);
//    查询获取阅读诊断
    public ReadDo getReadDoData(ReadDo readDo);
//    更新阅读诊断
    public void updateReadDo(ReadDo readDo);
}
