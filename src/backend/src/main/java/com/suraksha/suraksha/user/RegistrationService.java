
package com.suraksha.suraksha.user;

import com.suraksha.suraksha.common.Role;
import com.suraksha.suraksha.institution.Institution;
import com.suraksha.suraksha.institution.InstitutionRepository;

import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class RegistrationService {

    private final AppUserRepository appUserRepository;
    private final InstitutionRepository institutionRepository;
    private final PasswordEncoder passwordEncoder;

    public RegistrationService(
            AppUserRepository appUserRepository,
            InstitutionRepository institutionRepository,
            PasswordEncoder passwordEncoder) {

        this.appUserRepository = appUserRepository;
        this.institutionRepository = institutionRepository;
        this.passwordEncoder = passwordEncoder;
    }

    @Transactional
    public void register(
            String username,
            String fullName,
            String email,
            String joinCode,
            Role role,
            String password) {

        username = username.trim();
        fullName = fullName.trim();
        email = email.trim().toLowerCase();
        joinCode = joinCode.trim();

        if (username.isBlank() || fullName.isBlank()
                || email.isBlank() || joinCode.isBlank()
                || password == null || password.isBlank()) {
            throw new IllegalArgumentException("All fields are required.");
        }

        if (role != Role.STUDENT && role != Role.TEACHER) {
            throw new IllegalArgumentException(
                    "Only Student and Teacher registration is allowed.");
        }

        if (appUserRepository.existsByUsername(username)) {
            throw new IllegalArgumentException("Username is already taken.");
        }

        if (appUserRepository.existsByEmail(email)) {
            throw new IllegalArgumentException("Email is already registered.");
        }

        Institution institution = institutionRepository
                .findByJoinCode(joinCode)
                .orElseThrow(() -> new IllegalArgumentException(
                        "Invalid institution join code."));

        if (!institution.isActive()) {
            throw new IllegalArgumentException(
                    "This institution is currently inactive.");
        }

        String encodedPassword = passwordEncoder.encode(password);

        AppUser user = new AppUser(
                username,
                fullName,
                encodedPassword,
                role);

        user.setEmail(email);
        user.setInstitutionId(institution.getId());
        user.setActive(true);

        appUserRepository.save(user);
    }
}
