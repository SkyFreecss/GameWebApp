package util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBHelper {
       private static final String driver = "com.mysql.jdbc.Driver";//���ݿ�����
       //�������ݿ��url��ַ
       private static final String url = "jdbc:mysql://localhost:3306/hwj?useUnicode=true&characterEncoding=utf-8";
       private static final String username = "root";//���ݿ���û���
       private static final String password = "83493233";//���ݿ�����
       private static Connection conn;
       //��̬����鸺���������
       
       static
       {
    	   try
    	   {
    		   Class.forName(driver);
    	   }
    	   catch(Exception e)
    	   {
    		   e.printStackTrace();
    	   }
       }
      
       //����ģʽ�������ݿ����Ӷ���
       public static Connection getConnection()throws Exception
       {
    	   if(conn==null)
    	   {
    		   conn = DriverManager.getConnection(url, username, password);
    	   }
		return conn;
       }
       
       
       //�������ݿ��Ƿ����ӳɹ���
       public static void main(String args[])
       {
    	   //System.out.println("sadas");
    	   try
    	   {
    		   Connection conn = DBHelper.getConnection();
    		   
    	   if(conn!=null)
    	   {
    		   System.out.println("���ݿ�����������");
    	   }
    	   else
    	   {
    	       System.out.println("���ݿ������쳣��");
    	   }
    	   }
    	   catch(Exception e)
    	   {
    		   e.getStackTrace();
    	   }
    	   }

}
