package hstc.edu.cn.service.Impl;

import hstc.edu.cn.mapper.WordCorrectMapper;
import hstc.edu.cn.po.WordCorrect;
import hstc.edu.cn.service.WordCorrectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by win8 on 2017/4/30.
 */
@Service("wordCorrectService")
public class WordCorrectServiceImpl implements WordCorrectService {
    @Autowired
    private WordCorrectMapper wordCorrectMapper;
    public List<WordCorrect> getWordCorrect(WordCorrect wordCorrect) {
        return wordCorrectMapper.getWordCorrect(wordCorrect);
    }
}
