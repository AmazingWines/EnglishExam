package hstc.edu.cn.controller.admin;


import hstc.edu.cn.po.Listen_page;
import hstc.edu.cn.service.Listen_PageService;
import hstc.edu.cn.util.DateUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

/**
 * Created by win8 on 2017/4/26.
 */
@Controller
@RequestMapping("/user/admin")
public class ListenAdminController {
    @Autowired
    private Listen_PageService listen_pageService;

    @RequestMapping("/addListen_page")
    public String addListen_page(
            @RequestParam("listen_pageName") String listen_pageName_1,
            @RequestParam("listen_pageType") int listen_pageType_1,
            @RequestParam("listen_summary") String listen_summary_1,
            @RequestParam("listenUrl") MultipartFile file, HttpServletRequest request) throws Exception {
        Listen_page listenPage = new Listen_page();
        listenPage.setListen_pageName(listen_pageName_1);
        listenPage.setListen_pageType(listen_pageType_1);
        listenPage.setListen_summary(listen_summary_1);
        if (!file.isEmpty()) {
            String filePath = request.getServletContext().getRealPath("/");
            String listenNewName = DateUtil.getCurrentDateStr() + "." + file.getOriginalFilename().split("\\.")[1];
            file.transferTo(new File("F:\\Java_demo\\english\\src\\main\\webapp\\static\\" + listenNewName));
            listenPage.setListenUrl("/static/" + listenNewName);
        }
        listen_pageService.addListenPage(listenPage);
        return "/user/Listen";
    }
}
