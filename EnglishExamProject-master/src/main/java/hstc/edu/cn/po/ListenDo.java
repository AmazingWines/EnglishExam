package hstc.edu.cn.po;

/**
 * Created by win8 on 2017/4/28.
 */
public class ListenDo {
    private int listendoId;
    private int listen_pageId;
    private int listenType;
    private String doselect;
    private int userId;

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getListendoId() {
        return listendoId;
    }

    public void setListendoId(int listendoId) {
        this.listendoId = listendoId;
    }

    public int getListen_pageId() {
        return listen_pageId;
    }

    public void setListen_pageId(int listen_pageId) {
        this.listen_pageId = listen_pageId;
    }

    public int getListenType() {
        return listenType;
    }

    public void setListenType(int listenType) {
        this.listenType = listenType;
    }

    public String getDoselect() {
        return doselect;
    }

    public void setDoselect(String doselect) {
        this.doselect = doselect;
    }

}
