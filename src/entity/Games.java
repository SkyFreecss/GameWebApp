package entity;


public class Games {
       private int id; //��Ϸ���
       private String name;//��Ϸ����
       private String company;//������˾
       private int price;//��Ϸ�۸�
       private String picture;//��ϷͼƬ
       private String summary;//��Ϸ���
       private String details;//��Ϸ��ϸ��Ϣ
       private String bigpicture;//��ͼƬ
    
   	//��װ  
       
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
