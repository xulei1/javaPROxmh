package XMH.ldyb.chat.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;


@Entity
@Table(name = "topic_reply")
public class TopicReply {
    private int reply_id;
    private Topic topic;
    private User user;
    private String reply_content;
    private String reply_time;
    private int reply_like;//点赞数
    private List <Reply> replyList = new ArrayList <Reply>();
    
    @Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="reply_id")
	public int getReply_id() {
		return reply_id;
	}
	public void setReply_id(int reply_id) {
		this.reply_id = reply_id;
	}
	@ManyToOne
	@JoinColumn(name="topic_id")
	public Topic getTopic() {
		return topic;
	}
	public void setTopic(Topic topic) {
		this.topic = topic;
	}
	@ManyToOne
	@JoinColumn(name="reply_userid")
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	@Column(name="reply_content")
	public String getReply_content() {
		return reply_content;
	}
	public void setReply_content(String reply_content) {
		this.reply_content = reply_content;
	}
	@Column(name="reply_time")
	public String getReply_time() {
		return reply_time;
	}
	public void setReply_time(String reply_time) {
		this.reply_time = reply_time;
	}
	
	public int getReply_like() {
		return reply_like;
	}
	public void setReply_like(int reply_like) {
		this.reply_like = reply_like;
	}
	@OneToMany(mappedBy="topicReply", targetEntity=Reply.class,cascade=CascadeType.ALL)
	public List<Reply> getReplyList() {
		return replyList;
	}
	public void setReplyList(List<Reply> replyList) {
		this.replyList = replyList;
	}
	
    
}
