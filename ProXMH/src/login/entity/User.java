package login.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="User")
public class User {
	private String id;
	private String UserName;
	private String pawd;
	private String name;
	private String number;
	private String address;
	public User(String a , String b ,String c, String d ,String e ) {
		UserName =a ;
		pawd = b;
		name = c;
		number = d;
		address = e;
	}
	public void FirstUser(String a, String b) {
		UserName = a;
		pawd = b;
	}
	public void SecondUser(String c , String d , String e) {
		name=c;
		number=d;
		address=e;
	}
	public String getUserName() {
		return UserName;
	}
	public void setUserName(String userName) {
		UserName = userName;
	}
	public String getPawd() {
		return pawd;
	}
	public void setPawd(String pawd) {
		this.pawd = pawd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
}
