package hstc.edu.cn.po;

/**
 * Created by win8 on 2017/5/1.
 */
public class WrittingDo {
    private int writtingdoId;
    private String writtingdoTitle;
    private String writtingdoWrite;
    private int writting_pageId;
    private int userId;

    public int getWrittingdoId() {
        return writtingdoId;
    }

    public void setWrittingdoId(int writtingdoId) {
        this.writtingdoId = writtingdoId;
    }

    public String getWrittingdoTitle() {
        return writtingdoTitle;
    }

    public void setWrittingdoTitle(String writtingdoTitle) {
        this.writtingdoTitle = writtingdoTitle;
    }

    public String getWrittingdoWrite() {
        return writtingdoWrite;
    }

    public void setWrittingdoWrite(String writtingdoWrite) {
        this.writtingdoWrite = writtingdoWrite;
    }

    public int getWritting_pageId() {
        return writting_pageId;
    }

    public void setWritting_pageId(int writting_pageId) {
        this.writting_pageId = writting_pageId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }
}
