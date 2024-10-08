package com.multi.spring;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/order")
public class ClassMappingController {
	
	@GetMapping("/regist")
	public void registOrder(Model model) {
		model.addAttribute("message", "주문등록~~");
		
	}

	@RequestMapping(value= {"modify", "delete"}, method = RequestMethod.POST) //확인 두개 동시처리하기
	public String modifyAndDelete(Model model) {
		
		model.addAttribute("message", "POST 방식의 주문 정보 수정과 주문 정보 삭제 공통 처리용 핸들러 메소드 호출함...");
		
		return "mappingResult";
	}
	
	@GetMapping("detail/{orderNo}")
	public String selectOrderDetail(Model model, @PathVariable("orderNo") int orderNo) {
		model.addAttribute("message", orderNo + "번 주문 상세 내용 조회용 핸들러 메소드 호출함...");
		
		return "mappingResult";
	}
}
