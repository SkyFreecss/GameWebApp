package entity;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

public class Cart {
       
	  //ُ�I��Ʒ�ļ��ϡ�
	   private HashMap<Games,Integer>goods;
	   
	   //ُ��܇�Ŀ����~��
	   private double totalPrice;
	   
		//���췽����
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

    //�����Ʒ�Mُ��܇�ķ�����
	
	public boolean addGoodsInCart(Games game,int number)
	{
		goods.put(game,number);
		calTotalPrice();
		return true;
	}
	
	//�h����Ʒ�ķ�����
	
	public boolean removeGoodsFromCart(Games game)
	{
		goods.remove(game);
		calTotalPrice();
		return true;
	}
	   
	
	//�yӋُ��܇�Ŀ����~
	public double calTotalPrice()
	{
		double sum = 0.0;
		Set<Games> keys = goods.keySet();//�@���I�ļ��ϡ�
		Iterator<Games> ga = keys.iterator();//�@�õ���������
		while(ga.hasNext())
		{
			Games g = ga.next();
			sum +=g.getPrice()*goods.get(g);
		}
		this.setTotalPrice(sum);
		return getTotalPrice();
	}
}

