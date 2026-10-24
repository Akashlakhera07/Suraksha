package com.suraksha.suraksha.web;

import com.suraksha.suraksha.learning.LearningModuleRepository;
import com.suraksha.suraksha.learning.ModuleSummary;
import com.suraksha.suraksha.user.AppUser;
import com.suraksha.suraksha.user.AppUserRepository;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class PageController {

    private final AppUserRepository appUserRepository;
    private final LearningModuleRepository learningModuleRepository;

    public PageController(AppUserRepository appUserRepository,
                          LearningModuleRepository learningModuleRepository) {
        this.appUserRepository = appUserRepository;
        this.learningModuleRepository = learningModuleRepository;
    }

    @GetMapping("/")
    public String root() {
        return "redirect:/home";
    }

    @GetMapping("/login")
    public String login() {
        return "login";
    }

    @GetMapping("/home")
    public String home(@AuthenticationPrincipal UserDetails principal, Model model) {
        AppUser user = appUserRepository.findByUsername(principal.getUsername())
                .orElseThrow();

        List<ModuleSummary> modules = learningModuleRepository.findPublishedModulesEnglish();

        model.addAttribute("fullName", user.getFullName());
        model.addAttribute("role", user.getRole());
        model.addAttribute("modules", modules);
        return "home";
    }
}