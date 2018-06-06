package hstc.edu.cn.po;

/**
 * Created by win8 on 2017/4/17.
 */
public class Page {
    private int pageId;
    private String pageName;
    private int pageType;
    private String pageDescribed;
    private int questionStatus;
    private int questionTyoe;
    private int averageMark;
    private int answerAmount;
    private int quoteAmount;
    private int pageDifficuty;

    public int getPageId() {
        return pageId;
    }

    public void setPageId(int pageId) {
        this.pageId = pageId;
    }

    public String getPageName() {
        return pageName;
    }

    public void setPageName(String pageName) {
        this.pageName = pageName;
    }

    public int getPageType() {
        return pageType;
    }

    public void setPageType(int pageType) {
        this.pageType = pageType;
    }

    public String getPageDescribed() {
        return pageDescribed;
    }

    public void setPageDescribed(String pageDescribed) {
        this.pageDescribed = pageDescribed;
    }

    public int getQuestionStatus() {
        return questionStatus;
    }

    public void setQuestionStatus(int questionStatus) {
        this.questionStatus = questionStatus;
    }

    public int getQuestionTyoe() {
        return questionTyoe;
    }

    public void setQuestionTyoe(int questionTyoe) {
        this.questionTyoe = questionTyoe;
    }

    public int getAverageMark() {
        return averageMark;
    }

    public void setAverageMark(int averageMark) {
        this.averageMark = averageMark;
    }

    public int getAnswerAmount() {
        return answerAmount;
    }

    public void setAnswerAmount(int answerAmount) {
        this.answerAmount = answerAmount;
    }

    public int getQuoteAmount() {
        return quoteAmount;
    }

    public void setQuoteAmount(int quoteAmount) {
        this.quoteAmount = quoteAmount;
    }

    public int getPageDifficuty() {
        return pageDifficuty;
    }

    public void setPageDifficuty(int pageDifficuty) {
        this.pageDifficuty = pageDifficuty;
    }
}
