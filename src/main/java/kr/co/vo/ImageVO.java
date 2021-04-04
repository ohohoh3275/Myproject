package kr.co.vo;

import java.util.Date;

public class ImageVO {
	
	private String fileName;
	private String uploadPath;
	private String uuid;
	private boolean isImage;
	
	private int gno;
	private String title;
	private String content;
	private String writer;
	private Date bdate;
	
	

	public ImageVO() {
		
	}
	
	public ImageVO(String fileName, String uploadPath, String uuid, boolean isImage) {
		super();
		this.fileName = fileName;
		this.uploadPath = uploadPath;
		this.uuid = uuid;
		this.isImage = isImage;
	}

	public int getGno() {
		return gno;
	}
	public void setGno(int gno) {
		this.gno = gno;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public Date getBdate() {
		return bdate;
	}
	public void setBdate(Date bdate) {
		this.bdate = bdate;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getUploadPath() {
		return uploadPath;
	}
	public void setUploadPath(String uploadPath) {
		this.uploadPath = uploadPath;
	}
	public String getUuid() {
		return uuid;
	}
	public void setUuid(String uuid) {
		this.uuid = uuid;
	}
	public boolean isImage() {
		return isImage;
	}
	public void setImage(boolean isImage) {
		this.isImage = isImage;
	}

	@Override
	public String toString() {
		return "ImageVO [fileName=" + fileName + ", uploadPath=" + uploadPath + ", gno=" + gno + ", title=" + title
				+ ", content=" + content + ", writer=" + writer + ", bdate=" + bdate + "]";
	}

	
	
	
	
	
	

}
