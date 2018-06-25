package XMH.ldyb.chat.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="topic")

public class Topic {
     private int topicid;
     private User user;
     private String title;
     private String content;
     private String send_time;
     private int replyCount;//回复数
     private List <TopicReply> topicReply = new ArrayList <TopicReply>();     
     @Id
 	 @GeneratedValue(strategy = GenerationType.IDENTITY)
	public int getTopicid() {
		return topicid;
	}
	public void setTopicid(int topicid) {
		this.topicid = topicid;
	}
	@ManyToOne
	@JoinColumn(name="userid")
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getSend_time() {
		return send_time;
	}
	public void setSend_time(String send_time) {
		this.send_time = send_time;
	}
	public int getReplyCount() {
		return replyCount;
	}
	public void setReplyCount(int replyCount) {
		this.replyCount = replyCount;
	}
	@OneToMany(mappedBy="topic", targetEntity=TopicReply.class,cascade=CascadeType.ALL) 		    
	public List<TopicReply> getTopicReply() {
		return topicReply;
	}
	public void setTopicReply(List<TopicReply> topicReply) {
		this.topicReply = topicReply;
	}
	     
}
