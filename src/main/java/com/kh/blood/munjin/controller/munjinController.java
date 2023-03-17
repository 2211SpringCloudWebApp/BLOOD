package com.kh.blood.munjin.controller;

import com.kh.blood.munjin.domain.Form;
import com.kh.blood.munjin.domain.MunjinMember;
import com.kh.blood.munjin.service.MunjinService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
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
    /**
     * ⭐ 문진 1단계 ⭐ 이름과 주민번호를 입력받고 저장한다.
     * @param munjinMember
     * @param model
     * @return
     */
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
    // ⭐ 문진 2단계 ⭐ 안내문을 제공한다.
    @GetMapping(value="/munjin/noti.bld")
    public String showNotice() {
        return "munjin/notice";
    }
    /**
     * ⭐ 문진 3단계 ⭐ form 양식을 보내 채크한 정보들을 가지고 있는다.
     * @param model
     * @return
     */
    @GetMapping(value="/munjin/form.bld")
    public String showMunjinForm(Model model)
    {
        //Form form = new Form();
        //model.addAttribute("form", form);

//        List<String> rosCheckboxes = new ArrayList<String>();
//        rosCheckboxes.add("발열");
//        rosCheckboxes.add("인후통");
//        rosCheckboxes.add("설사");
//        model.addAttribute("rosCheckboxes", rosCheckboxes);
        //form.setRoaCheckboxes(rosCheckboxes);

        return "munjin/form";
    }

    //⭐ 문진 4단계 ⭐ 동의서를 제공한다.
    @GetMapping("munjin/agree.bld")
    public String initAgree(Model model)
    {
        Form form = new Form();
        model.addAttribute("form", form);

        List<String> agreeCheckboxes = new ArrayList<String>();
        agreeCheckboxes.add("모라모라 동의하시겠습니까");
        agreeCheckboxes.add("머라머라 동의하시겠습니까");
        agreeCheckboxes.add("뭐라뭐라 동의하시겠습니까");
        agreeCheckboxes.add("무라무라 동의하시겠습니까");
        model.addAttribute("agreeCheckboxes", agreeCheckboxes);
        form.setAgreeCheckBoxes(agreeCheckboxes);

        return "munjin/agree";

    }
    /**
     * ⭐ 문진 5단계 ⭐ 감사인사를 제공하고 고객이 선택한 전자문진 내역을 출력한다. .
     * @param model
     * @param form
     * @param result
     * @return
     */
    @GetMapping(value = "munjin/thanks.bld")
    public String submitForm(Model model) {
        return "munjin/success";
    }

}
