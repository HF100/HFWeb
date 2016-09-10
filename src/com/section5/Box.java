package com.section5;

public class Box {

	double length;//长
	double width;//宽
	double height;//高
	
	public Box() {
		 length = 0;
		 width = 0;
		 height = 0;
	}
	
	public double getLength() {
		return length;
	}

	public void setLength(double length) {
		this.length = length;
	}

	public double getWidth() {
		return width;
	}

	public void setWidth(double width) {
		this.width = width;
	}

	public double getHeight() {
		return height;
	}

	public void setHeight(double height) {
		this.height = height;
	}

	public double volumn() {
		//求容积
		double volumeValue;
		volumeValue = length * width * height;
		return volumeValue;
	}
	
	public double surfaceArea() {
		//求表面积
		double surfaceAreaValue;
		surfaceAreaValue = length * width * 2 + length * height * 2 + width * height * 2;
		return surfaceAreaValue;
	}
	
	public static void main(String[] args) {
		System.out.println("Box build...");
	}
}
