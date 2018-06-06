package hstc.edu.cn.service;

import hstc.edu.cn.po.ReadDo;

import java.util.List;

/**
 * Created by win8 on 2017/4/29.
 */
public interface ReadDoService {
    public List<ReadDo> getAllReadDoData(ReadDo readDo);
    public void addReadDo(ReadDo readDo);
    public ReadDo getReadDoData(ReadDo readDo);
    public void updateReadDo(ReadDo readDo);
}
