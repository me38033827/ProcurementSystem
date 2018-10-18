package com.ProcurementSystem.dao;

import java.util.List;

import com.ProcurementSystem.entity.Login;
import com.ProcurementSystem.entity.UNSPSC;
import com.ProcurementSystem.entity.UNSPSCTreeNode;

public interface IUNSPSCDao {

	void insertUNSPSC(List<UNSPSC> unspscList);

	List<UNSPSCTreeNode> getChildren(int id);
}

