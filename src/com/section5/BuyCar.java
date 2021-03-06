package com.section5;

import java.io.*;
import java.util.*;;

public class BuyCar implements Serializable {

	Hashtable<String, Integer> myGoods = new Hashtable<String, Integer>();

	public static void main(String[] args) {
		System.out.println("BuyCar build success....");
	}
	
	public BuyCar() {
		// 构造函数
		System.out.println("1:"+this);
	}

	public void addGoods(String Goods_id, int Goods_Count) {
		System.out.println("2:"+this);
		// 把商品加入购物车
		if (myGoods.containsKey(Goods_id)) {
			// 购物车存在此商品则累加个数
			int temp_count = ((Integer) myGoods.get(Goods_id)).intValue();
			temp_count = temp_count + Goods_Count;
			myGoods.put(Goods_id, new Integer(temp_count));
		} else {
			// 购物车不存在此商品
			myGoods.put(Goods_id, new Integer(Goods_Count));
		}
	}

	public boolean minusGoods(String Goods_id, int Goods_Count) {
		System.out.println("5:"+this);
		// 把商品从购物车中拿出
		if (myGoods.containsKey(Goods_id)) {
			// 购物车中存在此商品则减少个数
			int temp_Count = ((Integer) myGoods.get(Goods_id)).intValue();
			temp_Count = temp_Count - Goods_Count;
			System.out.println("********:"+temp_Count);
			if (temp_Count <= 0) {
				deleteGoods(Goods_id);
			} else {
				myGoods.put(Goods_id, new Integer(temp_Count));
			}
			return true;
		} else {
			// 购物车不存在此商品
			return false;
		}
	}
	
	public Hashtable<String, Integer> listMyGoods() {
		System.out.println("3:"+this);
		//得到购物车中所有商品
		return myGoods;
	}

	public boolean deleteGoods(String goods_id) {
		//从购物车中删除一件商品
		if (myGoods.remove(goods_id) == null) {
			return false;
		} else {
			return true;
		}
	}
}
