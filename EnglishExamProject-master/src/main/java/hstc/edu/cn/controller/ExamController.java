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
 * Created by win8 on 2017/5/3.
 */

/**
 * 模拟考试模块
 */
@Controller
@RequestMapping("/user/Exam")
public class ExamController {
    @Autowired
    private WrittingService writtingService;
    @Autowired
    private WrittingDoService writtingDoService;

    @Autowired
    private ListenService listenService;
    @Autowired
    private Listen_PageService listen_pageService;
    @Autowired
    private ListenDoService listenDoService;

    @Autowired
    private WordService wordService;
    @Autowired
    private WordCorrectService wordCorrectService;
    @Autowired
    private WordDoService wordDoService;

    @Autowired
    private ReadService readService;
    @Autowired
    private Read_Page_TitleService read_page_titleService;
    @Autowired
    private ReadDoService readDoService;

    @Autowired
    private TranslateService translateService;
    @Autowired
    private ExamService examService;
    @Autowired
    private UserService userService;

    /**
     * 这个是用于跳转到考试页面的
     * @param examId
     * @param httpSession
     * @return
     */
    @RequestMapping("/GotoExam")
    public String GotoExam(int examId,HttpSession httpSession){
        Exam exam = examService.getExamData(examId);
        httpSession.setAttribute("ewritting_pageId",exam.getWritting_pageId());
        httpSession.setAttribute("elisten_pageId",exam.getListen_pageId());
        httpSession.setAttribute("eword_pageId",exam.getWord_pageId());
        httpSession.setAttribute("eread_pageId",exam.getRead_pageId());
        httpSession.setAttribute("etranslate_pageId",exam.getTranslate_pageId());

        return "redirect:/user/Exam/Exam_Writting.do?writting_pageId="+exam.getWritting_pageId();
    }

    /**
     * 进入模拟考试页面
     * @param model
     * @param writting_pageId
     * @return
     */
    @RequestMapping("/Exam_Writting")
    public String Exam_Writting(Model model, int writting_pageId) {
        Writting writting_1 = new Writting();
        writting_1.setWritting_pageId(writting_pageId);
        Writting writting = writtingService.getWrittingByPageId(writting_1);
        model.addAttribute("writting_pageId",writting_pageId);
        model.addAttribute("writting",writting);
        return "/user/allExam/Exam_Writting";
    }

    /**
     * 按照四六级考试顺序，先进行30分钟写作
     * @param writtingDo
     * @param request
     * @param writting_pageId
     * @return
     */
    @RequestMapping("/doExam_Writting")
    public String doExam_Writting(WrittingDo writtingDo,HttpServletRequest request,int writting_pageId){
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
        return null;
    }

    /**
     * 写作之后进入听力
     * @param model
     * @param page
     * @param listen_pageId
     * @param httpSession
     * @return
     */
    @RequestMapping("/Exam_Listen")
    public String Exam_Listen(Model model, @RequestParam(value="page", required=false)String page, int listen_pageId, HttpSession httpSession){
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
        model.addAttribute("pageAmount",pageAmount);
        model.addAttribute("page",page);
        model.addAttribute("total",total);
        model.addAttribute("listenList",listenList);


        return "/user/allExam/Exam_Listen";
    }

    /**
     * 听力之后就是第二卷考试了，75分钟
     * @param model
     * @param pageId
     * @param status
     * @param httpSession
     * @return
     */
    @RequestMapping("/Examall")
    public String Examall(Model model,int pageId,int status,HttpSession httpSession){
        Word word = new Word();
        List<Word> wordList = new ArrayList<Word>();

        Translate translate = new Translate();
        Translate translate1 = new Translate();

        if(status==1){
            word.setWord_pageId(pageId);
            wordList = wordService.getWordDataById(word);
            model.addAttribute("wordList",wordList);
            return "/user/allExam/Exam_Word";
        }else if(status==2){
            PageBean pageBean = new PageBean(1,10);
            Map<String, Object> map = new HashMap<String, Object>();
            map.put("start",pageBean.getStart());
            map.put("pageSize",pageBean.getPageSize());
            map.put("read_pageId",pageId);
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
            List<Read_Page_Title> read_page_titleList = read_page_titleService.getRead_Page_TitleByType(pageId);

            model.addAttribute("pageAmount",pageAmount-1);
            model.addAttribute("page",1);
            model.addAttribute("total",total);
            model.addAttribute("readList",readList);
            model.addAttribute("read_page_title",read_page_titleList.get(0));
            return "/user/allExam/Exam_Read";
        }else {
            translate1.setTranslate_pageId(pageId);
            translate = translateService.getTranslateByPageId(translate1);
            model.addAttribute("translate", translate);
            return "/user/allExam/Exam_Translate";
        }

    }

    /**
     * 这里用于诊断，返回一个成绩页面
     * @param model
     * @param request
     * @return
     */
    @RequestMapping("/checkExam")
    public String checkExam(Model model,HttpServletRequest request){
        WordCorrect wordCorrect = new WordCorrect();
        Listen listen = new Listen();
        Writting writting = new Writting();
        Read read =new Read();
        Translate translate = new Translate();

        String userName = (String) request.getSession().getAttribute("userName");
        User user = userService.getByUsername(userName);

        int writting_pageId = (Integer) request.getSession().getAttribute("ewritting_pageId");
        writting.setWritting_pageId(writting_pageId);

        int listen_pageId = (Integer) request.getSession().getAttribute("elisten_pageId");
        listen.setListen_pageId(listen_pageId);

        int word_pageId = (Integer) request.getSession().getAttribute("eword_pageId");
        wordCorrect.setWord_pageId(word_pageId);

        int read_pageId = (Integer) request.getSession().getAttribute("eread_pageId");
        read.setRead_pageId(read_pageId);

        int translate_pageId = (Integer) request.getSession().getAttribute("etranslate_pageId");
        translate.setTranslate_pageId(translate_pageId);

        Writting writting1 = writtingService.getWrittingByPageId(writting);
        List<Listen> listenList = listenService.getListenDataById(listen);
        List<WordCorrect> wordCorrectList = wordCorrectService.getWordCorrect(wordCorrect);
        List<Read> readList = readService.getReadDataById(read);
        Translate translate1 = translateService.getTranslateByPageId(translate);

        ListenDo listenDo = new ListenDo();
        listenDo.setListen_pageId(listen_pageId);
        listenDo.setUserId(user.getUserId());
        List<ListenDo>listenDos = listenDoService.getAllListenDoData(listenDo);

        WordDo wordDo = new WordDo();
        wordDo.setWord_pageId(word_pageId);
        wordDo.setUserId(user.getUserId());
        List<WordDo> wordDos = wordDoService.getAllWordDoData(wordDo);

        ReadDo readDo = new ReadDo();
        readDo.setRead_pageId(read_pageId);
        readDo.setUserId(user.getUserId());
        List<ReadDo> readDos = readDoService.getAllReadDoData(readDo);
        int mark = 0;
        for(int i=0;i<listenList.size();i++){
            if(listenList.get(i).getListenCorrect().equals(listenDos.get(i).getDoselect())){
                mark = mark + 2;
            }
        }
        for(int i=0;i<readList.size();i++){
            if(readList.get(i).getReadCorrect().equals(readDos.get(i).getReaddoSelect())){
                mark = mark + 2;
            }
        }
        for(int i=0;i<wordCorrectList.size();i++){
            if(wordCorrectList.get(i).getWordCorrect().equals(wordDos.get(i).getWordSelect())){
                mark = mark + 1;
            }
        }
        model.addAttribute("writting1",writting1);
        model.addAttribute("translate1",translate1);

        model.addAttribute("listenList",listenList);
        model.addAttribute("listenDos",listenDos);

        model.addAttribute("wordCorrectList",wordCorrectList);
        model.addAttribute("wordDos",wordDos);

        model.addAttribute("readList",readList);
        model.addAttribute("readDos",readDos);

        model.addAttribute("fullmark",100);
        model.addAttribute("mark",mark);

        return "/user/allExam/Exam_Mark";
    }

}
