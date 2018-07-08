package com.ProcurementSystem.service;

import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ProcurementSystem.common.TemplateTaskTree;
import com.ProcurementSystem.dao.ISupplierDao;
import com.ProcurementSystem.entity.Supplier;
import com.ProcurementSystem.entity.Template;
import com.ProcurementSystem.entity.TemplateTaskPhase;
import com.ProcurementSystem.entity.TemplateTaskSchedule;
import com.ProcurementSystem.entity.TemplateTaskTreeNode;

@Service
public class SupplierService {

	@Resource
	ISupplierDao dao;
	@Resource
	BuyerTemplateTaskPhaseService templateTaskPhaseService;
	@Resource
	BuyerTemplateTaskTreeNodeService templateTaskTreeNodeService;
	@Resource
	BuyerTemplateService templateService;
	@Resource
	BuyerTemplateTaskScheduleService templateTaskScheduleService;

	public Supplier getSupplierDetail(int uniqueName) {
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("uniqueName", uniqueName);

		Supplier supplier = dao.getSupplierDetail(params);
		return supplier;
	}

	public List<Supplier> searchAllSupplier() {
		List<Supplier> suppliers = dao.searchAllSupplier();
		return suppliers;
	}

	public List<Supplier> completeSearchSupplier(Supplier supplier, String content) {
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("supplier", supplier);
		params.put("content", content);
		List<Supplier> suppliers = dao.completeSearchSupplier(params);
		return suppliers;
	}
	
	public List<Supplier> searchSupplier(String content){
		List<Supplier> suppliers = dao.searchSupplier("%"+content+"%");
		return suppliers;
	}

	public void insertSupplier(Supplier supplier) {
		dao.insertSupplier(supplier);
	}

	public int findMaxUniqueName() {
		return dao.findMaxUniqueName();
	}

	public void updateSupplier(Supplier supplier) {
		dao.updateSupplier(supplier);
	}

	public TemplateTaskTreeNode generateTaskTree(Template template) {
		/** 获取任务树 */
		List<Template> templates = templateService.get(template);// 获得SIM模板
		TemplateTaskTree templateTaskTree = new TemplateTaskTree(templates.get(0).getTemplateTaskTreeNode());
		templateTaskTree = templateTaskTreeNodeService.generateTemplateTree(templateTaskTree);// 生成SIM模板任务树
		/** 复制SIM任务树 */
		TemplateTaskTreeNode supplierTaskTreeNode = duplicateTaskTree(templateTaskTree.root);
		return supplierTaskTreeNode;
	}

	// 复制模板任务树至Supplier的任务树
	private TemplateTaskTreeNode duplicateTaskTree(TemplateTaskTreeNode oldRoot) {
		Queue<TemplateTaskTreeNode> quee = new LinkedList<>();
		quee.offer(oldRoot);
		while (!quee.isEmpty()) {
			TemplateTaskTreeNode parent = quee.poll();// 父节点
			if (parent.getType() == 1) {// 存阶段
				TemplateTaskPhase phase = parent.getTemplateTaskPhase();
				templateTaskPhaseService.add(phase);
				parent.setTemplateTaskPhase(phase);
				templateTaskTreeNodeService.add(parent);
			}else{//存待办事项
				TemplateTaskSchedule schedule = parent.getTemplateTaskSchedule();
				templateTaskScheduleService.add(schedule);
				parent.setTemplateTaskSchedule(schedule);
				templateTaskTreeNodeService.add(parent);
			}
			if (parent.getChildren() != null) {
				Iterator<TemplateTaskTreeNode> iterator = parent.getChildren().iterator();
				while (iterator.hasNext()) {
					TemplateTaskTreeNode child = iterator.next();
					child.setParentId(parent.getId());
					quee.offer(child);// 入队
				}
			}
		}
		return oldRoot;
	}
	
	/**
	 * 删除供应商
	 * @param id
	 * @return
	 */
	public String deleteSupplier(int id) {
		dao.deleteSupplier(id);
		return "1000";
	}
}
