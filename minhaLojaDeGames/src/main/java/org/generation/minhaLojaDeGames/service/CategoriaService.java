package org.generation.minhaLojaDeGames.service;

import java.util.List;

import java.util.Optional;

import org.generation.minhaLojaDeGames.model.Categoria;
import org.generation.minhaLojaDeGames.repository.CategoriaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

@Service
public class CategoriaService {
	@Autowired
	private CategoriaRepository repository;

	public ResponseEntity<List<Categoria>> findAll() {
		List<Categoria> listaCategoria = repository.findAll();
		if (listaCategoria.isEmpty()) {
			return ResponseEntity.status(204).build();
		} else {
			return ResponseEntity.status(200).body(listaCategoria);
		}
	}

	public Optional<?> findIdCategoria(Long idCategoria) {
		return repository.findById(idCategoria);
	}

	public List<Categoria> findByDescricao(String descricao) {
		return repository.findByDescricaoContainingIgnoreCase(descricao);
	}

	public Optional<?> cadastrar(Categoria novaCategoria) {
		return ((Optional<?>) repository.findByCategoriaContainingIgnoreCase(novaCategoria.getCategoria()))
				.map(residuoExistente -> {
					return Optional.empty();
				}).orElseGet(() -> {
					return Optional.ofNullable(repository.save(novaCategoria));
				});
	}

	public Optional<Categoria> atualizarCategoria(Long idCategoria, Categoria novaCategoria) {
		return repository.findById(idCategoria).map(categoriaExistente -> {
			categoriaExistente.setCategoria(novaCategoria.getCategoria());
			categoriaExistente.setDescricao(novaCategoria.getDescricao());
			return Optional.ofNullable(repository.save(novaCategoria));
		}).orElseGet(() -> {
			return Optional.empty();
		});

	}
}
