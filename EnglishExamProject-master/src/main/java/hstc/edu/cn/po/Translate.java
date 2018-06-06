package hstc.edu.cn.po;

/**
 * Created by win8 on 2017/5/1.
 */
public class Translate {
    private int translateId;
    private String translateTitle;
    private String translateCorrect;
    private int translate_pageId;
    private int translate_mark;

    public int getTranslateId() {
        return translateId;
    }

    public void setTranslateId(int translateId) {
        this.translateId = translateId;
    }

    public String getTranslateTitle() {
        return translateTitle;
    }

    public void setTranslateTitle(String translateTitle) {
        this.translateTitle = translateTitle;
    }

    public String getTranslateCorrect() {
        return translateCorrect;
    }

    public void setTranslateCorrect(String translateCorrect) {
        this.translateCorrect = translateCorrect;
    }

    public int getTranslate_pageId() {
        return translate_pageId;
    }

    public void setTranslate_pageId(int translate_pageId) {
        this.translate_pageId = translate_pageId;
    }

    public int getTranslate_mark() {
        return translate_mark;
    }

    public void setTranslate_mark(int translate_mark) {
        this.translate_mark = translate_mark;
    }
}
