package com.section5;

public class dataPageJava {
	//当前页数
	private int currentPage;
	//总记录条数
	private int countRecord;
	//总页数
	private int countPage;
	//每页记录条数
	private int sizePage;
	
	//设置四个成员变量的值
	public void setAll(int _countRecord,int _sizePage) {
		countRecord = _countRecord;
		sizePage = _sizePage;
		if (countRecord % sizePage == 0) {
			countPage = countRecord / sizePage;
		} else {
			countPage = countRecord / sizePage + 1;
		}
		currentPage = 1;
	}
	
	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getCountRecord() {
		return countRecord;
	}

	public int getCountPage() {
		return countPage;
	}

	public int getSizePage() {
		return sizePage;
	}	
}
