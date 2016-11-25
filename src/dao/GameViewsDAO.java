package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import util.DBHelper;
import entity.GameViews;

public class GameViewsDAO {
	//������е���Ϸ��Ϣ
		public ArrayList<GameViews> getAllGameViews()
		{
			Connection conn=null;
			PreparedStatement stmt=null;
			ResultSet rs=null;
			ArrayList<GameViews> list = new ArrayList<GameViews>();//��Ϸ����
			
			try
			{
				conn = DBHelper.getConnection();
				String sql = "select * from gameviews where id=?;";//SQL���
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
					list.add(gameview);//��һ����Ʒ����һ�����ϡ�
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

		
}
