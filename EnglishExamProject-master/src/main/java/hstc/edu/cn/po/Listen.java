package hstc.edu.cn.po;

/**
 * Created by win8 on 2017/4/24.
 */
public class Listen {
    private int listenId;
    private int listenType;
    private String listenSelect_1;
    private String listenSelect_2;
    private String listenSelect_3;
    private String listenSelect_4;
    private String listenCorrect;
    private Listen_page listen_page;
    private int listen_pageId;
    private int mark;

    public int getMark() {
        return mark;
    }

    public void setMark(int mark) {
        this.mark = mark;
    }

    public int getListen_pageId() {
        return listen_pageId;
    }

    public void setListen_pageId(int listen_pageId) {
        this.listen_pageId = listen_pageId;
    }

    public int getListenId() {
        return listenId;
    }

    public void setListenId(int listenId) {
        this.listenId = listenId;
    }

    public int getListenType() {
        return listenType;
    }

    public void setListenType(int listenType) {
        this.listenType = listenType;
    }

    public String getListenSelect_1() {
        return listenSelect_1;
    }

    public void setListenSelect_1(String listenSelect_1) {
        this.listenSelect_1 = listenSelect_1;
    }

    public String getListenSelect_2() {
        return listenSelect_2;
    }

    public void setListenSelect_2(String listenSelect_2) {
        this.listenSelect_2 = listenSelect_2;
    }

    public String getListenSelect_3() {
        return listenSelect_3;
    }

    public void setListenSelect_3(String listenSelect_3) {
        this.listenSelect_3 = listenSelect_3;
    }

    public String getListenSelect_4() {
        return listenSelect_4;
    }

    public void setListenSelect_4(String listenSelect_4) {
        this.listenSelect_4 = listenSelect_4;
    }

    public String getListenCorrect() {
        return listenCorrect;
    }

    public void setListenCorrect(String listenCorrect) {
        this.listenCorrect = listenCorrect;
    }

    public Listen_page getListen_page() {
        return listen_page;
    }

    public void setListen_page(Listen_page listen_page) {
        this.listen_page = listen_page;
    }
}
