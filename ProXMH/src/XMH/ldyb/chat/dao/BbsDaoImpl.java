package XMH.ldyb.chat.dao;

import java.util.List;

import javax.annotation.Resource;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;
import XMH.ldyb.chat.entity.Collect;
import XMH.ldyb.chat.entity.Great;
import XMH.ldyb.chat.entity.Reply;
import XMH.ldyb.chat.entity.Topic;
import XMH.ldyb.chat.entity.TopicReply;

@Repository
public  class BbsDaoImpl implements BbsDao{
	@Resource
	private SessionFactory sessionFactory;

	@Override
	public void saveTopic(Topic topic) {
		// TODO Auto-generated method stub
		this.sessionFactory.getCurrentSession().save(topic);
	}

	@Override
	public void deleteTopic(Topic topic) {
		// TODO Auto-generated method stub
		this.sessionFactory.getCurrentSession().delete(topic);
		
	}
	
	@Override
	public Topic getTopic(int topicId) {
		Query q = this.sessionFactory.getCurrentSession().createQuery("from Topic where topicId = ? ");
		q.setParameter(0, topicId);
		Topic topic = (Topic)q.uniqueResult();
		return topic;
	}

	@Override
	//查找所有讨论数据
	public List<Topic> getAllTopic() {
		// TODO Auto-generated method stub
		Query q=this.sessionFactory.getCurrentSession().createQuery("from Topic");		
		return q.list();
	}

	
	@Override
	public void saveReply(Reply reply) {
		// TODO Auto-generated method stub
		this.sessionFactory.getCurrentSession().save(reply);
	}

	@Override
	public void saveTopicReply(TopicReply topicReply) {
		// TODO Auto-generated method stub
		this.sessionFactory.getCurrentSession().save(topicReply);
	}

	@Override
	public void deleteReply(TopicReply topicReply) {
		// TODO Auto-generated method stub
		this.sessionFactory.getCurrentSession().delete(topicReply);
	}

	@Override
	public TopicReply getTopicReply(int topicReplyId) {
		Query q = this.sessionFactory.getCurrentSession().createQuery("from TopicReply c where c.reply_id = ? ");
		q.setParameter(0, topicReplyId);
		
		TopicReply collect =(TopicReply)q.uniqueResult();
		return collect;
	}

	@Override	
	public List<Topic> getTopic(int currPage,int pageSize) {
		Query q=this.sessionFactory.getCurrentSession().createQuery("from Topic");
		q.setFirstResult((currPage-1) * pageSize);
		q.setMaxResults(pageSize);
		return q.list();
	}

	@Override
	public void saveGreat(Great great) {
		// TODO Auto-generated method stub
		this.sessionFactory.getCurrentSession().save(great);
	}

	@Override
	public void deleteGreate(Great great) {
		// TODO Auto-generated method stub
		this.sessionFactory.getCurrentSession().delete(great);
	}

	@Override
	public void collectTopic(Collect collect) {
		// TODO Auto-generated method stub
		this.sessionFactory.getCurrentSession().save(collect);
	}

	@Override
	public void unCollectTopic(Collect collect) {
		// TODO Auto-generated method stub
		this.sessionFactory.getCurrentSession().delete(collect);
	}

	@Override
	public Collect getCollect(int topicId, int userId) {
		Query q = this.sessionFactory.getCurrentSession().createQuery("from Collect c where c.Topic.topicid = ? and c.User.userid = ?");
		q.setParameter(0, topicId);
		q.setParameter(1, userId);
		Collect collect =(Collect)q.uniqueResult();
		return collect;
	}

	@Override
	public Topic getCollectedTopic() {
		return null;
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateTopic(int count,int id) {
		Query q=this.sessionFactory.getCurrentSession().createQuery("update Topic c set c.replyCount=? where c.topicid=?  ");
        q.setParameter(0, count);
        q.setParameter(1, id);
        
        q.executeUpdate();
	}

	@Override
	public void updateTopicReply(int like, int topicReplyId) {
		// TODO Auto-generated method stub
		Query q=this.sessionFactory.getCurrentSession().createQuery("update TopicReply c set c.reply_like=? where c.reply_id=?  ");
        q.setParameter(0, like);
        q.setParameter(1, topicReplyId);
        
        q.executeUpdate();
	}

	
	
	
	
}
