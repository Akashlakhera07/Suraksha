# AGENTS.md — Suraksha (Disaster Preparedness Education System)

## Project context
This is a Spring Boot web app. Planning and design docs already exist — read them
before generating code, don't redesign from scratch:
- docs/01-project-initiation/ — purpose, objectives, scope, charter
- docs/02-requirements/01-srs.md — the full functional + non-functional requirements (FR-* IDs)
- docs/03-design/01-architecture.md — tech stack and architecture decisions
- docs/03-design/02-database-design.md — entity relationships (full schema: src/database/schema.sql)
- docs/03-design/03-api-design.md — REST endpoint conventions
- docs/03-design/04-ui-wireframes.md — screen layouts to follow

## What already exists — do not recreate or duplicate
- Spring Boot app lives in src/backend (Maven project, package com.suraksha.suraksha)
- Java 21, Spring Boot, MySQL (NOT PostgreSQL — the docs mention Postgres from an
  earlier design pass, MySQL is what's actually wired up and in use)
- MySQL database `suraksha` is already created with 32 tables from src/database/schema.sql
- Working features already built: login (Spring Security + BCrypt, checks the
  app_user table), student dashboard listing hazard modules, module/lesson viewing
- Existing packages under com.suraksha.suraksha: common (Role enum), config
  (SecurityConfig), user (AppUser, AppUserRepository, SurakshaUserDetailsService),
  learning (Hazard, LearningModule, Lesson, repositories, projections), web (page controllers)
- Templates are server-rendered Thymeleaf in src/backend/src/main/resources/templates,
  inline <style> per page (no separate CSS file yet)

## Rules to follow
1. Package new code by feature, matching the existing pattern (entity + repository +
   projection interfaces for native queries, controller in `web` package).
2. Use native @Query with interface-based projections for read queries (established
   pattern) rather than switching to full JPA relationship mapping mid-project.
3. Never modify src/database/schema.sql's existing tables without checking
   docs/03-design/02-database-design.md first — this schema is the source of truth
   and the database already has data in it.
4. Local MySQL connection details are in src/backend/src/main/resources/application-dev.properties
   — this file is gitignored and contains a real password. Never print, commit, or
   overwrite it carelessly. If a new config value is needed, tell me what to add rather
   than guessing.
5. Keep building toward the Must-have requirements first (see docs/02-requirements/01-srs.md,
   priority column): assessments (FR-AS-*), scenario simulations (FR-SS-*), virtual
   drills (FR-VD-*), then Should-haves.
6. Match the existing visual style: blue (#2b6cb0) header/accent, white cards, rounded
   corners, Suraksha branding — see any existing .html file in templates/ for the pattern.
7. After generating a feature, tell me what SQL (if any) I need to run manually to seed
   test data, same as the pattern already used (seed-test-user.sql, seed-modules.sql,
   seed-lessons.sql in src/database/).
