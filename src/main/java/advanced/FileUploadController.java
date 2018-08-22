package advanced;

import java.io.FileNotFoundException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.util.WebUtils;

//service의 기능을 호출해서 업로드를 요청하는 컨트롤러
@Controller
public class FileUploadController {
	@Autowired
	FileUploadService service;
	
	@RequestMapping(value="/advanced/upload.do", method=RequestMethod.POST)
	public String upload(FileUploadDTO fileInfo, HttpSession session) throws FileNotFoundException {
		System.out.println("fileInfo===============>"+fileInfo);
		
		//spring mvc(spring mvc 아키텍쳐로 동작을 위해 필요한 모든컴포넌트들의 작업아래)에서
		//자동으로 새성해서 넘겨준 업로드 된 파일 객체인 MultipartFile을 꺼내서
		//내가 원하는 위치에 저장하기
		
		//1. dto에서 MultipartFile객체 꺼내기
		MultipartFile file = fileInfo.getUpFile();
		
		//2.저장될 위치
		//두 번째 매개변수는 실제 저장될 폴더의 위치를 지정
		String path = WebUtils.getRealPath(session.getServletContext(), "/WEB-INF/upload");

		//3.파일명
		String fileName = file.getOriginalFilename();
		System.out.println(path+"========="+fileName);
		
		//4.FileUploadService의 upload메소드를 호출해서 실제파일을 저장하기
		service.upload(file, path, fileName);
		
		return "advanced/upload";
	}
}
