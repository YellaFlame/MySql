package org.generation.blogPessoal.controller;

import java.util.List;
import java.util.Optional;

import org.generation.blogPessoal.model.Postagem;
import org.generation.blogPessoal.repository.PostagemRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/v1/postagem")
@CrossOrigin("*")
public class PostagemController {
	@Autowired	
	private PostagemRepository repository;
	
	@GetMapping("/id")
	public Optional<Postagem> catbyID() {
		return repository.findById((long) 4);
	}
	
	@GetMapping("/all")
	public List<Postagem> catbyAll() {
		return repository.findAll();

	}
	
	@GetMapping("/titulo")
	public List<Postagem> catbyTitle() {
		return repository.findAllByTituloIgnoreCase("Fodase");
	}
}
