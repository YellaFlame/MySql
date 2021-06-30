package org.generation.minhaLojaDeGames.controller;

import java.util.List;

import java.util.Optional;

import javax.validation.Valid;

import org.generation.minhaLojaDeGames.model.Categoria;
import org.generation.minhaLojaDeGames.repository.CategoriaRepository;
import org.generation.minhaLojaDeGames.service.CategoriaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/v0")
public class CategoriaController {

	@Autowired
	private CategoriaService categoriaService;

	@GetMapping("/all")
	public ResponseEntity<ResponseEntity<List<Categoria>>> getAll() {
		return ResponseEntity.ok(categoriaService.findAll());
	}

	@GetMapping("/buscar/{idCategoria}")
	public Optional<?> findById(@Valid @PathVariable Long idCategoria) {
		return categoriaService.findIdCategoria(idCategoria);
	}
	@GetMapping("/buscar/descricao/{descricao}")
	public ResponseEntity<List<Categoria>> findById(@Valid @PathVariable String descricao) {
		return ResponseEntity.ok(categoriaService.findByDescricao(descricao));
	}

	@PostMapping("/cadastro")
	public ResponseEntity<?> cadastroNovaCategoria(@Valid @RequestBody Categoria categoria) {
		return ResponseEntity.ok(categoriaService.cadastrar(categoria));
	}
	
	@PutMapping("/{idCategoria}/atualizar")
	public ResponseEntity<Categoria> atualizarCategoria(@Valid @PathVariable Long idCategoria, @Valid @RequestBody Categoria categoria){
		return categoriaService.atualizarCategoria(idCategoria, categoria).map(categoriaAtualizada -> ResponseEntity.status(201).body(categoriaAtualizada)).orElse(ResponseEntity.status(400).build());
	}
}
