package com.ProcurementSystem.service;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.Set;

import javax.annotation.Resource;
import javax.validation.ConstraintViolation;
import javax.validation.Validation;
import javax.validation.Validator;
import javax.validation.ValidatorFactory;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.ProcurementSystem.dao.IBuyerCommodityCatalogDao;
import com.ProcurementSystem.dao.IBuyerCommodityDao;
import com.ProcurementSystem.entity.Commodity;
import com.ProcurementSystem.entity.CommodityCatalog;
import com.ProcurementSystem.entity.Contract;
import com.ProcurementSystem.entity.Supplier;

import jxl.Cell;
import jxl.Sheet;
import jxl.Workbook;
import jxl.read.biff.BiffException;

@Service
public class BuyerCommodityCatalogService {
	@Resource IBuyerCommodityCatalogDao commodityCatalogDao;
	@Resource BuyerCommodityService commodityService;
	
	//获得商品目录数量
	public int getRowCount(){
		return commodityCatalogDao.getRowCount();
	}
	//保存所要上传的文件
	public void commodityCatalogUpload(MultipartFile file, String uploadUrl,CommodityCatalog commodityCatalog) {
		String filename = file.getOriginalFilename();
		commodityCatalog.setFileName(filename);//设置文件名
		commodityCatalog.setFileSize(file.getSize()/1024+"kb");//设置文件大小
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
	//持久化存储商品目录
	public void insertCommodityCatalog(CommodityCatalog commodityCatalog){
		commodityCatalogDao.insertCommodityCatalog(commodityCatalog);
	}
	// 解析商品目录文件,并对商品信息进行持久化存储
	public void commodityCatalogAnalyze(CommodityCatalog commodityCatalog, String uploadUrl) {
		// TODO Auto-generated method stub
		InputStream is = null;
		Workbook rwb = null;
		try {
			is = new FileInputStream(uploadUrl);// 1、构造excel文件输入流对象
			rwb = Workbook.getWorkbook(is); // 2、声明工作簿对象
			rwb.getNumberOfSheets(); // 3、获得工作簿的个数,对应于一个excel中的工作表个数
			Sheet firstSheet = rwb.getSheet(0);// 使用索引形式获取第一个工作表，也可以使用rwb.getSheet(sheetName);其中sheetName表示的是工作表的名称
			// System.out.println("工作表名称：" + oFirstSheet.getName());
			int rows = firstSheet.getRows();// 获取工作表中的总行数
			int cols = firstSheet.getColumns();// 获取工作表中的总列数
			boolean isCommodityCatalogchecked = true; 
			for (int i = 0; i < rows; i++) {// 寻找数据起始标志-“DATA”
				Cell cell = firstSheet.getCell(0, i);// 需要注意的是这里的getCell方法的参数，第一个是指定第几列，第二个参数才是指定第几行
				if (cell.getContents().equals("DATA")) {
					i++;
					/**暂时只进行为空检查，后期需要补充非数字格式检查**/
					cell = firstSheet.getCell(0, i);
					while (!cell.getContents().equals("ENDOFDATA") && !cell.getContents().equals("")) {// 共24个字段，读取每行信息并进行持久化存储，直至找到数据结束标识符-“ENDOFDATA”
						boolean isCommodityChecked = true;//临时变量，用于商品的验证状态
						/** 从上传文件中提取字段 */
						Commodity commodity = new Commodity();//设置commodityCatalog
						commodity.setCommodityCatalog(commodityCatalog);
						Supplier supplier = new Supplier();// 读取并设置Supplier ID
						if(cell.getContents().matches("^[0-9]+$"))//匹配整数
						supplier.setUniqueName(Integer.parseInt(cell.getContents()));
						commodity.setSupplier(supplier);
						System.out.println(commodity.getSupplier().getUniqueName());
						cell = firstSheet.getCell(1, i);// 读取并设置Supplier Part ID
						commodity.setSupplierPartId(cell.getContents());
						if(cell.getContents().matches("^[0-9]+$"))//匹配整数
						commodity.setSupplierPartId(cell.getContents());
						cell = firstSheet.getCell(2, i);// 读取并设置Manufacturer Part ID
						if(cell.getContents().matches("^[0-9]+$"))//匹配整数
						commodity.setManufacturerPartId(cell.getContents());
						cell = firstSheet.getCell(3, i);// 读取并设置Item Description
						commodity.setItemDescription(cell.getContents());
						cell = firstSheet.getCell(4, i);// SPSC Code
						commodity.setSpsCode(cell.getContents());
						cell = firstSheet.getCell(5, i);// Unit Price
						if(cell.getContents().matches("^[0-9]+\\.[0-9]*$") || cell.getContents().matches("^[0-9]+$"))//匹配小数
						commodity.setUnitPrice(Double.parseDouble(cell.getContents()));;
						cell = firstSheet.getCell(6, i);// Unit of Measure
						commodity.setUnitOfMeasure(cell.getContents());
						cell = firstSheet.getCell(7, i);//Lead Time
						if(cell.getContents().matches("^[0-9]*$"))//匹配整数
						commodity.setLeadTime(Integer.parseInt(cell.getContents()));
						cell = firstSheet.getCell(8, i);// Manufacturer Name
						commodity.setManufacturerName(cell.getContents());
						cell = firstSheet.getCell(9, i);// Supplier URL
						//supplier.setCoporateURL(cell.getContents());
						commodity.setSupplier(supplier);
						cell = firstSheet.getCell(10, i);// Manufacturer URL
						commodity.setManufacturerUrl(cell.getContents());
						cell = firstSheet.getCell(11, i);// Market Price
						if(cell.getContents().matches("^[0-9]+\\.[0-9]*$") || cell.getContents().matches("^[0-9]+$"))//匹配小数
						commodity.setMarketPrice(Double.parseDouble(cell.getContents()));
						cell = firstSheet.getCell(12, i);//Supplier Part Auxiliary ID
						System.out.println("A ID:"+cell.getContents());
						commodity.setSupplierPartAuxiliaryId(cell.getContents());
						cell = firstSheet.getCell(13, i);// Effective Date
						commodity.setEffectiveDate(cell.getContents());
						cell = firstSheet.getCell(14, i);// Expiration Date
						commodity.setExpirationDate(cell.getContents());
						cell = firstSheet.getCell(15, i);// Short Name
						commodity.setShortName(cell.getContents());
						cell = firstSheet.getCell(16, i);// Image
						commodity.setImage(cell.getContents());
						cell = firstSheet.getCell(17, i);// Thumbnail
						commodity.setThumbnail(cell.getContents());
						cell = firstSheet.getCell(18, i);// ContractNumber
						Contract contract = new Contract();
						contract.setUniqueName(cell.getContents());
						commodity.setContract(contract);
						cell = firstSheet.getCell(19, i);// CompanyCode
						commodity.setCompanyCode(cell.getContents());
						cell = firstSheet.getCell(20, i);// gcmemail
						commodity.setGcmEmailAddress(cell.getContents());
						cell = firstSheet.getCell(21, i);// hazardousmaterials
						commodity.setIsHazardousMaterials(cell.getContents());
						cell = firstSheet.getCell(22, i);//green
						commodity.setIsGreen(cell.getContents());
						commodityCatalog.getCommodities().add(commodity);
						i++;
						cell = firstSheet.getCell(0, i);
						
						/** 对提取的字段进行验证，如果有错误，设置状态为验证错误，如果没有错误，设置状态为验证通过 */
						isCommodityChecked = commodityService.validateCommodity(commodity);
						if(isCommodityChecked) commodity.setIsChecked("TRUE");
						else commodity.setIsChecked("FALSE");//设置商品的验证状态
						if(!isCommodityChecked)	isCommodityCatalogchecked=false;//设置商品目录的验证状态
						commodityService.insertCommodity(commodity);
						System.out.println("插入成功！");
					}
					
					if(isCommodityCatalogchecked) commodityCatalog.setIsActivated("已验证");
					else commodityCatalog.setIsActivated("验证错误");
					commodityCatalogDao.setIsActivated(commodityCatalog);//维护商品目录状态属性
					commodityCatalog.setItemCount(commodityCatalog.getCommodities().size());
					commodityCatalogDao.setItemCount(commodityCatalog);//维护商品目录商品数量属性
				}
			}
		} catch (IOException | BiffException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
	
	
	public List<CommodityCatalog> getAllCommodityCatalogs() {
		// TODO Auto-generated method stub
		return commodityCatalogDao.getAllCommodityCatalogs();
	}
	public List<CommodityCatalog> searchCommodityCatalog(CommodityCatalog commodityCatalog) {
		return commodityCatalogDao.searchCommodityCatalog(commodityCatalog);
	}
	
	
}
