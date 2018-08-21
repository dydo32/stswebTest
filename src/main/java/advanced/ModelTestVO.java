package advanced;

public class ModelTestVO {
	String id;
	String pass;
	String subject1;
	String subject2;
	String name;
	String addr;
	public ModelTestVO(){
		
	}
	public ModelTestVO(String id, String pass, String subject1,
			String subject2, String name, String addr) {
		super();
		this.id = id;
		this.pass = pass;
		this.subject1 = subject1;
		this.subject2 = subject2;
		this.name = name;
		this.addr = addr;
	}
	@Override
	public String toString() {
		return "ModelTestVO [id=" + id + ", pass=" + pass + ", subject1="
				+ subject1 + ", subject2=" + subject2 + ", name=" + name
				+ ", addr=" + addr + "]";
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getSubject1() {
		return subject1;
	}
	public void setSubject1(String subject1) {
		this.subject1 = subject1;
	}
	public String getSubject2() {
		return subject2;
	}
	public void setSubject2(String subject2) {
		this.subject2 = subject2;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	
	
}
