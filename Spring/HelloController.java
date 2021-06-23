package com.helloworld.hello.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/atividade1")
public class HelloController {

	@GetMapping
	public String atividade1() {
		return "Nesta atividade eu utilizei "
				+ "Habilidades de persistencia e mentalidade de crescimento.";
	}

	@RestController
	@RequestMapping("/atividade2")
	public class HelloController2 {

		@GetMapping
		public String atividade2() {
			return "Objetivos: Absorver o maximo de conteudo possivel,"
					+ " aplicar em atividades extracurriculares para treinar.";
		}
	}
}
