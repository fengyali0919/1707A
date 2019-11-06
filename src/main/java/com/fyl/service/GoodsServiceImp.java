package com.fyl.service;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.fyl.bean.Goods;
import com.fyl.bean.Type;
import com.fyl.mapper.GoodsDao;


@Service
public class GoodsServiceImp implements GoodsService{

	@Resource
	public GoodsDao dao;
	public List<Goods> querylist(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return dao.querylist(map);
	}
	public int add(Goods goods) {
		// TODO Auto-generated method stub
		return dao.add(goods);
	}
	public List<Type> typelist() {
		// TODO Auto-generated method stub
		return dao.typelist();
	}
	public int deletegoods(String id) {
		// TODO Auto-generated method stub
		return dao.deletegoods(id);
	}

}
