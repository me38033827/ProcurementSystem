package com.ProcurementSystem.service;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.ProcurementSystem.common.FileUnZip;
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
	@Resource
	IBuyerCommodityCatalogDao commodityCatalogDao;
	@Resource
	BuyerCommodityService commodityService;
	@Resource
	IBuyerCommodityDao commodityDao;

	// 获得商品目录数量
	public int getRowCount() {
		return commodityCatalogDao.getRowCount();
	}

	// 保存所要上传的文件
	public void commodityCatalogUpload(MultipartFile file, String uploadUrl, CommodityCatalog commodityCatalog) {
		if(file.getSize() == 0) return;
		String filename = file.getOriginalFilename();
		commodityCatalog.setFileName(filename);// 设置文件名
		commodityCatalog.setFileSize(file.getSize() / 1024 + "kb");// 设置文件大小
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

	// 持久化存储商品目录
	public void insertCommodityCatalog(CommodityCatalog commodityCatalog) {
		commodityCatalogDao.insertCommodityCatalog(commodityCatalog);
	}

	// 解析商品目录文件,并对商品信息进行持久化存储
	public boolean commodityCatalogAnalyze(CommodityCatalog commodityCatalog, String uploadUrl, String fileName) {
		// TODO Auto-generated method stub
		InputStream is = null;
		Workbook rwb = null;
		boolean isunique = false;
		int count = 0;//有效数据行数
		Set<String> set = new HashSet<String>();
		try {
			is = new FileInputStream(uploadUrl + fileName);// 1、构造excel文件输入流对象
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
					/** 暂时只进行为空检查，后期需要补充非数字格式检查 **/
					cell = firstSheet.getCell(0, i);
					while (!cell.getContents().equals("ENDOFDATA") && i<=rows) {// 共24个字段，读取每行信息并进行持久化存储，直至找到数据结束标识符-“ENDOFDATA”或最后一行
						boolean isCommodityChecked = true;// 临时变量，用于商品的验证状态
						/** 从上传文件中提取字段 */
						count++;
						Commodity commodity = new Commodity();// 设置commodityCatalog
						commodity.setCommodityCatalog(commodityCatalog);
						Supplier supplier = new Supplier();// 读取并设置Supplier
															// ID(supplier.uniqueName)
						// if (cell.getContents().matches("^[0-9]+$"))// 匹配整数
						// //此处有问题？？？？ 需要将uniqueName设置为String
						// supplier.setUniqueName(Integer.parseInt(cell.getContents()));
						// 暂时没涉及多供应商上传的问题
						supplier.setName(commodityCatalog.getSupplier().getName());
						supplier.setUniqueName(commodityCatalog.getSupplier().getUniqueName());
						commodity.setSupplier(supplier);// 此处是为了直接显示商品信息，减少一次数据库提取操作
						System.out.println(commodity.getSupplier().getUniqueName());
						cell = firstSheet.getCell(1, i);// 读取并设置Supplier Part ID
						commodity.setSupplierPartId(cell.getContents());
						set.add(cell.getContents());
						if (cell.getContents().matches("^[0-9]+$"))// 匹配整数
							commodity.setSupplierPartId(cell.getContents());
						cell = firstSheet.getCell(2, i);// 读取并设置Manufacturer
														// Part ID
						commodity.setManufacturerPartId(cell.getContents());
						cell = firstSheet.getCell(3, i);// 读取并设置Item Description
						commodity.setItemDescription(cell.getContents());
						cell = firstSheet.getCell(4, i);// SPSC Code
						String spscCode = cell.getContents();
						commodity.setSpsCode(cell.getContents());
						cell = firstSheet.getCell(5, i);// Unit Price
						if (cell.getContents().matches("^[0-9]+\\.[0-9]*$") || cell.getContents().matches("^[0-9]+$"))// 匹配小数
							commodity.setUnitPrice(Double.parseDouble(cell.getContents()));
						;
						cell = firstSheet.getCell(6, i);// Unit of Measure
						commodity.setUnitOfMeasure(cell.getContents());
						cell = firstSheet.getCell(7, i);// Lead Time
						commodity.setLeadTime(cell.getContents());
						cell = firstSheet.getCell(8, i);// Manufacturer Name
						commodity.setManufacturerName(cell.getContents());
						cell = firstSheet.getCell(9, i);// Supplier URL
						// supplier.setCoporateURL(cell.getContents());
						commodity.setSupplier(supplier);
						cell = firstSheet.getCell(10, i);// Manufacturer URL
						commodity.setManufacturerUrl(cell.getContents());
						cell = firstSheet.getCell(11, i);// Market Price
						if (cell.getContents().matches("^[0-9]+\\.[0-9]*$") || cell.getContents().matches("^[0-9]+$"))// 匹配小数
							commodity.setMarketPrice(Double.parseDouble(cell.getContents()));
						cell = firstSheet.getCell(12, i);// Supplier Part
															// Auxiliary ID
						System.out.println("A ID:" + cell.getContents());
						commodity.setSupplierPartAuxiliaryId(cell.getContents());
						cell = firstSheet.getCell(13, i);// Effective Date
						commodity.setEffectiveDate(cell.getContents());
						cell = firstSheet.getCell(14, i);// Expiration Date
						commodity.setExpirationDate(cell.getContents());
						cell = firstSheet.getCell(15, i);// Short Name
						commodity.setShortName(cell.getContents());
						// String imagesPath = "/ProcurementSystem/upload/" +
						// commodityCatalog.getUniqueName() + "/" +
						// commodity.getShortName()+"/";
						cell = firstSheet.getCell(16, i);// Image
						// String[] strs =
						// cell.getContents().split("&");//对图像路径的原始数据进行处理,路径与路径之间用&隔开
						// String result ="";
						// for(String str : strs){
						// result+=imagesPath + str + "&";
						// }
						commodity.setImage(cell.getContents());
						cell = firstSheet.getCell(17, i);// Thumbnail
						commodity.setThumbnail(cell.getContents());
						cell = firstSheet.getCell(18, i);// ContractNumber
						// Contract contract = new Contract();
						// contract.setUniqueName(cell.getContents());
						// commodity.setContract(contract);
						// commodity.setContractTempId(cell.getContents());
						cell = firstSheet.getCell(19, i);// CompanyCode
						commodity.setCompanyCode(cell.getContents());
						cell = firstSheet.getCell(20, i);// gcmemail
						commodity.setGcmEmailAddress(cell.getContents());
						cell = firstSheet.getCell(21, i);// hazardousmaterials
						commodity.setIsHazardousMaterials(cell.getContents());
						cell = firstSheet.getCell(22, i);// green
						commodity.setIsGreen(cell.getContents());
						commodityCatalog.getCommodities().add(commodity);
						i++;
						cell = firstSheet.getCell(0, i);

						/** 对提取的字段进行验证，如果有错误，设置状态为验证错误，如果没有错误，设置状态为验证通过 */
						isCommodityChecked = commodityService.validateCommodity(commodity);
						if (isCommodityChecked)
							commodity.setIsChecked("TRUE");
						else
							commodity.setIsChecked("FALSE");// 设置商品的验证状态
						if (!isCommodityChecked)
							isCommodityCatalogchecked = false;// 设置商品目录的验证状态
						commodityService.insertCommodity(commodity);// 持久化商品
						commodityService.divideSpscCode(commodity);// 分解spscCode并持久化
						System.out.println("成功插入一条商品信息！");
					}

					if (isCommodityCatalogchecked)
						commodityCatalog.setIsActivated("已验证");
					else
						commodityCatalog.setIsActivated("验证错误");
					setIsActivated(commodityCatalog);// 维护商品目录状态属性
					commodityCatalog.setItemCount(commodityCatalog.getCommodities().size());
					setItemCount(commodityCatalog);// 维护商品目录商品数量属性
					if (set.size()!= count) {
						isunique = true;
					}
					
				}
			}
		} catch (IOException | BiffException e) {
			e.printStackTrace();
		}
		return isunique;
		
	}

	// 设置商品目录状态
	public void setIsActivated(CommodityCatalog commodityCatalog) {
		commodityCatalogDao.setIsActivated(commodityCatalog);
	}

	// 设置商品目录含有的商品数量
	public void setItemCount(CommodityCatalog commodityCatalog) {
		commodityCatalogDao.setItemCount(commodityCatalog);
	}

	// 获得所有商品目录
	public List<CommodityCatalog> getAllCommodityCatalogs() {
		// TODO Auto-generated method stub
		return commodityCatalogDao.getAllCommodityCatalogs();
	}

	// 获得指定商品目录
	public List<CommodityCatalog> searchCommodityCatalog(CommodityCatalog commodityCatalog) {
		return commodityCatalogDao.searchCommodityCatalog(commodityCatalog);
	}

	// 验证目录,true为已验证，false为验证错误
	public boolean validate(String uniqueName) {// 获得对应商品的验证状态，进行遍历，修改商品目录的状态
		List<String> list = commodityDao.getAllCommoditiesValidateStateByCatalog(uniqueName);
		boolean flag = true;
		for (String str : list) {
			if (!str.equals("TRUE") && !str.equals("true")) {
				flag = false;
				break;
			}
		}
		CommodityCatalog commodityCatalog = new CommodityCatalog();
		commodityCatalog.setUniqueName(uniqueName);
		if (flag) {
			commodityCatalog.setIsActivated("已验证");
		} else {
			commodityCatalog.setIsActivated("验证错误");
		}
		setIsActivated(commodityCatalog);// 修改验证状态
		if (flag)
			return true;
		return false;
	}

	// 保存image文件，并解压
	public void commodityCatalogUploadImages(MultipartFile imageFile, String path) {// 存到以商品目录id命名的文件夹下
		if(imageFile.getSize() == 0) return;//非null验证
		String fileName = imageFile.getOriginalFilename();
		File dir = new File(path);// 创建文件夹
		if (!dir.exists()) {
			dir.mkdirs();
		}
		System.out.println("图片文件上传到: " + path + fileName);
		File targetFile = new File(path + fileName);// 创建文件
		if (!targetFile.exists()) {
			try {
				targetFile.createNewFile();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		try {
			imageFile.transferTo(targetFile);
			FileUnZip.zipToFile(path + fileName, path);// 解压文件

		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	// 创建版本
	public CommodityCatalog setCommodityCatalogVersion(String createMode, CommodityCatalog commodityCatalog) {
		// TODO Auto-generated method stub
		if (createMode.equals("1")) {// 创建新目录
			commodityCatalog.setVersion("版本1");
		} else {// 创建新版本
			int count = commodityCatalogDao.getCommodityCatalogVersionCount(commodityCatalog);
			commodityCatalog.setVersion("版本" + (count + 1));
		}
		return commodityCatalog;
	}

	public boolean validateCommodityCatalogDupeName(CommodityCatalog commodityCatalog) {
		CommodityCatalog commodityCatalogName = new CommodityCatalog();
		commodityCatalogName.setName(commodityCatalog.getName());
		List<CommodityCatalog> commodityCatalogs = commodityCatalogDao.searchCommodityCatalog(commodityCatalog);
		if (commodityCatalogs.size() > 0)
			return true;
		return false;
	}

	// 停用其他版本
	public void stopOtherVersion(CommodityCatalog commodityCatalog) {
		commodityCatalogDao.stopOtherVersion(commodityCatalog);
	}

	public List<CommodityCatalog> searchCommodityCatalogNoVersion(CommodityCatalog commodityCatalog) {
		return commodityCatalogDao.searchCommodityCatalogNoVersion(commodityCatalog);
	}

	// 删除目录
	public void delete(CommodityCatalog commodityCatalog) {
		commodityCatalogDao.delete(commodityCatalog);
	}

	public void activate(String uniqueName) {
		// TODO Auto-generated method stub
		boolean isValidated = validate(uniqueName);
		CommodityCatalog commodityCatalog = new CommodityCatalog();
		if (isValidated) {
			commodityCatalog.setUniqueName(uniqueName);
			commodityCatalog.setIsActivated("已激活");
			setIsActivated(commodityCatalog);
		}
		// 停用其他版本
		stopOtherVersion(commodityCatalog);// 名字相同的版本不同
	}

	public boolean validateUniVersion(String[] names) {
		boolean mark = true;
		for (int i = 0; i < names.length; i++) {
			for (int j = i + 1; j < names.length; j++) {
				if (names[i].equals(names[j])) {
					mark = false;
					return mark;
				}
			}
		}
		return mark;
	}

	public void deactivate(String uniqueName) {
		CommodityCatalog commodityCatalog = new CommodityCatalog();
		commodityCatalog.setUniqueName(uniqueName);
		List<CommodityCatalog> commodityCatalogs = searchCommodityCatalog(commodityCatalog);
		commodityCatalog = commodityCatalogs.get(0);
		if (commodityCatalog.getIsActivated().equals("已激活")) {
			commodityCatalog.setUniqueName(uniqueName);
			commodityCatalog.setIsActivated("已停用");
			setIsActivated(commodityCatalog);
		}

	}

	public boolean validateIsActivated(String[] states) {
		boolean flag = true;
		for (String state : states) {
			if (!state.equals("已激活")) {
				flag = false;
				return flag;
			}
		}
		return flag;
	}

	public void addShoppingCartCount(String uniqueName) {
		commodityDao.addShoppingCartCount(uniqueName);
	}

	public void addViewInfoCount(String uniqueName) {
		// TODO Auto-generated method stub
		commodityDao.addViewInfoCount(uniqueName);
		
	}

}
