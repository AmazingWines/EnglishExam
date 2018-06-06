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
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by win8 on 2017/5/1.
 */
@Controller
@RequestMapping("/user/writting")
public class WrittingController {
    @Autowired
    private Writting_PageService writting_pageService;
    @Autowired
    private WrittingService writtingService;
    @Autowired
    private WrittingDoService writtingDoService;
    @Autowired
    private UserService userService;

    /**
     * 写作试卷列表
     * @param model
     * @param page
     * @return
     */
    @RequestMapping("/listWritting_Page")
    public String listTranslate_Page(Model model,
                                     @RequestParam(value = "page", required = false) String page) {
        PageBean pageBean = new PageBean(Integer.parseInt(page), 3);
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("start", pageBean.getStart());
        map.put("pageSize", pageBean.getPageSize());

        List<Writting_Page> writting_pageList = writting_pageService.getAllWritting_Page(map);
        long total = writting_pageService.getTotalWritting_Page(map);
        long pageAmount = 1;
        if (total >= 3) {
            if (total % 3 != 0) {
                pageAmount = (total / 3) + 1;
            } else {
                pageAmount = total / 3;
            }
        }
        model.addAttribute("pageAmount", pageAmount);
        model.addAttribute("page", page);
        model.addAttribute("total", total);
        model.addAttribute("writting_pageList", writting_pageList);
        return "user/Writting_Page";
    }

    /**
     * 获取写作试题，返回写作测试页面
     * @param model
     * @param writting_pageId
     * @return
     */
    @RequestMapping("/WrittingExam")
    public String WrittingExam(Model model, int writting_pageId) {
        Writting writting_1 = new Writting();
        writting_1.setWritting_pageId(writting_pageId);
        Writting writting = writtingService.getWrittingByPageId(writting_1);
        model.addAttribute("writting_pageId",writting_pageId);
        model.addAttribute("writting",writting);
        return "/user/WrittingExam";
    }

    /**
     * ajax 用户局部更新，获取范文
     * @param writting_pageId
     * @return
     */
    @RequestMapping("/ajaxWritting")
    @ResponseBody
    public Writting ajaxWritting(int writting_pageId){
        Writting writting_1 = new Writting();
        writting_1.setWritting_pageId(writting_pageId);
        Writting writting = writtingService.getWrittingByPageId(writting_1);
        return writting;
    }

    /**
     * 诊断
     * @param writtingDo
     * @param writting_pageId
     * @param request
     * @return
     */
    @RequestMapping("/WrittingDoExam")
    @ResponseBody
    public ResponseObj WrittingDoExam(WrittingDo writtingDo, int writting_pageId, HttpServletRequest request) {
        String userName = (String) request.getSession().getAttribute("userName");
        User user = userService.getByUsername(userName);
        writtingDo.setUserId(user.getUserId());
        writtingDo.setWritting_pageId(writting_pageId);

        WrittingDo writtingDo1 = writtingDoService.getWrittingDo(writtingDo);
        if (writtingDo1 != null) {
            writtingDoService.updateWrittingDo(writtingDo);
        } else {
            writtingDoService.addWrittingDo(writtingDo);
        }
        ResponseObj responseObj = new ResponseObj();
        responseObj.setMsg("提交成功！");
        return responseObj;
    }
}
