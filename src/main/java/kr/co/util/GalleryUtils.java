package kr.co.util;

import java.io.File;
import java.io.FileOutputStream;
import java.nio.file.Files;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.multipart.MultipartFile;

import kr.co.controller.GalleryController;
import net.coobird.thumbnailator.Thumbnailator;

public class GalleryUtils {
	private static final Logger logger = LoggerFactory.getLogger(GalleryController.class);
	private static int folderNameIndex = 0;
	
	public static String getFolderName() {

		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	
		String folderName = sdf.format(new Date());
		folderName = folderName.replace("-", File.separator) +"_" + folderNameIndex;
		
		return folderName;

	}

	public static File makeFolder(String uploadPath) {
		
		logger.info(GalleryUtils.getFolderName());

		File uploadFolder = new File(uploadPath, getFolderName());

		if (!uploadFolder.exists()) {
			uploadFolder.mkdirs();
			folderNameIndex++;
		}
		
		return uploadFolder;

	}
	
	
	

	public static void makeThumbnail(MultipartFile multipartFile, String thumbnailPath, String fileName) throws Exception {
		
		FileOutputStream thumbnail = new FileOutputStream(new File(thumbnailPath, "thumbnail_" + fileName));
		Thumbnailator.createThumbnail(multipartFile.getInputStream(), thumbnail, 2048, 2048);
		thumbnail.write(200);	
		thumbnail.close();
	}
	
	
	public static boolean checkImage(File file) throws Exception {

		boolean returnValue = false;
		String type = Files.probeContentType(file.toPath());
		if (type.startsWith("image")) {
			returnValue = true;
		}
		return returnValue;

	}

	
}
