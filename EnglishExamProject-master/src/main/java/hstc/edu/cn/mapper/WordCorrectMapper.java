package hstc.edu.cn.mapper;

import hstc.edu.cn.po.WordCorrect;

import java.util.List;

/**
 * Created by win8 on 2017/4/30.
 */
public interface WordCorrectMapper {
//    获取该填词试卷正确答案
    public List<WordCorrect> getWordCorrect(WordCorrect wordCorrect);
}
