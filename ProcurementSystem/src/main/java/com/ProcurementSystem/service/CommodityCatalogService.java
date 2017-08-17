package com.ProcurementSystem.service;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import jxl.Sheet;
import jxl.Workbook;
import jxl.read.biff.BiffException;

@Service
public class CommodityCatalogService {
	public void commodityCatalogUpload(MultipartFile file, String uploadUrl) {
		String filename = file.getOriginalFilename();
		File dir = new File(uploadUrl);// 创建文件夹
		if (!dir.exists()) {
			dir.mkdirs();
		}
		System.out.println("文件上传到: " + uploadUrl + filename);

		File targetFile = new File(uploadUrl + filename);// 创建文件
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

	// 解析商品目录文件
	public void commodityCatalogAnalyze(String uploadUrl) {
		// TODO Auto-generated method stub
		InputStream is = null;
		Workbook rwb = null;
		try {
			is = new FileInputStream(uploadUrl);// 1、构造excel文件输入流对象
			rwb = Workbook.getWorkbook(is); // 2、声明工作簿对象
			rwb.getNumberOfSheets(); // 3、获得工作簿的个数,对应于一个excel中的工作表个数
			Sheet oFirstSheet = rwb.getSheet(0);// 使用索引形式获取第一个工作表，也可以使用rwb.getSheet(sheetName);其中sheetName表示的是工作表的名称
			//System.out.println("工作表名称：" + oFirstSheet.getName());
		} catch (IOException | BiffException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
}
