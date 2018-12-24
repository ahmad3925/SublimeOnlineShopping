package util;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

public class FileUploadUtility {

	private static String ABS_PATH ="C:\\Users\\Ahmad Hussain\\eclipse-workspace\\NewWorkspace\\SublimeFrontend\\src\\main\\webapp\\assets\\Image\\";
	private static String REAL_PATH = null;
	public static boolean uploadFile(HttpServletRequest request, MultipartFile files[], String code) {
		// get the real server path
		REAL_PATH = request.getSession().getServletContext().getRealPath("/assets/Image/" + code + "/");
		ABS_PATH = "C:\\Users\\Ahmad Hussain\\eclipse-workspace\\NewWorkspace\\SublimeFrontend\\src\\main\\webapp\\assets\\Image\\" + code
				+ "\\";
		System.out.println(REAL_PATH);
		System.out.println(ABS_PATH);

		// create the directories if it does not exist

		if (!new File(REAL_PATH).exists()) {
			new File(REAL_PATH).mkdirs();
		}

		if (!new File(ABS_PATH).exists()) {
			new File(ABS_PATH).mkdirs();
		}

		try {
			// transfer the file to both the location
			for (int i = 0; i < files.length; i++) {
				if (!files[i].isEmpty()) {
					files[i].transferTo(new File(ABS_PATH + (i + 1) + ".jpg"));
					files[i].transferTo(new File(REAL_PATH + (i + 1) + ".jpg"));
				}
			}
		} catch (IOException ex) {
			ex.printStackTrace();
		}
		return true;
	}

	public static void uploadNoImage(HttpServletRequest request, String code) {
		// get the real server path
		REAL_PATH = request.getSession().getServletContext().getRealPath("/assets/Image/");

		String imageURL = "http://placehold.it/640X480?text=No Image";
		String destinationServerFile = REAL_PATH + code + "/1.jpg";
		String destinationProjectFile = REAL_PATH + code + "/1.jpg";

		try {
			URL url = new URL(imageURL);
			try (InputStream is = url.openStream();
					OutputStream osREAL_PATH = new FileOutputStream(destinationServerFile);
					OutputStream osABS_PATH = new FileOutputStream(destinationProjectFile);) {

				byte[] b = new byte[2048];
				int length;
				while ((length = is.read(b)) != -1) {
					osREAL_PATH.write(b, 0, length);
					osABS_PATH.write(b, 0, length);
				}
			}
		} catch (IOException ex) {
			ex.printStackTrace();
		}
	}
}