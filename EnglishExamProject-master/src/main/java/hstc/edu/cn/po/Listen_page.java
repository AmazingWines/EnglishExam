package hstc.edu.cn.po;

/**
 * Created by win8 on 2017/4/25.
 */
public class Listen_page {
    private int listen_pageId;
    private String listen_pageName;
    private String listen_summary;
    private String listenUrl;
    private int listen_pageType;

    public int getListen_pageType() {
        return listen_pageType;
    }

    public void setListen_pageType(int listen_pageType) {
        this.listen_pageType = listen_pageType;
    }

    public int getListen_pageId() {
        return listen_pageId;
    }

    public void setListen_pageId(int listen_pageId) {
        this.listen_pageId = listen_pageId;
    }

    public String getListen_pageName() {
        return listen_pageName;
    }

    public void setListen_pageName(String listen_pageName) {
        this.listen_pageName = listen_pageName;
    }

    public String getListen_summary() {
        return listen_summary;
    }

    public void setListen_summary(String listen_summary) {
        this.listen_summary = listen_summary;
    }

    public String getListenUrl() {
        return listenUrl;
    }

    public void setListenUrl(String listenUrl) {
        this.listenUrl = listenUrl;
    }
}
