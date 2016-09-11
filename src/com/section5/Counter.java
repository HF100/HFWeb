package com.section5;

public class Counter {
	public long count = 0;
	
	public Counter() {
		
	}
	
	public long getCount() {
		return count;
	}
	
	public synchronized long setCount() {
		count++;
		return count;
	}
}
