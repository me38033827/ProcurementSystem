package com.ProcurementSystem.service;

import java.io.File;
import java.io.IOException;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
public class CommodityCatalogueService {
	public void commodityCatalogueUpload(MultipartFile file,String uploadUrl) {
		String filename = file.getOriginalFilename();
		File dir = new File(uploadUrl);//创建文件夹
		if (!dir.exists()) {
			dir.mkdirs();
		}
		System.out.println("文件上传到: " + uploadUrl + filename);

		File targetFile = new File(uploadUrl + filename);//创建文件
		if (!targetFile.exists()) {
			try {
				targetFile.createNewFile();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		try {
			file.transferTo(targetFile);
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
