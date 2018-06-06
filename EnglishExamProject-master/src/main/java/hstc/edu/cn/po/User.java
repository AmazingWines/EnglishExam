package hstc.edu.cn.po;

import java.util.Date;

/**
 * Created by win8 on 2017/4/17.
 */
public class User {
    private int userId;
    private String userName;
    private String userPassword;
    private int userPermission;
    private String userQQ;
    private String userTel;
    private String userEmail;
    private int userLandAmount;
    private Date userLastLandTime;

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserPassword() {
        return userPassword;
    }

    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword;
    }

    public int getUserPermission() {
        return userPermission;
    }

    public void setUserPermission(int userPermission) {
        this.userPermission = userPermission;
    }

    public String getUserQQ() {
        return userQQ;
    }

    public void setUserQQ(String userQQ) {
        this.userQQ = userQQ;
    }

    public String getUserTel() {
        return userTel;
    }

    public void setUserTel(String userTel) {
        this.userTel = userTel;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public int getUserLandAmount() {
        return userLandAmount;
    }

    public void setUserLandAmount(int userLandAmount) {
        this.userLandAmount = userLandAmount;
    }

    public Date getUserLastLandTime() {
        return userLastLandTime;
    }

    public void setUserLastLandTime(Date userLastLandTime) {
        this.userLastLandTime = userLastLandTime;
    }
}
