package hstc.edu.cn.service;

import hstc.edu.cn.po.WordDo;

import java.util.List;

/**
 * Created by win8 on 2017/4/30.
 */
public interface WordDoService {
    public List<WordDo> getAllWordDoData(WordDo wordDo);
    public void addWordDo(WordDo wordDo);
    public WordDo getWordDoData(WordDo wordDo);
    public void updateWordDo(WordDo wordDo);
}
