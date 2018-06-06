package hstc.edu.cn.controller;

import hstc.edu.cn.po.*;
import hstc.edu.cn.service.ListenDoService;
import hstc.edu.cn.service.ListenService;
import hstc.edu.cn.service.Listen_PageService;
import hstc.edu.cn.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by win8 on 2017/4/25.
 */
@Controller
@RequestMapping("/user")
public class ListenController {
    @Autowired
    private ListenService listenService;
    @Autowired
    private Listen_PageService listen_pageService;
    @Autowired
    private ListenDoService listenDoService;
    @Autowired
    private UserService userService;

    /**
     * 列出所有听力试卷
     * @param model
     * @param page 当前页
     * @return 听力试卷列表
     */
    @RequestMapping("/listListen_page")
    public String getAllListenPage(Model model,
                                   @RequestParam(value="page", required=false)String page){
        PageBean pageBean = new PageBean(Integer.parseInt(page),3);
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("start",pageBean.getStart());
        map.put("pageSize",pageBean.getPageSize());

        List<Listen_page> listen_pages = listen_pageService.listListen_Page(map);
        long total = listen_pageService.getTotalListen_Page(map);
        long pageAmount = 1;
        if (total>=3){
            pageAmount = (total/3)+1;
        }
        model.addAttribute("pageAmount",pageAmount);
        model.addAttribute("page",page);
        model.addAttribute("total",total);
        model.addAttribute("listen_pages",listen_pages);
        return "user/Listen";
    }

    /**
     * 用于跳转到听力测试页面，返回一个听力测试题页面
     * @param model
     * @param page
     * @param listen_pageId
     * @param httpSession
     * @return 听力测试题页面
     */
    @RequestMapping("/gotoExam")
    public String goExamJsp(Model model, @RequestParam(value="page", required=false)String page, int listen_pageId, HttpSession httpSession){
        PageBean pageBean = new PageBean(Integer.parseInt(page),4);
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("start",pageBean.getStart());
        map.put("pageSize",pageBean.getPageSize());
        map.put("listen_pageId",listen_pageId);
        List<Listen> listenList = listenService.getAllListenData(map);
        long total = listenService.getListenTotal(map);
        long pageAmount = 1;
        if (total>=4){
            pageAmount = (total/4)+1;
        }
        String listenUrl = listen_pageService.findListenPageById(listen_pageId).getListenUrl();
        httpSession.setAttribute("listenUrl",listenUrl);
        httpSession.setAttribute("listen_pageId",listen_pageId);
        model.addAttribute("pageAmount",pageAmount);
        model.addAttribute("page",page);
        model.addAttribute("total",total);
        model.addAttribute("listenList",listenList);


        return "user/ListenExam";

    }

    /**
     * 后台提交切换用户答题，ajax更新
     * @param model
     * @param page
     * @param listen_pageId
     * @param httpSession
     * @return
     */
    @RequestMapping("/ajaxExam")
    @ResponseBody
    public ResponseList getListen(Model model, @RequestParam(value="page", required=false)String page, int listen_pageId, HttpSession httpSession){
        PageBean pageBean = new PageBean(Integer.parseInt(page),4);
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("start",pageBean.getStart());
        map.put("pageSize",pageBean.getPageSize());
        map.put("listen_pageId",listen_pageId);

        List<Listen> listenList = listenService.getAllListenData(map);
        long total = listenService.getListenTotal(map);
        System.out.println(total);
        long pageAmount = 1;
        if (total>=4){
            pageAmount = (total/4)+1;
        }

        String listenUrl = listen_pageService.findListenPageById(listen_pageId).getListenUrl();
        httpSession.setAttribute("listenUrl",listenUrl);

        ResponseList responseList = new ResponseList();
        responseList.setPageNum(Integer.parseInt(page));
        responseList.setCode(ResponseList.OK);
        responseList.setTotalNum(pageAmount);
        responseList.setData(listenList);
        return responseList;
    }

    /**
     * 插入用户听力诊断
     * @param numArr 提交进来的答题卡数组
     * @param listen_pageId
     * @param model
     * @param request
     * @return
     */
    @RequestMapping("/doListen")
    public String doListen(@RequestParam(value="numArr[]", required = false) String[] numArr ,int listen_pageId , Model model,HttpServletRequest request){
//        ResponseList responseList = new ResponseList();
        String userName = (String) request.getSession().getAttribute("userName");
        Listen listen = new Listen();
        listen.setListen_pageId(listen_pageId);
        List<ListenDo> listenDos = new ArrayList<ListenDo>();
        List<Listen> listenList = listenService.getListenDataById(listen);//获取 listenList
        User user = userService.getByUsername(userName);
        //循环插入信息到listenDos
        for(int i = 0; i < numArr.length; i++){
            ListenDo listenDo = new ListenDo();
            listenDo.setListenType(i+1);
            listenDo.setListen_pageId(listen_pageId);
            listenDo.setDoselect(numArr[i].toUpperCase());
            listenDo.setUserId(user.getUserId());
            listenDos.add(i,listenDo);
        }
        //比较答案
        int mark = 0;
        for(int i=0;i<listenList.size();i++){
            if(listenList.get(i).getListenCorrect().equals(listenDos.get(i).getDoselect())){
                mark = mark + 2;
            }
        }


        //用户做题插入数据库
        for(int i = 0; i < numArr.length; i++)
        {

            if((listenDoService.getListenDoData(listenDos.get(i)))!=null){
                listenDoService.updateListenDo(listenDos.get(i));
            }else {
                listenDoService.addListenDo(listenDos.get(i));
            }
        }
        model.addAttribute("listen_pageId",listen_pageId);
        model.addAttribute("listenList",listenList);
        model.addAttribute("listenDos",listenDos);
        model.addAttribute("mark",mark);
        model.addAttribute("fullmark",50);
        return "/user/ListenMark";
    }

}
