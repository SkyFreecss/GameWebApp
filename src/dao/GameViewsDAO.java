package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import util.DBHelper;
import entity.GameViews;

public class GameViewsDAO {
	//获得所有的游戏信息
		public ArrayList<GameViews> getAllGameViews()
		{
			Connection conn=null;
			PreparedStatement stmt=null;
			ResultSet rs=null;
			ArrayList<GameViews> list = new ArrayList<GameViews>();//游戏集合
			
			try
			{
				conn = DBHelper.getConnection();
				String sql = "select * from gameviews where id=?;";//SQL语句
				stmt = conn.prepareStatement(sql);
				rs = stmt.executeQuery();
				if(rs.next())
				{
					GameViews gameview = new GameViews();
					gameview.setId(rs.getInt("id"));
					gameview.setName(rs.getString("name"));
					gameview.setCompany(rs.getString("company"));
					gameview.setDetails(rs.getString("details"));
					gameview.setPrice(rs.getInt("price"));
					gameview.setPicture(rs.getString("picture"));
					list.add(gameview);//把一个商品加入一个集合。
				}
				return list;

			}
			catch(Exception e)
			{
				e.printStackTrace();
				return null;
			}
			finally
			{
				//释放数据集对象
				if(rs!=null)
				{
					try
					{
						rs.close();
						rs=null;
				    }
					catch(Exception e)
					{
						e.printStackTrace();
					}
				}
				
				//释放语句对象
				if(stmt!=null)
				{
					try
					{
						stmt.close();
						stmt=null;
					}
					catch(Exception e)
					{
						e.printStackTrace();
					}
				}
			}
		}

		
}
