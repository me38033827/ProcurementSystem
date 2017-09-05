package com.ProcurementSystem.service;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;

import javax.annotation.Resource;
import javax.validation.ConstraintViolation;
import javax.validation.Validation;
import javax.validation.Validator;
import javax.validation.ValidatorFactory;

import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;

import com.ProcurementSystem.common.PageParams;
import com.ProcurementSystem.dao.IBuyerCommodityDao;
import com.ProcurementSystem.entity.Commodity;

@Service
public class BuyerCommodityService {
	@Resource
	IBuyerCommodityDao commodityDao;

	public Boolean updateCommodity(Commodity commodity) {// 不分页的查询方法
		return commodityDao.updateCommodity(commodity);
	}

	public PageParams<Commodity> searchCommodity(Commodity commodity, int currPage) {// 分页的查询方法
		// TODO Auto-generated method stub
		PageParams<Commodity> pageParams = new PageParams<>();
		int rowCount = commodityDao.getRowCount();// 获得商品的总行数rowCount
		pageParams.setRowCount(rowCount);
		if (currPage > pageParams.getTotalPages())// 判断当前页的合法性
			currPage = pageParams.getTotalPages();
		else if (currPage < 1)
			currPage = 1;
		pageParams.setCurrPage(currPage);
		int offset = (pageParams.getCurrPage() - 1) * PageParams.pageSize;
		int size = PageParams.pageSize;

		Map<String, Object> searchParams = new HashMap<>();// 构造查询参数
		searchParams.put("commodity", commodity);
		searchParams.put("offset", offset);
		searchParams.put("size", size);
		pageParams.setData(commodityDao.searchCommodity(searchParams));
		return pageParams;
	}

	public void insertCommodity(Commodity commodity) {// 插入商品
		// TODO Auto-generated method stub
		commodityDao.insertCommodity(commodity);
	}

	public boolean validateCommodity(Commodity commodity) {// 验证商品的属性
		ValidatorFactory factory = Validation.buildDefaultValidatorFactory();
		Validator validator = factory.getValidator();
		Set<ConstraintViolation<Commodity>> constraintViolations = validator.validate(commodity);
		System.out.println(constraintViolations.size());
		if (constraintViolations.size() > 0)
			return false;
		return true;

	}

	public ModelMap validateCommodityAndGetMessages(Commodity commodity, ModelMap map) {// 验证商品的属性,并获取错误信息
		ValidatorFactory factory = Validation.buildDefaultValidatorFactory();
		Validator validator = factory.getValidator();
		boolean result = true;
		String message = "";
		try {
			message = validator.validateProperty(commodity, "gcmEmailAddress").iterator().next().getMessage();
			result = false;
		} catch (Exception e) {//如果属性验证正确会抛出异常错误
			message = "";
		}
		map.put("Error_gcmEmailAddress", message);
		try {
			message = validator.validateProperty(commodity, "effectiveDate").iterator().next().getMessage();
			result = false;
		} catch (Exception e) {
			message = "";
		}
		map.put("Error_effectiveDate", message);
		try {
			message = validator.validateProperty(commodity, "expirationDate").iterator().next().getMessage();
			result = false;
		} catch (Exception e) {
			message = "";
		}
		map.put("Error_expirationDate", message);
		try {
			message = validator.validateProperty(commodity, "isHazardousMaterials").iterator().next().getMessage();
			result = false;
		} catch (Exception e) {
			message = "";
		}
		map.put("Error_isHazardousMaterials", message);
		try {
			message = validator.validateProperty(commodity, "isGreen").iterator().next().getMessage();
			result = false;
		} catch (Exception e) {
			message = "";
		}
		map.put("Error_isGreen", message);
		map.put("result", result);
		return map;
	}
}
