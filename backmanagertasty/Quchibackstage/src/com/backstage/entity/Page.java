package com.backstage.entity;
import java.util.List;
/*
 * page类,通过模板的形式确定
 */
public class Page<T> {
	//页
	private List<T> list;
	// 当前页
	private int currentPageNum;
	// 页面大小
	private int pageSize;
	// 总的页数
	private int totalPageNum;
	// 总数据条数
	private int totalCount;

	public List<T> getList() {
		return list;
	}

	public void setList(List<T> list) {
		this.list = list;
	}

	public int getCurrentPageNum() {
		return currentPageNum;
	}

	public void setCurrentPageNum(int currentPageNum) {
		this.currentPageNum = currentPageNum;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getTotalPageNum() {
		return totalPageNum;
	}

	public void setTotalPageNum(int totalPageNum) {
		this.totalPageNum = totalPageNum;
	}

	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}
//构造函数
	public Page(List<T> list, int currentPageNum, int pageSize, int totalPageNum, int totalCount) {
		this.list = list;
		this.currentPageNum = currentPageNum;
		this.pageSize = pageSize;
		this.totalPageNum = totalPageNum;
		this.totalCount = totalCount;
	}
	//默认的构造函数
	public Page (){
		this.list =null;
		this.currentPageNum = 1;
		this.pageSize = 4;
		this.totalPageNum = 0;
		this.totalCount =0;
	}
}

