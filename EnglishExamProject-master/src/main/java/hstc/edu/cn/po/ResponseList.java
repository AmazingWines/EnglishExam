package hstc.edu.cn.po;

import java.util.List;

/**
 * Created by win8 on 2017/4/27.
 */
public class ResponseList<T> {
    public final static int OK = 1, FAILED = 0, EMPUTY = -1;
    public final static String OK_STR = "success", FAILED_STR = "faild", EMPUTY_STR = "empty";

    private int code; // 状态码,0成功;1空数据;-1请求失败
    private String msg;
    private List<Object> data;
    private Object obj;
    private int pageNum, pageSize;
    private long totalNum;

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public List<Object> getData() {
        return data;
    }

    public void setData(List<Object> data) {
        this.data = data;
    }

    public Object getObj() {
        return obj;
    }

    public void setObj(Object obj) {
        this.obj = obj;
    }

    public int getPageNum() {
        return pageNum;
    }

    public void setPageNum(int pageNum) {
        this.pageNum = pageNum;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public long getTotalNum() {
        return totalNum;
    }

    public void setTotalNum(long totalNum) {
        this.totalNum = totalNum;
    }
}

