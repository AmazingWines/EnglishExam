package hstc.edu.cn.po;

/**
 * Created by win8 on 2017/4/17.
 */
public class TestPage {
    private int testId;
    private int page_Id;
    private int user_Id;
    private int mark;
    private String analysis;
    private int knowledgePoint;
    private int pageWords;
    private int WrongAmount;

    public int getTestId() {
        return testId;
    }

    public void setTestId(int testId) {
        this.testId = testId;
    }

    public int getPage_Id() {
        return page_Id;
    }

    public void setPage_Id(int page_Id) {
        this.page_Id = page_Id;
    }

    public int getUser_Id() {
        return user_Id;
    }

    public void setUser_Id(int user_Id) {
        this.user_Id = user_Id;
    }

    public int getMark() {
        return mark;
    }

    public void setMark(int mark) {
        this.mark = mark;
    }

    public String getAnalysis() {
        return analysis;
    }

    public void setAnalysis(String analysis) {
        this.analysis = analysis;
    }

    public int getKnowledgePoint() {
        return knowledgePoint;
    }

    public void setKnowledgePoint(int knowledgePoint) {
        this.knowledgePoint = knowledgePoint;
    }

    public int getPageWords() {
        return pageWords;
    }

    public void setPageWords(int pageWords) {
        this.pageWords = pageWords;
    }

    public int getWrongAmount() {
        return WrongAmount;
    }

    public void setWrongAmount(int wrongAmount) {
        WrongAmount = wrongAmount;
    }
}
