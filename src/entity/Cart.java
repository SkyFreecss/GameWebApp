package entity;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

public class Cart {
       
	  //購買商品的集合。
	   private HashMap<Games,Integer>goods;
	   
	   //購物車的總金額。
	   private double totalPrice;
	   
		//構造方法。
	   public Cart()
	   {
		    goods = new HashMap<Games,Integer>();
		    totalPrice = 0.0;
	   }
	   
	   public HashMap<Games, Integer> getGoods() {
		return goods;
	}

	public void setGoods(HashMap<Games, Integer> goods) {
		this.goods = goods;
	}

	public double getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}

    //添加商品進購物車的方法。
	
	public boolean addGoodsInCart(Games game,int number)
	{
		goods.put(game,number);
		calTotalPrice();
		return true;
	}
	
	//刪除商品的方法。
	
	public boolean removeGoodsFromCart(Games game)
	{
		goods.remove(game);
		calTotalPrice();
		return true;
	}
	   
	
	//統計購物車的總金額
	public double calTotalPrice()
	{
		double sum = 0.0;
		Set<Games> keys = goods.keySet();//獲得鍵的集合。
		Iterator<Games> ga = keys.iterator();//獲得迭代器對象。
		while(ga.hasNext())
		{
			Games g = ga.next();
			sum +=g.getPrice()*goods.get(g);
		}
		this.setTotalPrice(sum);
		return getTotalPrice();
	}
}

