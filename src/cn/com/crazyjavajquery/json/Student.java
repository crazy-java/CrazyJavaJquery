package cn.com.crazyjavajquery.json;

import java.io.Serializable;

public class Student implements Serializable {

	private static final long serialVersionUID = -255379355871542479L;
	
	public int age ;
	public String name ;
	public int grade ;
	
	public Student(){}
	
	public Student(int age,String name,int grade){
		this.age = age;
		this.name = name;
		this.grade = grade;
	}
	
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	
}
