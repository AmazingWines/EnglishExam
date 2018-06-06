package hstc.edu.cn.service.Impl;

import hstc.edu.cn.mapper.WordMapper;
import hstc.edu.cn.po.Word;
import hstc.edu.cn.service.WordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * Created by win8 on 2017/4/30.
 */
@Service("wordService")
public class WordServiceImpl implements WordService {
    @Autowired
    private WordMapper wordMapper;
    public List<Word> getAllWordData(Map<String, Object> map) {
        return wordMapper.getAllWordData(map);
    }

    public List<Word> getWordDataById(Word word) {
        return wordMapper.getWordDataById(word);
    }

    public long getWordTotal(Map<String, Object> map) {
        return wordMapper.getWordTotal(map);
    }
}
