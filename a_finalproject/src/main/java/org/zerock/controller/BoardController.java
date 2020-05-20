package org.zerock.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.domain.BoardVO;
import org.zerock.service.BoardService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping(value="/board/*",produces="text/plain;charset=UTF-8")
@AllArgsConstructor
public class BoardController {
	
	private BoardService service;
	
	@GetMapping("/list")
	public void list(Model model) {
		log.info("list");
		
		model.addAttribute("list",service.getList());
		
	}

	@PostMapping("/register")
	public String register(BoardVO board, RedirectAttributes rttr) {
		
		log.info("register: "+board);
		service.register(board);
		rttr.addFlashAttribute("result",board.getBno());
		
		return "redirect:/board/list";
		
		
	}
	
	@GetMapping("/get")
	public void get(@RequestParam("bno") Long bno, Model model) {
		log.info("/get");
		model.addAttribute("board",service.get(bno));
		
		
	}
	
	@PostMapping("/modify")
	public String modify(BoardVO board, RedirectAttributes rttr) {
		if(service.modify(board)) {
			rttr.addFlashAttribute("result","success");
		}
		return "redirect:/board/list";
	}
	
	
	@PostMapping("/remove")
	public String remove(@RequestParam("bno") Long bno,RedirectAttributes rttr) {
		log.info("remove....."+bno);
		if(service.remove(bno)) {
			rttr.addFlashAttribute("result","sucess");
		}
		return "redirect:/board/list";
		
	}
	@GetMapping("/insert")
	public void insert() {
		
	}
	
	@PostMapping("/add")
	public String add(BoardVO board) {
		System.out.println(board.getTitle() +" : "+board.getContent()+" : "+board.getWriter());
		
		service.insert(board);
		return "redirect:/board/list";
	}
	
	
}
