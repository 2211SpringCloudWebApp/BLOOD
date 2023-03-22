package com.kh.blood.munjin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.blood.munjin.domain.MunjinMember;
import com.kh.blood.munjin.service.MunjinService;

@Controller
public class munjinController
{
    //  백앤드 프로젝트 학습 초점 :  List of Lists
    @Autowired
    private MunjinService munjinService;

    //⭐ 문진 1 단계  : 이름, 주민번호 입력
    @GetMapping ("/munjin/intro.bld")
    public String munjinRegister() {
        return "munjin/intro";
    }

    @PostMapping("/munjin/intro.bld")
    public String munjinRegister(
            @ModelAttribute MunjinMember munjinMember
            , @RequestParam String idNum1
            , @RequestParam String idNum2
            , Model model) {
        try {
            String munjinKn = idNum1+"-"+idNum2;
            munjinMember.setMunjinKn(munjinKn);
            int result = munjinService.insertMunjinMember(munjinMember);
            if (result > 0) {
                // return "redirect:/index.jsp";
                return "redirect:/munjin/noti.bld";
            } else {
                model.addAttribute("msg", "정확한 이름과 주민번호를 입력해 주세요 ");
                return "munjin/error";
            }
        } catch (Exception e) {
            // 콘솔창에 에러 출력
            e.printStackTrace();
            // 에러 페이지에 에러 출력
            model.addAttribute("msg", e.getMessage());
            return "munjin/error";
        }
    }

    // ⭐ 문진 2단계  : 클라이언트 안내문 확인
    @GetMapping(value="/munjin/noti.bld")
    public String showNotice() {
        return "munjin/notice";
    }

    // ⭐ 문진 3단계  :  클라이언트
    @GetMapping(value="/munjin/form.bld")
    public String showMunjinForm()
    {
        return "munjin/form";
    }

    @PostMapping(value="/munjin/form.bld")
    public String registerMunjinData(Model model)
    {
        return "redirect:/munjin/thanks.bld";
    }



    // ⭐ 문진 4단계 ⭐ 문진 종료 안내
    @GetMapping(value = "munjin/thanks.bld")
    public String submitForm(Model model) {
        return "munjin/success";
    }

}
