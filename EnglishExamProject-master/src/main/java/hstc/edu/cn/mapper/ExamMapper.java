package hstc.edu.cn.mapper;

import hstc.edu.cn.po.Exam;

/**
 * Created by win8 on 2017/5/3.
 */
public interface ExamMapper {
//    获取模拟测试试卷
    public Exam getExamData(int examId);
}
