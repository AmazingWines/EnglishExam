package hstc.edu.cn.service.Impl;

import hstc.edu.cn.mapper.ListenMapper;
import hstc.edu.cn.po.Listen;
import hstc.edu.cn.service.ListenService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * Created by win8 on 2017/4/25.
 */
@Service("listenService")
public class ListenServiceImpl implements ListenService {
    @Autowired
    ListenMapper listenMapper;
    public List<Listen> getAllListenData(Map<String,Object> map) {
        return listenMapper.getAllListenData(map);
    }

    public List<Listen> getListenDataById(Listen listen) {
        return listenMapper.getListenDataById(listen);
    }

    public void addListen(Listen listen) {
        listenMapper.addListen(listen);
    }

    public void updateListen(Listen listen) {
        listenMapper.updateListen(listen);
    }

    public long getListenTotal(Map<String, Object> map) {
        return listenMapper.getListenTotal(map);
    }
}
