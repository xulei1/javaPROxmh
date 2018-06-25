package XMH.ldyb.login.entity;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="tie")
public class Tie {
	
	@Id
	private String t_id;
	public String getT_id() {
		return t_id;
	}
	public void setT_id(String t_id) {
		this.t_id = t_id;
	}
	public String getT_ip() {
		return t_ip;
	}
	public void setT_ip(String t_ip) {
		this.t_ip = t_ip;
	}
	public String getT_txt() {
		return t_txt;
	}
	public void setT_txt(String t_txt) {
		this.t_txt = t_txt;
	}
	public String getT_data() {
		return t_data;
	}
	public void setT_data(String t_data) {
		this.t_data = t_data;
	}
	public String getT_type() {
		return t_type;
	}
	public void setT_type(String t_type) {
		this.t_type = t_type;
	}
	public String getT_head() {
		return t_head;
	}
	public void setT_head(String t_head) {
		this.t_head = t_head;
	}
	public String getT_image() {
		return t_image;
	}
	public void setT_image(String t_image) {
		this.t_image = t_image;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public int getMoney() {
		return money;
	}
	public void setMoney(int money) {
		this.money = money;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	private String t_ip;
	private String t_txt;
	private String t_data;
	private String t_type;
	private String t_head;
	private String t_image;
	private String type;
	private int money;
	private String tel;

}
