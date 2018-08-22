package advanced;

import org.springframework.web.multipart.MultipartFile;

// spring프레임워크 내부에서 파라미터로 전송되는 데이터를 자동으로 dto로 매핑한 후에 컨트롤러로 넘겨준다.
public class FileUploadDTO {
	private String title;	//입력데이터
	private String name;	//입력데이터
	private MultipartFile upFile;	//입력받을파일이 여러개일 경우 1. 배열로
	
	public FileUploadDTO() {}
	public FileUploadDTO(String title, String name, MultipartFile upFile) {
		super();
		this.title = title;
		this.name = name;
		this.upFile = upFile;
	}
	
	
	@Override
	public String toString() {
		return "FileUploadDTO [title=" + title + ", name=" + name + ", upFile=" + upFile + "]";
	}
	
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public MultipartFile getUpFile() {
		return upFile;
	}
	public void setUpFile(MultipartFile upFile) {
		this.upFile = upFile;
	}
}
