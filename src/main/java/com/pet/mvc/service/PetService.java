package com.pet.mvc.service;

import com.pet.mvc.models.Pet;

import java.util.List;

public interface PetService {
    List<Pet> getAll();

    Pet getById(int id);

    void saveOrUpdate(Pet pet);

    void delete(int id);
}
