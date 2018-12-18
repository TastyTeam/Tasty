package com.tasty.communities.dao;
import java.util.List;
import javax.annotation.Resource;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
import com.tasty.entity.Community;
/**
 * @date 2018年12月10日 下午9:09:16 
 * @author 王玉玲
*/
@Repository
public class CommunitiesDaoImpl {
	@Resource
	private  SessionFactory sessionFactory;
	/**
	 *查询社区的相关信息
	 * @return 
	*/
	public List<Community> queryCommunitesMessage(int pageNum,int pageSize) {
		// 开始查询所有文章
		Session session=this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("from Community");
	
		//从第x条开始
		System.out.println(pageNum);
		System.out.println((pageNum-1)*pageSize);
		q.setFirstResult((pageNum-1)*pageSize);   
	
		//每页取出n条  /**/
		q.setMaxResults(pageSize);    
	
	   List<Community> community=(List<Community>)q.list();

		return community;
	}
	/**
	 *查询社区文章总数
	 * @return int
	*/	
	public int queryAllPage() {
		// 查询总的页数
		Session session=this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("from Community ");
		return q.list().size();			 
	}
	public List<Community> queryHotArticle() {
		// 开始查询热点文章
				Session session=this.sessionFactory.getCurrentSession();
				Query q=session.createQuery("from Community  c where c.hot=1  ");				
			   List<Community> community=q.list();
				return community;
	}
}
