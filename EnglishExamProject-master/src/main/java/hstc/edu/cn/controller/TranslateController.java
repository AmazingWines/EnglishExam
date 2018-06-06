package hstc.edu.cn.controller;

import hstc.edu.cn.po.*;
import hstc.edu.cn.service.TranslateDoService;
import hstc.edu.cn.service.TranslateService;
import hstc.edu.cn.service.Translate_PageService;
import hstc.edu.cn.service.UserService;
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
@RequestMapping("/user/translate")
public class TranslateController {
    @Autowired
    private TranslateService translateService;
    @Autowired
    private Translate_PageService translate_pageService;
    @Autowired
    private TranslateDoService translateDoService;
    @Autowired
    private UserService userService;

    /**
     * 翻译列表
     * @param model
     * @param page
     * @return
     */
    @RequestMapping("/listTranslate_Page")
    public String listTranslate_Page(Model model,
                                     @RequestParam(value = "page", required = false) String page) {
        PageBean pageBean = new PageBean(Integer.parseInt(page), 3);
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("start", pageBean.getStart());
        map.put("pageSize", pageBean.getPageSize());

        List<Translate_Page> translate_pageList = translate_pageService.getAllTranslate_Page(map);
        long total = translate_pageService.getTotalTranslate_Page(map);
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
        model.addAttribute("translate_pageList", translate_pageList);
        return "user/Translate_Page";
    }

    /**
     * 获取翻译题目
     * @param model
     * @param translate_pageId
     * @return 翻译试题页面
     */
    @RequestMapping("/TranslateExam")
    public String TranslateExam(Model model, int translate_pageId) {
        Translate translate_1 = new Translate();
        translate_1.setTranslate_pageId(translate_pageId);
        Translate translate = translateService.getTranslateByPageId(translate_1);
        model.addAttribute("translate_pageId", translate_pageId);
        model.addAttribute("translate", translate);
        return "/user/TranslateExam";
    }

    /**
     * ajax 用于局部更新，获取范文
     * @param translate_pageId
     * @return
     */
    @RequestMapping("/ajaxTranslate")
    @ResponseBody
    public String ajaxTranslate(int translate_pageId){
        Translate translate_1 = new Translate();
        translate_1.setTranslate_pageId(translate_pageId);
        Translate translate = translateService.getTranslateByPageId(translate_1);
        return translate.getTranslateCorrect();
    }

    /**
     * 诊断
     * @param translateDo
     * @param translate_pageId
     * @param request
     * @return
     */
    @RequestMapping("/TranslateDoExam")
    @ResponseBody
    public ResponseObj TranslateDoExam(TranslateDo translateDo,int translate_pageId, HttpServletRequest request) {
        String userName = (String) request.getSession().getAttribute("userName");
        User user = userService.getByUsername(userName);
        translateDo.setUserId(user.getUserId());
        translateDo.setTranslate_pageId(translate_pageId);

        TranslateDo translateDo_1 = translateDoService.getTranslateDo(translateDo);
        if (translateDo_1 != null) {
            translateDoService.updateTranslateDo(translateDo);
        } else {
            translateDoService.addTranslateDo(translateDo);
        }
        ResponseObj responseObj = new ResponseObj();
        responseObj.setMsg("提交成功！");
        return responseObj;
    }
}
