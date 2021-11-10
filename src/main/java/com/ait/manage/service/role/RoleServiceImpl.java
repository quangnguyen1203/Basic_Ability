package com.ait.manage.service.role;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ait.manage.model.Role;
import com.ait.manage.repository.RoleRepository;

@Service
public class RoleServiceImpl implements RoleService {

    @Autowired
    RoleRepository repository;

    @Override
    public Iterable<Role> findAll() {
        return repository.findAll();
    }

    @Override
    public Optional<Role> findById(Long id) {
        return repository.findById(id);
    }

    @Override
    public Role save(Role role) {
        return repository.save(role);
    }

    @Override
    public void remove(Long id) {
        repository.deleteById(id);
    }
}
