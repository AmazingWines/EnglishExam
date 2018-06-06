package hstc.edu.cn.controller;

import hstc.edu.cn.po.*;
import hstc.edu.cn.service.*;
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
 * Created by win8 on 2017/4/29.
 */
@Controller
@RequestMapping("/user")
public class ReadController {
    @Autowired
    private Read_PageService read_pageService;
    @Autowired
    private ReadService readService;
    @Autowired
    private ReadDoService readDoService;
    @Autowired
    private UserService userService;
    @Autowired
    private Read_Page_TitleService read_page_titleService;

    /**
     * 和listencontroller 同理
     * @param model
     * @param page 当前页
     * @return
     */
    @RequestMapping("/listRead_Page")
    public String listRead_Page(Model model,
                                @RequestParam(value="page", required=false)String page){

        PageBean pageBean = new PageBean(Integer.parseInt(page),3);
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("start",pageBean.getStart());
        map.put("pageSize",pageBean.getPageSize());

        List<Read_Page> read_pageList = read_pageService.getAllRead_Page(map);
        long total = read_pageService.getTotalRead_Page(map);
        long pageAmount = 1;
        if (total>=3){
            if(total%3!=0) {
                pageAmount = (total/3)+1;
            }else {
                pageAmount = total/3;
            }
        }
        model.addAttribute("pageAmount",pageAmount);
        model.addAttribute("page",page);
        model.addAttribute("total",total);
        model.addAttribute("read_pageList",read_pageList);
        return "user/Read_Page";
    }

    /**
     *
     * @param model
     * @param page
     * @param read_pageId
     * @param httpSession
     * @return 阅读测试页面
     */
    @RequestMapping("/ReadExam")
    public String ReadExam(Model model, @RequestParam(value="page", required=false)String page, int read_pageId, HttpSession httpSession){
        PageBean pageBean = new PageBean(Integer.parseInt(page),10);
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("start",pageBean.getStart());
        map.put("pageSize",pageBean.getPageSize());
        map.put("read_pageId",read_pageId);
        List<Read> readList = readService.getAllReadData(map);
        long total = readService.getReadTotal(map);
        long pageAmount = 1;
        if (total>=5){
            if(total%5!=0) {
            pageAmount = (total/5)+1;
            }else {
                pageAmount = total/5;
            }
        }
        List<Read_Page_Title> read_page_titleList = read_page_titleService.getRead_Page_TitleByType(read_pageId);

        httpSession.setAttribute("read_pageId",read_pageId);
        model.addAttribute("pageAmount",pageAmount-1);
        model.addAttribute("page",page);
        model.addAttribute("total",total);
        model.addAttribute("readList",readList);
        model.addAttribute("read_page_title",read_page_titleList.get(0));
        return "user/ReadExam";
    }

    /**
     * ajax 更新用于切换题目，就是上一页下一页
     * @param model
     * @param page
     * @param read_pageId
     * @param httpSession
     * @return
     */
    @RequestMapping("/ajaxReadExam")
    @ResponseBody
    public ResponseList ajaxReadExam(Model model, @RequestParam(value="page", required=false)String page, int read_pageId, HttpSession httpSession){
        PageBean pageBean = new PageBean(Integer.parseInt(page)+1,5);
        if(Integer.parseInt(page)==1){
           pageBean = new PageBean(Integer.parseInt(page),10);
        }
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("start",pageBean.getStart());
        map.put("pageSize",pageBean.getPageSize());
        map.put("read_pageId",read_pageId);

        List<Read> readList = readService.getAllReadData(map);
        long total = readService.getReadTotal(map);
        System.out.println(total);
        long pageAmount = 1;
        if (total>=5){
            if(total%5!=0) {
                pageAmount = (total/5)+1;
            }else {
                pageAmount = total/5;
            }
        }
        List<Read_Page_Title> read_page_titleList = read_page_titleService.getRead_Page_TitleByType(read_pageId);

        ResponseList responseList = new ResponseList();

        for(int i =0;i<read_page_titleList.size();i++){
            if(read_page_titleList.get(i).getReadTitleNum()==Integer.parseInt(page)){
                responseList.setObj(read_page_titleList.get(i));
            }
        }
        responseList.setPageNum(Integer.parseInt(page));
        responseList.setCode(ResponseList.OK);
        responseList.setTotalNum(pageAmount-1);
        responseList.setData(readList);

        return responseList;
    }

    /**
     * 阅读诊断
     * @param numArr
     * @param read_pageId
     * @param model
     * @param request
     * @return 阅读成绩页面
     */
    @RequestMapping("/doReadExam")
    public String doReadExam(@RequestParam(value="numArr[]", required = false) String[] numArr ,int read_pageId , Model model,HttpServletRequest request){

        String userName = (String) request.getSession().getAttribute("userName");
        Read read = new Read();
        read.setRead_pageId(read_pageId);
        List<ReadDo> readDos = new ArrayList<ReadDo>();
        List<Read> readList = readService.getReadDataById(read);//获取 list
        User user = userService.getByUsername(userName);
        //循环插入信息
        for(int i = 0; i < numArr.length; i++){
            ReadDo readDo = new ReadDo();
            readDo.setReaddoNum(i+36);
            readDo.setRead_pageId(read_pageId);
            readDo.setReaddoSelect(numArr[i].toUpperCase());
            readDo.setUserId(user.getUserId());
            readDos.add(i,readDo);
        }
        //比较答案
        int mark = 0;
        for(int i=0;i<readDos.size();i++){
            if(readList.get(i).getReadCorrect().equals(readDos.get(i).getReaddoSelect())){
                mark = mark + 2;
            }
        }


        //用户做题插入数据库
        for(int i = 0; i < numArr.length; i++)
        {

            if((readDoService.getReadDoData(readDos.get(i)))!=null){
                readDoService.updateReadDo(readDos.get(i));
            }else {
                readDoService.addReadDo(readDos.get(i));
            }
        }
        model.addAttribute("read_pageId",read_pageId);
        model.addAttribute("readList",readList);
        model.addAttribute("readDos",readDos);
        model.addAttribute("mark",mark);
        model.addAttribute("fullmark",40);
        return "/user/ReadMark";
    }
}
