package com.fyl.service;

import java.util.HashMap;
import java.util.List;

import com.fyl.bean.Goods;
import com.fyl.bean.Type;


public interface GoodsService {

	List<Goods> querylist(HashMap<String, Object> map);

	int add(Goods goods);

	List<Type> typelist();

	int deletegoods(String id);

}
