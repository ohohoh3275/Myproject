package kr.co.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.UUID;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import kr.co.service.GalleryService;
import kr.co.util.GalleryUtils;
import kr.co.vo.ImageVO;
import net.coobird.thumbnailator.Thumbnails;

@Controller
@RequestMapping("/gallery/*")
public class GalleryController {

	private static final Logger logger = LoggerFactory.getLogger(GalleryController.class);

	@Inject
	public GalleryService service;

	private static final String uploadPath = "C:\\Program Files\\sts-3.9.14.RELEASE\\workspace\\001MyProject\\src\\main\\webapp" + 
			"\\WEB-INF\\resources\\uploadImage";
	private static final String thumbnailPath = "C:\\Program Files\\sts-3.9.14.RELEASE\\workspace\\001MyProject\\src\\main\\webapp"
			+ "\\WEB-INF\\resources\\thumbnails";
	
	private static ArrayList<ImageVO> uploadList = new ArrayList<ImageVO>();

	
	
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	private ModelAndView thumbnailView(HttpServletResponse response) throws Exception {
		
		ModelAndView mv = new ModelAndView();
		
		mv.addObject("list", service.select());
		mv.setViewName("gallery/list");

		return mv;
	
	}

	@RequestMapping(value = "/write", method = RequestMethod.GET)
	public String write() throws Exception {

		return "gallery/write";
	}

	@ResponseBody
	@RequestMapping(value = "/upload", method = RequestMethod.POST)
	public ArrayList<ImageVO> uploadAjax(@RequestParam MultipartFile[] uploadFile) throws Exception {

		File uploadFolder = GalleryUtils.makeFolder(uploadPath);

		
		for (MultipartFile multipartFile : uploadFile) {

			String fileName = multipartFile.getOriginalFilename();

			logger.info("name " + fileName + " size " + multipartFile.getSize());

			String uuid = UUID.randomUUID().toString();
			fileName = uuid + "_" + fileName;

			File saveFile = new File(uploadFolder, fileName);

			ImageVO vo = new ImageVO(fileName, uploadFolder.toString(), uuid, true);
			
			if (GalleryUtils.checkImage(saveFile)) {
				uploadList.add(vo);
				multipartFile.transferTo(saveFile);	
			}
			
			if(saveFile.getName().equals(uploadList.get(0).getFileName())) {
				String thumbnailName="thumbnail_"+uploadList.get(0).getFileName();
				File thumbnailFile = new File(thumbnailPath, thumbnailName);
				
				Thumbnails.of(saveFile).size(250, 250).toFile(thumbnailFile);
				
			}
			
		}
		
		
		
		return uploadList;

	}

	@RequestMapping(value = "/uploadContent", method = RequestMethod.POST)
	public String send(HttpServletRequest request) throws Exception {

		ImageVO uploadVO = new ImageVO();

		uploadVO.setFileName(uploadList.get(0).getFileName());
		uploadVO.setUploadPath(uploadList.get(0).getUploadPath());
		
		
		String title = (String) request.getParameter("title");
		String content = (String) request.getParameter("content");
		String writer = (String) request.getParameter("writer");
		
		uploadVO.setTitle(title);
		uploadVO.setContent(content);
		uploadVO.setWriter(writer);

		logger.info(title + content + uploadList.toString());

		service.insert(uploadVO);

		return "redirect:/gallery/list";
	}

}
