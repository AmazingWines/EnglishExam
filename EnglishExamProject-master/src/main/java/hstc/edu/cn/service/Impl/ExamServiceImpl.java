package hstc.edu.cn.service.Impl;

import hstc.edu.cn.mapper.ExamMapper;
import hstc.edu.cn.po.Exam;
import hstc.edu.cn.service.ExamService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by win8 on 2017/5/3.
 */
@Service("examService")
public class ExamServiceImpl implements ExamService {
    @Autowired
    ExamMapper examMapper;
    public Exam getExamData(int examId) {
        return examMapper.getExamData(examId);
    }
}
