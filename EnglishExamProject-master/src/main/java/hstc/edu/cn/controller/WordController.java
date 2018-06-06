package hstc.edu.cn.controller;

import com.alibaba.druid.filter.AutoLoad;
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
 * Created by win8 on 2017/4/30.
 */
@Controller
@RequestMapping("/user/word")
public class WordController {
    @Autowired
    private WordService wordService;
    @Autowired
    private Word_PageService word_pageService;
    @Autowired
    private WordCorrectService wordCorrectService;
    @Autowired
    private WordDoService wordDoService;
    @Autowired
    private UserService userService;

    /**
     * 填词试卷列表
     * @param model
     * @param page
     * @return
     */
    @RequestMapping("/listWord_Page")
    public String listWord_Page(Model model,
                                @RequestParam(value="page", required=false)String page){
        PageBean pageBean = new PageBean(Integer.parseInt(page),3);
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("start",pageBean.getStart());
        map.put("pageSize",pageBean.getPageSize());

        List<Word_Page> word_pageList = word_pageService.getAllWord_Page(map);
        long total = word_pageService.getTotalWord_Page(map);
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
        model.addAttribute("word_pageList",word_pageList);
        return "user/Word_Page";
    }

    /**
     * 获取填词试题，返回填词测试页面
     * @param model
     * @param word_pageId
     * @return
     */
    @RequestMapping("/WordExam")
    public String WordExam(Model model, int word_pageId){
        Word word = new Word();
        word.setWord_pageId(word_pageId);
        List<Word> wordList = wordService.getWordDataById(word);

        model.addAttribute("word_pageId",word_pageId);
        model.addAttribute("wordList",wordList);
        return "/user/WordExam";
    }

    /**
     * 诊断。返回填词成绩页面
     * @param numArr
     * @param word_pageId
     * @param model
     * @param request
     * @return
     */
    @RequestMapping("/doWordExam")
    public String doWordExam(@RequestParam(value="numArr[]", required = false) String[] numArr ,int word_pageId , Model model,HttpServletRequest request){
        String userName = (String) request.getSession().getAttribute("userName");
        Word word = new Word();
        word.setWord_pageId(word_pageId);
        List<WordDo> wordDos = new ArrayList<WordDo>();
        List<Word> wordList = wordService.getWordDataById(word);

        WordCorrect wordCorrect = new WordCorrect();
        wordCorrect.setWord_pageId(word_pageId);
        List<WordCorrect> wordCorrectList = wordCorrectService.getWordCorrect(wordCorrect);
        User user = userService.getByUsername(userName);
        //循环插入信息到wordDos
        for(int i = 0; i < numArr.length; i++){
            WordDo wordDo = new WordDo();
            wordDo.setWorddoNum(i+26);
            wordDo.setWord_pageId(word_pageId);
            wordDo.setWordSelect(numArr[i].toUpperCase());
            wordDo.setUserId(user.getUserId());
            wordDos.add(i,wordDo);
        }
        //比较答案
        int mark = 0;
        int fullmark = (wordDos.size())*2;
        for(int i=0;i<wordDos.size();i++){
            if(wordCorrectList.get(i).getWordCorrect().equals(wordDos.get(i).getWordSelect())){
                mark = mark + 2;
            }
        }


        //用户做题插入数据库
        for(int i = 0; i < numArr.length; i++)
        {

            if((wordDoService.getWordDoData(wordDos.get(i)))!=null){
                wordDoService.updateWordDo(wordDos.get(i));
            }else {
                wordDoService.addWordDo(wordDos.get(i));
            }
        }
        model.addAttribute("word_pageId",word_pageId);
        model.addAttribute("wordCorrectList",wordCorrectList);
        model.addAttribute("wordDos",wordDos);
        model.addAttribute("mark",mark);
        model.addAttribute("fullmark",fullmark);
        return "/user/WordMark";
    }
    }

