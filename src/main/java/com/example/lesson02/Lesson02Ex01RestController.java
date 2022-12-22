package com.example.lesson02;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.lesson02.bo.UsedGoodsBO;
import com.example.lesson02.model.UsedGoods;

@RestController
public class Lesson02Ex01RestController {
	
	@Autowired
	private UsedGoodsBO usedGoodsBO; // 스프링 빈을 DI(주입)받음
	
	@RequestMapping("/lesson02/ex01")
	public List<UsedGoods> ex01() {
		List<UsedGoods> usedGoodsList = usedGoodsBO.getUsedGoodsList();
		return usedGoodsList; // json
	}
	
	// Error
	// 1) xml 파일 쿼리 오타 (console - ### -> database 문제)
	// 2) xml 파일 메소드/주소 오타 (console - ibatis -> database 문제)
	// 3) spring bean 등록 안함 (ex) @Service, @Repository, @Autowired)

}
