
package com.suraksha.suraksha.institution;

import org.springframework.data.jpa.repository.JpaRepository;
import java.util.Optional;

public interface InstitutionRepository extends JpaRepository<Institution, Long> {

    Optional<Institution> findByJoinCode(String joinCode);
}
