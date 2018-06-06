package hstc.edu.cn.mapper;

import hstc.edu.cn.po.Listen;
import hstc.edu.cn.po.ListenDo;

import java.util.List;

/**
 * Created by win8 on 2017/4/28.
 */
public interface ListenDoMapper {
//    获取听力诊断列表
    public List<ListenDo> getAllListenDoData(ListenDo listenDo);
//    添加听力诊断
    public void addListenDo(ListenDo listenDo);
//    获取听力诊断
    public ListenDo getListenDoData(ListenDo listenDo);
//    获取满分，用于测试
    public int getFullmark();
//    更新听力诊断
    public void updateListenDo(ListenDo listenDo);
}
