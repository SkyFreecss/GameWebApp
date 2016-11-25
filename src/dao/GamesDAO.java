package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import util.DBHelper;

import entity.Games;



//游戏的业务逻辑类

public class GamesDAO {
       
	//获得所有的游戏信息
	public ArrayList<Games> getAllGames()
	{
		Connection conn=null;
		PreparedStatement stmt=null;
		ResultSet rs=null;
		ArrayList<Games> list = new ArrayList<Games>();//游戏集合
		
		try
		{
			conn = DBHelper.getConnection();
			String sql = "select * from games;";//SQL语句
			stmt = conn.prepareStatement(sql);
			rs = stmt.executeQuery();
			while(rs.next())
			{
				Games game = new Games();
				game.setId(rs.getInt("id"));
				game.setName(rs.getString("name"));
				game.setCompany(rs.getString("company"));
				game.setPrice(rs.getInt("price"));
				game.setPicture(rs.getString("picture"));
				list.add(game);//把一个商品加入一个集合。
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
	
	
	//根据游戏编号获取其信息。
public Games getGamesById(int id)
	{
		Connection conn=null;
		PreparedStatement stmt=null;
		ResultSet rs=null;
		
		try
		{
			conn = DBHelper.getConnection();
			String sql = "select * from games where id=?;";//SQL语句
			stmt = conn.prepareStatement(sql);
			stmt.setInt(1,id);
			rs = stmt.executeQuery();
			if(rs.next())
			{
				Games game = new Games();
				game.setId(rs.getInt("id"));
				game.setName(rs.getString("name"));
				game.setCompany(rs.getString("company"));
				game.setPrice(rs.getInt("price"));
				game.setPicture(rs.getString("picture"));
				game.setSummary(rs.getString("summary"));
				game.setDetails(rs.getString("details"));
				game.setBigpicture(rs.getString("bigpicture"));
				
				return game;
			}
			else
			{
				return null;
			}
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


//getGamesById类测试
public static void main(String args[])
{
	GamesDAO gameDao = new GamesDAO();
	Games game = gameDao.getGamesById(0);
	
	
	if(game!=null)
	{
		System.out.println("可以找到对应编号");
	}
	else
	{
		System.out.println("无法找到对应编号");
	}
	
	
}
	
}
