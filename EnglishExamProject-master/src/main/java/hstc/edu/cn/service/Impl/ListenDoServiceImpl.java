package hstc.edu.cn.service.Impl;

import hstc.edu.cn.mapper.ListenDoMapper;
import hstc.edu.cn.po.ListenDo;
import hstc.edu.cn.service.ListenDoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by win8 on 2017/4/28.
 */
@Service("listenDoService")
public class ListenDoServiceImpl implements ListenDoService {
    @Autowired
    ListenDoMapper listenDoMapper;

    public List<ListenDo> getAllListenDoData(ListenDo listenDo) {
        return listenDoMapper.getAllListenDoData(listenDo);
    }

    public void addListenDo(ListenDo listenDo) {
        listenDoMapper.addListenDo(listenDo);
    }

    public ListenDo getListenDoData(ListenDo listenDo) {
        return listenDoMapper.getListenDoData(listenDo);
    }


    public int getFullmark() {
        return listenDoMapper.getFullmark();
    }

    public void updateListenDo(ListenDo listenDo) {
        listenDoMapper.updateListenDo(listenDo);
    }
}
