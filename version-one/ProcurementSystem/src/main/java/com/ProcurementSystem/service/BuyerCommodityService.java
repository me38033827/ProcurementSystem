package com.ProcurementSystem.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.annotation.Resource;
import javax.validation.ConstraintViolation;
import javax.validation.Validation;
import javax.validation.Validator;
import javax.validation.ValidatorFactory;

import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;

import com.ProcurementSystem.common.NavTree;
import com.ProcurementSystem.common.PageParams;
import com.ProcurementSystem.dao.IBuyerCommodityDao;
import com.ProcurementSystem.dao.IBuyerCommoditySpscCodeHelperDao;
import com.ProcurementSystem.dao.IUserBehaviorDao;
import com.ProcurementSystem.entity.CatalogView;
import com.ProcurementSystem.entity.Commodity;
import com.ProcurementSystem.entity.CommoditySpscCodeHelper;
import com.ProcurementSystem.entity.UserBehavior;

@Service
public class BuyerCommodityService {
	@Resource
	IBuyerCommodityDao commodityDao;
	@Resource
	IBuyerCommoditySpscCodeHelperDao spscCodeHelperDao;
	@Resource
	IUserBehaviorDao userBehaviorDao;
	@Resource
	CatalogViewService catalogViewService;

	public Boolean updateCommodity(Commodity commodity) {// 不分页的查询方法
		return commodityDao.updateCommodity(commodity);
	}

	/** 商品搜索 */
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
		int offset = (pageParams.getCurrPage() - 1) * pageParams.pageSize;
		int size = pageParams.pageSize;

		Map<String, Object> searchParams = new HashMap<>();// 构造查询参数
		searchParams.put("commodity", commodity);
		searchParams.put("offset", offset);
		searchParams.put("size", size);
		pageParams.setData(commodityDao.searchCommodity(searchParams));
		return pageParams;
	}

	public PageParams<Commodity> searchCommodity(Commodity commodity, int currPage, int mode) {// 分页的查询方法,mode=1表示查找激活的商品
		// TODO Auto-generated method stub
		PageParams<Commodity> pageParams = new PageParams<>();
		//用户组限制
		CatalogView catalogView = new CatalogView();
		catalogView.setGroup("0001");  //注意！！ 暂时默认为0001组
		List<CatalogView> catalogViews = catalogViewService.getCatalogView(catalogView);
		List<CatalogView> otherCatalogViews = catalogViewService.getNotCatalogView(catalogView);
		Map<String, Object> searchParams = new HashMap<>();// 构造查询参数
		if(catalogViews!=null && !catalogViews.isEmpty())
			searchParams.put("catalogViews", catalogViews);
		if(otherCatalogViews!=null && !otherCatalogViews.isEmpty())
			searchParams.put("otherCatalogViews", otherCatalogViews);
		searchParams.put("commodity", commodity);
  		int rowCount = commodityDao.getActivatedRowCount(searchParams);// 获得激活商品的总行数rowCount
		pageParams.setRowCount(rowCount);
		if (pageParams.getTotalPages() > 0) {
			if (currPage > pageParams.getTotalPages())// 判断当前页的合法性
				currPage = pageParams.getTotalPages();
			else if (currPage < 1)
				currPage = 1;
			pageParams.setCurrPage(currPage);
			int offset = (pageParams.getCurrPage() - 1) * pageParams.pageSize;
			int size = pageParams.pageSize;
			
			searchParams.put("offset", offset);
			searchParams.put("size", size);
			
			List<Commodity> list = commodityDao.searchActivatedCommodity(searchParams);
			if (list != null)
				pageParams.setData(list);
		}
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
		} catch (Exception e) {// 如果属性验证正确会抛出异常错误
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

	public NavTree generateCommodityNav() {// 生成导航树
		NavTree navTree = new NavTree();
		List<Commodity> activatedCommodities = commodityDao.getAllActivatedCommodities();
		for (Commodity commodity : activatedCommodities) {
			boolean flag = navTree.addChild(commodity.getSpscCode());
			if (!flag)
				commodityDao.clearSpscCode(commodity.getSpscCode()); // 将错误code设置为-1
		}
		System.out.println("生成导航树:" + navTree.traverse());
		return navTree;
	}

	// 拆分spscCode，用于准入的精确匹配
	public void divideSpscCode(Commodity commodity) {
		String spscCode = commodity.getSpscCode();
		if (spscCode != null && spscCode.length() >= 2) {
			int count = spscCode.length()/2;
			for (int i = 1; i <= count; i++) {
				CommoditySpscCodeHelper commoditySpscCodeHelper = new CommoditySpscCodeHelper();
				commoditySpscCodeHelper.setCommodity(commodity);
				commoditySpscCodeHelper.setSpscCode(spscCode.substring(0, i * 2));
				spscCodeHelperDao.add(commoditySpscCodeHelper);
			}
		}
	}

	// 更新codeHelper表
	public void updateCommoditySpscCodeHelper(Commodity commodity) {
		CommoditySpscCodeHelper commoditySpscCodeHelper = new CommoditySpscCodeHelper();
		commoditySpscCodeHelper.setCommodity(commodity);
		spscCodeHelperDao.delete(commoditySpscCodeHelper);// 删除旧code
		divideSpscCode(commodity);// 拆分新code并存储
	}

	public PageParams<Commodity> multiFieldSearch(String content,int currPage) {
		PageParams<Commodity> params = new PageParams<>();
		int count = commodityDao.getMultiSearchRowCount(content);//获得允许显示的商品总数
		params.setCurrPage(currPage);
		params.setRowCount(count);
		Map<String,Object> searchMap = new HashMap<>();
		searchMap.put("size", params.getPageSize());
		searchMap.put("offset", params.getPageSize()*(currPage-1));
		searchMap.put("content", content);
		List<Commodity> commodities = commodityDao.multiFieldSearchDao(searchMap);
		if(commodities != null)
			params.setData(commodities);
		return params;
	}

	public PageParams<Commodity> getTop50(int curr) {
		Map<String,Object> map = new HashMap<>();
		PageParams<Commodity> pageParams = new PageParams<>();
		pageParams.pageSize = 3 * 4;
		if(curr>(50/pageParams.getPageSize()+1)) curr = 50/pageParams.getPageSize()+1;//边界处理
		pageParams.setCurrPage(curr);
		pageParams.setRowCount(50);
		map.put("offset",  (curr-1)*(pageParams.getPageSize()) );
		map.put("size", pageParams.getPageSize());
		if(curr == 50/pageParams.getPageSize()+1) map.put("size", 50 % pageParams.getPageSize());//边界处理
		List<Commodity> commodities = commodityDao.geTop50(map);
		if(commodities != null) pageParams.setData(commodities);
		return pageParams;
	}

	public PageParams<Commodity> getRecommend(int curr,Integer userId) {
		Map<String,Object> map = new HashMap<>();
		PageParams<Commodity> pageParams = new PageParams<>();
		pageParams.pageSize = 3 * 4;
		if(curr>(50/pageParams.getPageSize()+1)) curr = 50/pageParams.getPageSize()+1;//边界处理
		pageParams.setCurrPage(curr);
		pageParams.setRowCount(50);
		map.put("offset", (curr-1)*(pageParams.getPageSize()) );
		map.put("size", pageParams.getPageSize());
		if(curr == 50/pageParams.getPageSize()+1) map.put("size", 50 % pageParams.getPageSize());//边界处理
		List<UserBehavior> userBehaviors = userBehaviorDao.getSortRule(userId);//获取排序依据，code和Supplier
		List<UserBehavior> sortRuleBySupplier = userBehaviorDao.getSortRuleBySupplier(userId);
		
		map.put("sortRule", userBehaviors);
		map.put("sortRuleBySupplier", sortRuleBySupplier);
		List<Commodity> commodities = commodityDao.getRecommend(map);
		if(commodities != null) pageParams.setData(commodities);
		return pageParams;
	}

	
}
