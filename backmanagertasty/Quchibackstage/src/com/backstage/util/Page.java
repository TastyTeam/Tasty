package com.backstage.util;

import java.util.List;

/**
 * 
 * Description: <br />
 * Project: abc <br />
 * ClassName: Page <br />
 * 
 * @author wangwei
 * @version 1.0 2014年10月21日下午3:11:27
 *
 * @param <T> 分页List中存放的类型
 */
public class Page<T> {
	private List<T> list;
	private int currentPageNum;
	private int pageSize;
	private int prePageNum;
	private long nextPageNum;
	private long totalPageNum;
	private long totalCount;

	public Page() {
	}

	public Page(int pageNum, int pageSize) {
		this.currentPageNum = pageNum;
		this.pageSize = pageSize;
	}

	public Page(int pageNum, int pageSize, long totalCount, List<T> list) {
		this.currentPageNum = pageNum;
		this.pageSize = pageSize;
		this.setTotalCount(totalCount);
		this.list = list;
	}

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

	public long getTotalPageNum() {
		return totalPageNum;
	}

	public void setTotalPageNum(int totalPageNum) {
		this.totalPageNum = totalPageNum;
	}

	public int getPrePageNum() {
		return prePageNum;
	}

	public void setPrePageNum(int prePageNum) {
		this.prePageNum = prePageNum;
	}

	public long getNextPageNum() {
		return nextPageNum;
	}

	public void setNextPageNum(int nextPageNum) {
		this.nextPageNum = nextPageNum;
	}

	public long getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(long long1) {
		this.totalCount = long1;
		if (long1 % pageSize == 0)
			totalPageNum = long1 / pageSize;
		else
			totalPageNum = long1 / pageSize + 1;

		if (currentPageNum > 1)
			prePageNum = currentPageNum - 1;
		else
			prePageNum = 1;

		if (currentPageNum < totalPageNum)
			nextPageNum = currentPageNum + 1;
		else
			nextPageNum = totalPageNum;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

}
