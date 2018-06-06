package hstc.edu.cn.po;

/**
 * Created by win8 on 2017/5/1.
 */
public class TranslateDo {
    private int translatedoId;
    private String translateWrite;
    private int translate_pageId;
    private int userId;

    public int getTranslatedoId() {
        return translatedoId;
    }

    public void setTranslatedoId(int translatedoId) {
        this.translatedoId = translatedoId;
    }


    public String getTranslateWrite() {
        return translateWrite;
    }

    public void setTranslateWrite(String translateWrite) {
        this.translateWrite = translateWrite;
    }

    public int getTranslate_pageId() {
        return translate_pageId;
    }

    public void setTranslate_pageId(int translate_pageId) {
        this.translate_pageId = translate_pageId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }
}
