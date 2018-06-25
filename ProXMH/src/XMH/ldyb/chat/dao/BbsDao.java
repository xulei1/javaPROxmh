package XMH.ldyb.chat.dao;

import java.util.List;

import XMH.ldyb.chat.entity.Collect;
import XMH.ldyb.chat.entity.Great;
import XMH.ldyb.chat.entity.Reply;
import XMH.ldyb.chat.entity.Topic;
import XMH.ldyb.chat.entity.TopicReply;

 public interface BbsDao {
	 void saveTopic(Topic topic);//保存单个话题
	 void deleteTopic(Topic topic);//删除单个话题
	 Topic getTopic(int topicid);//查找单个话题
	 List <Topic> getAllTopic();//查找全部话题
	 void saveReply(Reply reply);//保存回复
	 TopicReply getTopicReply(int topicReplyId);//查找单个话题回复
	 void saveTopicReply(TopicReply topicReply);//保存回复
	 void deleteReply(TopicReply topicReply);
	 List <Topic> getTopic(int a,int b);//分页查找全部话题
	 void saveGreat(Great great);//保存点赞
	 void deleteGreate(Great great);
	 void collectTopic(Collect collect);//收藏话题
	 void unCollectTopic(Collect collect);//取消收藏话题
	 Collect getCollect(int topicId,int userId);//查找单个收藏
	 Topic getCollectedTopic();
	
	void updateTopic(int count, int id);
	void updateTopicReply(int like, int topicReplyId);
	
	 
}
