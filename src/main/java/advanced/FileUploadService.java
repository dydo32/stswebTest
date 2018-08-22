package advanced;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
public class FileUploadService {
	// 실제 원하는 위치에 저장하는 로직 구현
	FileOutputStream fos;
	public void upload(MultipartFile file, String path, String fileName) {
		try {
			byte[] data = file.getBytes();
			fos = new FileOutputStream(path + File.separator + fileName); // File.separator 원화 기호
			fos.write(data);
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			try {
				if (fos != null)
					fos.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
}
