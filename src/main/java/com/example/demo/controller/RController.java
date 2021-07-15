package com.example.demo.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class RController {

	@RequestMapping("/")
	public String helloWorld() {
		return "Hello, World!";
	}
}
