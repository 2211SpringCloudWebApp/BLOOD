package com.kh.blood.munjin.controller;

import com.kh.blood.munjin.domain.Form;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/munjin")
public class munjinController
{
//    @Autowired
//    private MunjinService munjinService;

    @RequestMapping(value="/init", method = RequestMethod.GET)
    public String initForm(Model model)
    {
        Form form = new Form();
        model.addAttribute("form", form);

        List<String> roaCheckboxes = new ArrayList<String>();
        roaCheckboxes.add("발열");
        roaCheckboxes.add("인후통");
        roaCheckboxes.add("설사");
        model.addAttribute("roaCheckboxes", roaCheckboxes);
        form.setRoaCheckboxes(roaCheckboxes);

        return "munjin/form";
    }

    @RequestMapping(value = "/thanks" , method = RequestMethod.POST)
    public String submitForm(Model model, Form form,
                             BindingResult result) {
        model.addAttribute("form", form);
        return "munjin/successForm";
    }
}
