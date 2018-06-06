package hstc.edu.cn.po;

/**
 * Created by win8 on 2017/4/30.
 */
public class WordDo {
    private int worddoId;
    private int worddoNum;
    private String wordSelect;
    private int word_pageId;
    private int userId;

    public int getWorddoId() {
        return worddoId;
    }

    public void setWorddoId(int worddoId) {
        this.worddoId = worddoId;
    }

    public int getWorddoNum() {
        return worddoNum;
    }

    public void setWorddoNum(int worddoNum) {
        this.worddoNum = worddoNum;
    }

    public String getWordSelect() {
        return wordSelect;
    }

    public void setWordSelect(String wordSelect) {
        this.wordSelect = wordSelect;
    }

    public int getWord_pageId() {
        return word_pageId;
    }

    public void setWord_pageId(int word_pageId) {
        this.word_pageId = word_pageId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }
}
