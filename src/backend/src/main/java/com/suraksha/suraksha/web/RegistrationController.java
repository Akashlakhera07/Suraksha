
package com.suraksha.suraksha.web;

import com.suraksha.suraksha.common.Role;
import com.suraksha.suraksha.user.RegistrationService;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class RegistrationController {

    private final RegistrationService registrationService;

    public RegistrationController(RegistrationService registrationService) {
        this.registrationService = registrationService;
    }

    @GetMapping("/register")
    public String showRegistrationPage() {
        return "register";
    }

    @PostMapping("/register")
    public String registerUser(
            @RequestParam(required = false) String username,
            @RequestParam(required = false) String fullName,
            @RequestParam(required = false) String email,
            @RequestParam(required = false) String joinCode,
            @RequestParam(required = false) String role,
            @RequestParam(required = false) String password,
            @RequestParam(required = false) String confirmPassword,
            Model model) {

        try {
            if (password == null || !password.equals(confirmPassword)) {
                throw new IllegalArgumentException("Passwords do not match.");
            }

            if (role == null || role.isBlank()) {
                throw new IllegalArgumentException("Please select your role.");
            }

            Role selectedRole = Role.valueOf(role.trim().toUpperCase());

            registrationService.register(
                    username,
                    fullName,
                    email,
                    joinCode,
                    selectedRole,
                    password);

            return "redirect:/login?registered";

        } catch (IllegalArgumentException e) {
            model.addAttribute("error", e.getMessage());
            return "register";
        }
    }
}
