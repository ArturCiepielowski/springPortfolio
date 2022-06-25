package com.example.cvdev.controller;


import com.example.cvdev.model.About;
import com.example.cvdev.service.AboutService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.view.RedirectView;

@Controller
public class AboutController {

    private final AboutService aboutService;

    public AboutController(AboutService aboutService) {
        this.aboutService = aboutService;
    }


    @GetMapping("/about")
    public String getAbout(){
        return "about/about";
    }


    @GetMapping("/aboutEdit/{id}")
    public String getAboutEdit(@PathVariable("id") Long id, Model model){
        About about = aboutService.getAboutById(id);
        model.addAttribute("about",about);

        return "about/aboutEdit";
    }

    @PostMapping("/aboutEdit/{id}")
    public RedirectView postEditAbout(About newAbout){
      aboutService.editAbout(newAbout);
      return new RedirectView("/about");
    }


 /*   @GetMapping("/aboutEdit")
    public String getEditPerson(Model model) {
        About about = aboutService.editAbout(About about);
        model.addAttribute("about", about);
        return "about/aboutEdit";
    }*/
}
