package hstc.edu.cn.service.Impl;

import hstc.edu.cn.mapper.WordDoMapper;
import hstc.edu.cn.po.WordDo;
import hstc.edu.cn.service.WordDoService;
import hstc.edu.cn.service.WordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by win8 on 2017/4/30.
 */
@Service("wordDoService")
public class WordDoServiceImpl implements WordDoService {
    @Autowired
    WordDoMapper wordDoMapper;
    public List<WordDo> getAllWordDoData(WordDo wordDo) {
        return wordDoMapper.getAllWordDoData(wordDo);
    }

    public void addWordDo(WordDo wordDo) {
        wordDoMapper.addWordDo(wordDo);
    }

    public WordDo getWordDoData(WordDo wordDo) {
        return wordDoMapper.getWordDoData(wordDo);
    }

    public void updateWordDo(WordDo wordDo) {
        wordDoMapper.updateWordDo(wordDo);
    }
}
