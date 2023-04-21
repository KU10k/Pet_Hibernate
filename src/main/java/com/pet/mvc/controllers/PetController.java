package com.pet.mvc.controllers;

import com.pet.mvc.models.Pet;
import com.pet.mvc.service.PetService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import javax.validation.Valid;

@Controller
@RequiredArgsConstructor
public class PetController {

    private final PetService petService;

    @GetMapping("/")
    public String pet (Model model){
        model.addAttribute("pets" ,petService.getAll());
        return "pets";
    }
    @GetMapping("/{id}")
    public String petInfo(@PathVariable("id") int id,Model model){
        model.addAttribute("pet",petService.getById(id));
        return "pet-info";
    }
    @GetMapping("/create")
    public String petCreate(Model model){
        model.addAttribute("create",true);
        model.addAttribute("pet",new Pet());
        return "pet-save-or-update";
    }
    @GetMapping("/update/{id}")
    public String petUpdate(@PathVariable("id") int id,Model model){
        model.addAttribute("create",false);
        model.addAttribute("pet",petService.getById(id));
        return "pet-save-or-update";
    }
    @PostMapping("/create-update")
    public String petCreate(@Valid @ModelAttribute("pet") Pet pet, BindingResult result){
        if(result.hasErrors()) return "pet-save-or-update";
        petService.saveOrUpdate(pet);
        return "redirect:/";
    }


    @PostMapping("/delete/{id}")
    public String petDelete(@PathVariable("id") int id){
        petService.delete(id);
        return "redirect:/";
    }

}
