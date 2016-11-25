package entity;


public class Games {
       private int id; //游戏编号
       private String name;//游戏名称
       private String company;//开发公司
       private int price;//游戏价格
       private String picture;//游戏图片
       private String summary;//游戏简介
       private String details;//游戏详细信息
       private String bigpicture;//大图片
    
   	//封装  
       
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	
	public String getSummary() {
		return summary;
	}
	public void setSummary(String summary) {
		this.summary = summary;
	}
	public String getDetails() {
		return details;
	}
	public void setDetails(String details) {
		this.details = details;
	}
	public String getBigpicture() {
		return bigpicture;
	}
	public void setBigpicture(String bigpicture) {
		this.bigpicture = bigpicture;
	}
	
       
}
