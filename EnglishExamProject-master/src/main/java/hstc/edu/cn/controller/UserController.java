package hstc.edu.cn.controller;


import hstc.edu.cn.po.ResponseObj;
import hstc.edu.cn.po.User;
import hstc.edu.cn.service.UserService;
import hstc.edu.cn.util.CryptographyUtil;
import hstc.edu.cn.util.GsonUtils;
import hstc.edu.cn.util.ResponseUtil;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

/**
 * Created by win8 on 2017/4/17.
 */
@Controller
public class UserController {
    @Autowired
    private UserService userService;

    /**
     * 登录模块
     * @param user
     * @param model
     * @param httpSession
     * @return
     */
    @RequestMapping("/login")
        public String login(User user, Model model, HttpSession httpSession){
        Subject subject = SecurityUtils.getSubject();
        String newPassword = CryptographyUtil.md5(user.getUserPassword(),"javacoder");

        UsernamePasswordToken token = new UsernamePasswordToken(user.getUserName(),newPassword);
        String userName=user.getUserName();
        try{
            subject.login(token);
            httpSession.setAttribute("userName",userName);
            return "redirect:/user/Main.jsp";
        }catch (AuthenticationException e){
            e.printStackTrace();
            model.addAttribute("user",user);
            model.addAttribute("errorInfo","用户或者密码错误！");
            return "login";
        }

    }

    /**
     * 注册模块
     * @param user
     * @param model
     * @return
     */
    @RequestMapping("/save")
    @ResponseBody
    public ResponseObj saveUser(User user, Model model){
        user.setUserPassword(CryptographyUtil.md5(user.getUserPassword(), "javacoder"));
        ResponseObj responseObj = new ResponseObj();
        if (user.getUserName()==null){
            responseObj.setCode(ResponseObj.FAILED);
            responseObj.setMsg("请按要求填写信息！");
        } else if (userService.getByUsername(user.getUserName())!=null){
            responseObj.setCode(ResponseObj.FAILED);
            responseObj.setMsg("该用户已经被注册！");
        }else if (userService.getUserEmail(user)!=null){
            responseObj.setCode(ResponseObj.FAILED);
            responseObj.setMsg("该邮箱已经被注册！");
        } else {
            userService.addUser(user);
            responseObj.setCode(ResponseObj.OK);
            responseObj.setMsg("注册成功！恭喜成为本站会员！");
        }
        return responseObj;
    }

    /**
     * 修改用户信息模块
     * @param model
     * @param userName
     * @return
     */
    @RequestMapping("/userInfo")
    public String getUserInfo(Model model,String userName){
        User user = userService.getByUsername(userName);
        model.addAttribute("user",user);
        return "user/ModifyUserInfo";
    }
    @ResponseBody
    @RequestMapping("/modifyUserInfo")
    public ResponseObj modifyUserInfo(Model model,User user){
        ResponseObj responseObj = new ResponseObj();
        user.setUserPassword(CryptographyUtil.md5(user.getUserPassword(), "javacoder"));
        userService.updateUser(user);
        responseObj.setCode(ResponseObj.OK);
        responseObj.setMsg("更新成功！请重新登录！");
        return responseObj;
    }

    /**
     * 注销登录
     * @return
     */
    @RequestMapping("/logout")
    public String logout(){
        return "/index";
    }
}
