package com.godLife.io.common;


//==>����Ʈȭ���� �𵨸�(�߻�ȭ/ĸ��ȭ)�� Bean 
public class Search {
	
	///Field
	private int currentPage;
	private String searchCondition;
	private int orderCondition;
	private String searchKeyword;
	private String statusCondition;
	private int pageSize;

	//==> UserMapper.xml  
	//==> <select  id="getUserList"  parameterType="search"	resultMap="userSelectMap">

	private int endRowNum;
	private int startRowNum;
	
	///Constructor
	public Search() {
	}
	
	///Method
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int paseSize) {
		this.pageSize = paseSize;
	}
	
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public String getSearchCondition() {
		return searchCondition;
	}
	public void setSearchCondition(String searchCondition) {
		this.searchCondition = searchCondition;
	}
	
	public int getOrderCondition() {
		return orderCondition;
	}
	public void setOrderCondition(int orderCondition) {
		this.orderCondition = orderCondition;
	}
	
	public String getSearchKeyword() {
		return searchKeyword;
	}
	public void setSearchKeyword(String searchKeyword) {
		this.searchKeyword = searchKeyword;
	}
	
	public String getStatusCondition() {
		return statusCondition;
	}

	public void setStatusCondition(String statusCondition) {
		this.statusCondition = statusCondition;
	}

	//==> Select Query �� ROWNUM ������ �� 
	public int getEndRowNum() {
		return getCurrentPage()*getPageSize();
	}
	//==> Select Query �� ROWNUM ���� ��
	public int getStartRowNum() {
		return (getCurrentPage()-1)*getPageSize()+1;
	}

	@Override
	public String toString() {
		return "Search [currentPage=" + currentPage + ", searchCondition=" + searchCondition + ", orderCondition="
				+ orderCondition + ", searchKeyword=" + searchKeyword + ", statusCondition=" + statusCondition
				+ ", pageSize=" + pageSize + ", endRowNum=" + endRowNum + ", startRowNum=" + startRowNum + "]";
	}

	
}