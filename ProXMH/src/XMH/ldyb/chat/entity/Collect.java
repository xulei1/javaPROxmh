package XMH.ldyb.chat.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name ="collect")
public class Collect {
	private int id;
	private User user;//单向一对一
	private Topic topic;//单向一对一
	@Id
	 @GeneratedValue(strategy = GenerationType.IDENTITY)
	public int getId() {
		return id;
	}	
	public void setId(int id) {
		this.id = id;
	}
	@OneToOne
	@JoinColumn(name="user_id")
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	@OneToOne
	@JoinColumn(name="topic_id")
	public Topic getTopic() {
		return topic;
	}
	public void setTopic(Topic topic) {
		this.topic = topic;
	}
	
}
