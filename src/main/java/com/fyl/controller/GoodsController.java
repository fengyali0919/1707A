package com.fyl.controller;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fyl.bean.Goods;
import com.fyl.bean.Type;
import com.fyl.service.GoodsService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
public class GoodsController {

	@Resource
	public GoodsService service;
	
	@RequestMapping("/list")
	public ModelAndView querylist(String ename,String name,String sdate,@RequestParam(defaultValue="1")Integer pageNum){
		ModelAndView mv = new ModelAndView();
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("ename", ename);
		map.put("name", name);
		map.put("sdate", sdate);
		PageHelper.startPage(pageNum, 3);
		List<Goods> list = service.querylist(map);
		PageInfo<Goods> page = new PageInfo<Goods>(list);
		mv.setViewName("list");
		mv.getModelMap().addAttribute("list", list);
		mv.getModelMap().addAttribute("page", page);
		return mv;
	}
	
	@RequestMapping("/add")
	@ResponseBody
	public int add(Goods goods){
		int i = service.add(goods);
		if(i>0){
			return 1;
		}
		return 0;
	}
	
	@RequestMapping("/typelist")
	@ResponseBody
	public List<Type> typelist(){
		List<Type> list = service.typelist();
		return list;
	}
	
	@RequestMapping("/deletegoods")
	@ResponseBody
	public int deletegoods(String id){
		int i = service.deletegoods(id);
		return i;
	}
	
	@RequestMapping("/getById")
	public String getById(Integer id,Model model){
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("id", id);
		List<Goods> list = service.querylist(map);
		model.addAttribute("list",list.get(0));
		return "update";
	}
}
