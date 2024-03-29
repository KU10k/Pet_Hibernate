package com.pet.mvc.dao;

import com.pet.mvc.models.Pet;

import java.util.List;

public interface PetDAO {
    List<Pet> getAll();

    Pet getById(int id);

    void saveOrUpdate(Pet pet);

    void delete(int id);
}
