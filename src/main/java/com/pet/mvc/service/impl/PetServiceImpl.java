package com.pet.mvc.service.impl;

import com.pet.mvc.dao.PetDAO;
import com.pet.mvc.models.Pet;
import com.pet.mvc.service.PetService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@RequiredArgsConstructor
@Service
public class PetServiceImpl implements PetService {
    private final PetDAO petDAO;

    @Override
    @Transactional
    public List<Pet> getAll() {
        return petDAO.getAll();
    }

    @Override
    @Transactional
    public Pet getById(int id) {
        return petDAO.getById(id);
    }

    @Override
    @Transactional
    public void saveOrUpdate(Pet pet) {
        petDAO.saveOrUpdate(pet);
    }

    @Override
    @Transactional
    public void delete(int id) {
     petDAO.delete(id);
    }
}
