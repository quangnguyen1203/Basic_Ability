package com.ait.manage.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.ait.manage.model.Role;

@Repository
public interface RoleRepository extends JpaRepository<Role, Long> {
}
