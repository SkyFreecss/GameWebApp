package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import util.DBHelper;

import entity.Games;



//��Ϸ��ҵ���߼���

public class GamesDAO {
       
	//������е���Ϸ��Ϣ
	public ArrayList<Games> getAllGames()
	{
		Connection conn=null;
		PreparedStatement stmt=null;
		ResultSet rs=null;
		ArrayList<Games> list = new ArrayList<Games>();//��Ϸ����
		
		try
		{
			conn = DBHelper.getConnection();
			String sql = "select * from games;";//SQL���
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
				list.add(game);//��һ����Ʒ����һ�����ϡ�
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
			//�ͷ����ݼ�����
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
			
			//�ͷ�������
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
	
	
	//������Ϸ��Ż�ȡ����Ϣ��
public Games getGamesById(int id)
	{
		Connection conn=null;
		PreparedStatement stmt=null;
		ResultSet rs=null;
		
		try
		{
			conn = DBHelper.getConnection();
			String sql = "select * from games where id=?;";//SQL���
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
			//�ͷ����ݼ�����
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
			
			//�ͷ�������
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


//getGamesById�����
public static void main(String args[])
{
	GamesDAO gameDao = new GamesDAO();
	Games game = gameDao.getGamesById(0);
	
	
	if(game!=null)
	{
		System.out.println("�����ҵ���Ӧ���");
	}
	else
	{
		System.out.println("�޷��ҵ���Ӧ���");
	}
	
	
}
	
}
