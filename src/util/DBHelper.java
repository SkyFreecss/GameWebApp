package util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBHelper {
       private static final String driver = "com.mysql.jdbc.Driver";//数据库驱动
       //连接数据库的url地址
       private static final String url = "jdbc:mysql://localhost:3306/hwj?useUnicode=true&characterEncoding=utf-8";
       private static final String username = "root";//数据库的用户名
       private static final String password = "83493233";//数据库密码
       private static Connection conn;
       //静态代码块负责加载驱动
       
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
      
       //单例模式返回数据库连接对象。
       public static Connection getConnection()throws Exception
       {
    	   if(conn==null)
    	   {
    		   conn = DriverManager.getConnection(url, username, password);
    	   }
		return conn;
       }
       
       
       //测试数据库是否连接成功。
       public static void main(String args[])
       {
    	   //System.out.println("sadas");
    	   try
    	   {
    		   Connection conn = DBHelper.getConnection();
    		   
    	   if(conn!=null)
    	   {
    		   System.out.println("数据库连接正常！");
    	   }
    	   else
    	   {
    	       System.out.println("数据库连接异常！");
    	   }
    	   }
    	   catch(Exception e)
    	   {
    		   e.getStackTrace();
    	   }
    	   }

}
