/**
 * Copyright (C), 2018
 * FileName: PageController
 * Author:   huangwenyuan
 * Date:     2018/12/9 21:57
 * Description:
 */

package com.hwy.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 功能描述:
 * 用于页面跳转的controller
 *
 * @author huangwenyuan
 * @create 2018/12/9
 * @since 1.0.0
 */
@Controller
public class PageController {
    @RequestMapping("/{page}")
    public String showPage(@PathVariable String page) {
        return page;
    }
}

    