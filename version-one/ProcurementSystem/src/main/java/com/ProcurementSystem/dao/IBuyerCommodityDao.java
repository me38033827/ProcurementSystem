package com.ProcurementSystem.dao;

import java.util.List;
import java.util.Map;
import com.ProcurementSystem.entity.Commodity;

public interface IBuyerCommodityDao {
	public boolean insertCommodity(Commodity Commodity);//增

	public List<Commodity> searchCommodity(Map<String,Object> searchParams);//搜索全部商品，查（分页）

	public Boolean updateCommodity(Commodity commodity);//更新商品信息

	public int getRowCount();//查询总行数，分页使用
	
	public List<String> getAllCommoditiesValidateStateByCatalog(String uniqueName);//获得对应商品目录的商品验证状态，用于修改商品目录的验证状态

	public List<Commodity> getAllActivatedCommodities();
	public void clearSpscCode(String spscCode);//若该code在xml文件中不存在，则设置为-1

	public List<Commodity> searchActivatedCommodity(Map<String, Object> searchParams);//搜索已激活的商品

	public int getActivatedRowCount(Map<String, Object> searchParams);//获得激活商品的总行数

	public void addShoppingCartCount(String uniqueName);//增加加入购物车的次数

	public void addViewInfoCount(String uniqueName);//增加被查看的次数

	public int getMultiSearchRowCount(String content);

	public List<Commodity> multiFieldSearchDao(Map<String, Object> searchMap);

	public List<Commodity> geTop50(Map<String,Object> map);

	public List<Commodity> getRecommend(Map<String, Object> map);
}
