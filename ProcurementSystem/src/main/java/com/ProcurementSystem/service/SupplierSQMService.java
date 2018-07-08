package com.ProcurementSystem.service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.ProcurementSystem.dao.ISupplierSQMDao;
import com.ProcurementSystem.entity.Commodity;
import com.ProcurementSystem.entity.SupplierSPM;
import com.ProcurementSystem.entity.SupplierSQM;
import com.ProcurementSystem.entity.UNSPSC;


@Service
public class SupplierSQMService {

	@Resource ISupplierSQMDao dao;
	public void InsertSQM(SupplierSQM sqm){
		dao.insertSQM(sqm);
	}
	
	public void updateSQMStatus(SupplierSQM sqm){
		dao.updateSQMStatus(sqm);
	}
	
	public void updateSQM(SupplierSQM sqm){
		dao.updateSQM(sqm);
	}
	
	public SupplierSQM getSupplierSQM(int id){
		return dao.getSupplierSQM(id);
	}
	
	public List<SupplierSQM> searchSupplierSQM(String content){
		return dao.searchSupplierSQM(content);
	}
	
	public int getMaxId(){
		return dao.getMaxId();
	}

	public List<SupplierSQM> completeSearchSupplierSQM(SupplierSQM supplierSQM, String content, String commodities){
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("supplierSQM", supplierSQM);
		params.put("content", content);
		//不添加商品条件搜索出来的结果
		List<SupplierSQM> supplierSQMs = dao.completeSearchSupplierSQM(params);
		if(!commodities.equals("")){
			//有商品条件
			System.out.println("Search for "+commodities);
			List<SupplierSQM> finalSupplierSQMs = new ArrayList<SupplierSQM>();
			String[] commodities_l = commodities.split(",");
			for (SupplierSQM sqm : supplierSQMs){
				if(sqm.getCommodities()!=null){
					System.out.println("id:" + sqm.getId());
					List<String> commodities_list = new ArrayList<String>();
					for(int i = 0; i < commodities_l.length; i++){
						commodities_list.add(commodities_l[i]);
					}
					System.out.println("commodities: " + commodities_list);
					Iterator<String> iterator = commodities_list.iterator();
					int sqmStatus = 0;
					while(iterator.hasNext()){
						String currentCommodity = iterator.next();
						int codeStatus = 0;
						for(UNSPSC sqmCommodity : sqm.getCommodities()){
							System.out.println("currentCommodity"+currentCommodity);
							System.out.println("sqm"+sqmCommodity.getId()+"");
							if(currentCommodity.startsWith(sqmCommodity.getId()+"")){
								codeStatus = 1;
								iterator.remove();
							}
							System.out.println("code"+codeStatus);
						}
						if(codeStatus == 0){
							sqmStatus = 1;
							break;
						}
					}
					if(sqmStatus == 0){
						System.out.println("sqm "+finalSupplierSQMs);
						finalSupplierSQMs.add(sqm);
					}
				}
			}
			System.out.println(finalSupplierSQMs);
			return finalSupplierSQMs;
		}else{
			return supplierSQMs;
		}
	}

	/**
	 * 删除sqm供应商资格
	 * @param id
	 */
	public void deleteSqmById(String id) {
		dao.deleteSqmById(id);
	}
}
