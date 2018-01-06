package com.devteam.locvoiture.repository;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.devteam.locvoiture.model.Panne;

@Repository("panneRepository")
public interface PanneRepository extends JpaRepository<Panne, Integer> {

}
