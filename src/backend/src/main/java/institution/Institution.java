
package com.suraksha.suraksha.institution;

import jakarta.persistence.*;

@Entity
@Table(name = "institution")
public class Institution {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false, length = 200)
    private String name;

    @Column(name = "institution_type", nullable = false, length = 20)
    private String institutionType;

    private String state;

    private String district;

    private String address;

    @Column(name = "contact_email", length = 150)
    private String contactEmail;

    @Column(name = "join_code", nullable = false, unique = true, length = 20)
    private String joinCode;

    @Column(nullable = false)
    private boolean active = true;

    public Long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getJoinCode() {
        return joinCode;
    }

    public boolean isActive() {
        return active;
    }
}
