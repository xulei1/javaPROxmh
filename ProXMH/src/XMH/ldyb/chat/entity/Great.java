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
@Table(name = "great")
public class Great {
	private int id;
	private User user;//单向一对一
	private TopicReply topicReply;//单向一对一
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
	@JoinColumn(name="topicReply_id")
	public TopicReply getTopicReply() {
		return topicReply;
	}
	public void setTopicReply(TopicReply topicReply) {
		this.topicReply = topicReply;
	}
	
}
