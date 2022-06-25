package com.example.cvdev.service;


import com.example.cvdev.model.About;
import com.example.cvdev.repository.AboutRepository;
import org.springframework.stereotype.Service;

@Service
public class AboutService {

    private final AboutRepository aboutRepository;


    public AboutService(AboutRepository aboutRepository) {
        this.aboutRepository = aboutRepository;
    }

    public About getAboutById(Long id){
        return aboutRepository.findById(id).orElse(null);
    }


 /*   public void getAbout(){
        return aboutRepository.findAll();
    }*/
    public void editAbout(About about){
        aboutRepository.save(about);
    }
}
