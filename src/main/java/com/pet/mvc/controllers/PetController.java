package com.pet.mvc.controllers;

import com.pet.mvc.models.Pet;
import com.pet.mvc.service.PetService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
@RequiredArgsConstructor
public class PetController {

    private final PetService petService;

    @GetMapping("/")
    public String pet (Model model){
        model.addAttribute("pets" ,petService.getAll());
        model.addAttribute("pet",new Pet());
        return "pets";
    }
    @GetMapping("/{id}")
    public String petInfo(@PathVariable("id") int id,Model model){
        model.addAttribute("pet",petService.getById(id));
        return "pet-info";
    }
}
