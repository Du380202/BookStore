package web.Controller;

import java.io.IOException;

public class ExcutePyFile {
	public static void main(String[] args) {
		try {
            // Đường dẫn tới tệp Python và các tham số
            String pythonScript = "D:\\Web\\BookStore\\src\\main\\python\\main.py";

            // Tạo một lệnh để thực thi tệp Python
            ProcessBuilder processBuilder = new ProcessBuilder("python", pythonScript);

            // Thực thi lệnh
            Process process = processBuilder.start();

            // Đợi cho tiến trình Python kết thúc
            int exitCode = process.waitFor();
            
            System.out.println("Exit code: " + exitCode);
        } catch (IOException | InterruptedException e) {
            e.printStackTrace();
        }
	}
}
