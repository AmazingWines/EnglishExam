package hstc.edu.cn.service;

import hstc.edu.cn.po.Listen;
import hstc.edu.cn.po.ListenDo;

import java.util.List;

/**
 * Created by win8 on 2017/4/28.
 */
public interface ListenDoService {
    public List<ListenDo> getAllListenDoData(ListenDo listenDo);
    public void addListenDo(ListenDo listenDo);
    public ListenDo getListenDoData(ListenDo listenDo);
    public int getFullmark();
    public void updateListenDo(ListenDo listenDo);
}
