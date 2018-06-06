package hstc.edu.cn.mapper;

import hstc.edu.cn.po.WordDo;

import java.util.List;

/**
 * Created by win8 on 2017/4/30.
 */
public interface WordDoMapper {
//    获取填词诊断列表
    public List<WordDo> getAllWordDoData(WordDo wordDo);
//    添加
    public void addWordDo(WordDo wordDo);
//    获取单个
    public WordDo getWordDoData(WordDo wordDo);
//    更新
    public void updateWordDo(WordDo wordDo);
}
