package jstl;

public class MyDTO {
	String name;
	String age;
	
	public MyDTO() {
		System.out.println("기본생성자");
	}
	public MyDTO(String name, String age) {
		super();
		this.name = name;
		this.age = age;
		System.out.println("매개변수 생성자");
	}
	public String getName() {
		System.out.println("getName()");
		return name;
	}
	public void setName(String name) {
		System.out.println("setName()");
		this.name = name;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	
}
