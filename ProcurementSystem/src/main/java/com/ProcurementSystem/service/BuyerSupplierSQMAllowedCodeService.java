package com.ProcurementSystem.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ProcurementSystem.dao.IBuyerSupplierSQMAllowedCodeDao;
import com.ProcurementSystem.entity.SupplierSQMAllowedCode;

@Service
public class BuyerSupplierSQMAllowedCodeService {
	@Resource
	IBuyerSupplierSQMAllowedCodeDao codeDao;

	public void setAllowedSpscCode(SupplierSQMAllowedCode allowedCode) {// 设置sqm准入的商品类别，拆字符串并持久化
		String oriCode = allowedCode.getSpscCode();
		String oriNode = allowedCode.getNodeId();
		String[] codes = oriCode.split(",");// 常量分隔符
		String[] nodes = oriNode.split(",");//node id
		for (int i = 0; i < codes.length; i++) {
			allowedCode.setSpscCode(codes[i]);
			allowedCode.setNodeId(nodes[i]);
			codeDao.insert(allowedCode);// 持久化一条准入的code
		}
	}
	
	public void modifyAllowedSpscCode(SupplierSQMAllowedCode allowedCode){
		//删掉旧的code
		codeDao.delete(allowedCode.getSqm().getId());
		//增加新的code
		String oriCode = allowedCode.getSpscCode();
		String oriNode = allowedCode.getNodeId();
		String[] codes = oriCode.split(",");// 常量分隔符
		String[] nodes = oriNode.split(",");//node id
		for (int i = 0; i < codes.length; i++) {
			allowedCode.setSpscCode(codes[i]);
			allowedCode.setNodeId(nodes[i]);
			codeDao.insert(allowedCode);// 持久化一条准入的code
		}
	}

}
