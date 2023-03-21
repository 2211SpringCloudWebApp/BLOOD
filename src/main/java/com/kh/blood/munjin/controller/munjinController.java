package com.kh.blood.munjin.controller;

import com.kh.blood.munjin.domain.Form;
import com.kh.blood.munjin.domain.MunjinMember;
import com.kh.blood.munjin.service.MunjinService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class munjinController
{
    @Autowired
    private MunjinService munjinService;

    @GetMapping ("/munjin/intro.bld")
    public String munjinRegister() {
        return "munjin/intro";
    }

    //⭐ 문진 1 단계
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

    // ⭐ 문진 2단계 ⭐ 안내문 출력.
    @GetMapping(value="/munjin/noti.bld")
    public String showNotice() {
        return "munjin/notice";
    }

    // ⭐ 문진 3단계 ⭐ 문진사항 선택
    @GetMapping(value="/munjin/form.bld")
    public String showMunjinForm(@ModelAttribute Form form, Model model)
    {

        return "munjin/form";
    }

    @PostMapping(value="/munjin/form.bld")
    public String registerMunjinData(
            @RequestParam("rosCondition") List<String> rosCondition
            , @RequestParam("rosDay") List<String> rosDay
            , @RequestParam("rosWeek") List<String> rosWeek
            , @RequestParam("rosMonth") List<String> rosMonth
            , @RequestParam("rosYear") List<String> rosYear
            , @RequestParam("rosEE") List<String> rosEE
            , @RequestParam("rosDrug") List<String> rosDrug
            , @RequestParam("rosZrug") List<String> rosZrug
            , @RequestParam("rosMosquito") List<String> rosMosquito
            , @RequestParam("rosVCJD") List<String> rosVCJD
            , Model model)
    {
//        [ ]의 해당사항 없음 클릭 --  해당 맴버변수 안에 '해당 없음' 결과를 넣어줌
//        [ ]의 선택사항 저장 -- 리스트로
        System.out.println(rosCondition);
        System.out.println(rosDay);
        System.out.println(rosWeek);
        System.out.println(rosMonth);
        System.out.println(rosCondition);
        System.out.println(rosYear);
        System.out.println(rosEE);
        System.out.println(rosDrug);
        System.out.println(rosZrug);
        System.out.println(rosMosquito);
        System.out.println(rosVCJD);

        return "redirect:/munjin/thanks.bld";
    }

    // ⭐ 문진 4단계 ⭐ 문진 종료. .
    @GetMapping(value = "munjin/thanks.bld")
    public String submitForm(Model model) {
        return "munjin/success";
    }

}
