package com.tasty.community.dao;
import java.util.List;
import javax.annotation.Resource;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
import com.tasty.entity.Community;
/**
 * @date 2018骞�12鏈�10鏃� 涓嬪崍9:09:16 
 * @author 鐜嬬帀鐜�
*/

@Repository
public class CommunitiesDaoImpl {
	@Resource
	private  SessionFactory sessionFactory;
	/**
	 *鏌ヨ绀惧尯鐨勭浉鍏充俊鎭�
	 * @return 
	*/
	public List<Community> queryCommunitesMessage(int pageNum,int pageSize) {
		// 寮�濮嬫煡璇㈡墍鏈夋枃绔�
		Session session=this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("from Community c order by c.communityid desc");
		//浠庣x鏉″紑濮�
		q.setFirstResult((pageNum-1)*pageSize);       
		//姣忛〉鍙栧嚭n鏉�  
		
		q.setMaxResults(pageSize);    
	
	   List<Community> community=(List<Community>)q.list();

		return community;
	}
	/**
	 *鏌ヨ绀惧尯鏂囩珷鎬绘暟
	 * @return int
	*/	
	public int queryAllPage() {
		// 鏌ヨ鎬荤殑椤垫暟
		Session session=this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("from Community ");
		return q.list().size();			 
	}
	public List<Community> queryHotArticle() {
		// 寮�濮嬫煡璇㈢儹鐐规枃绔�
				Session session=this.sessionFactory.getCurrentSession();
				Query q=session.createQuery("from Community  c where c.hot=1  ");				
			   List<Community> community=q.list();
				return community;
	}
	public Community queryOneCommunities(int communitiesid) {
		// 查询一篇文章，用来展示
		Session session=this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("from Community  c where c.communityid=?");		
		q.setParameter(0, communitiesid);
	   Community community=(Community)q.uniqueResult();
		return community;
	}
}
