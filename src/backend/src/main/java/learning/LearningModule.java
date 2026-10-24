package com.suraksha.suraksha.learning;

import jakarta.persistence.*;

// Maps to the learning_module table. The actual title/description text
// lives in module_text, read separately via LearningModuleRepository.
@Entity
@Table(name = "learning_module")
public class LearningModule {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "hazard_id", nullable = false)
    private Long hazardId;

    @Column(name = "sort_order", nullable = false)
    private int sortOrder;

    @Column(nullable = false, length = 20)
    private String status = "DRAFT";

    protected LearningModule() {
    }

    public Long getId() { return id; }
    public Long getHazardId() { return hazardId; }
    public int getSortOrder() { return sortOrder; }
    public String getStatus() { return status; }
}