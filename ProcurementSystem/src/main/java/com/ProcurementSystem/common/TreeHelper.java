package com.ProcurementSystem.common;

import java.util.List;
import java.util.Iterator;
import java.util.ArrayList;
import java.util.HashMap;

public class TreeHelper {

	private NavTree root;
	private List<NavTree> tempNodeList;
	private boolean isValidTree = true;

	public TreeHelper() {
	}

	public TreeHelper(List<NavTree> treeNodeList) {
		tempNodeList = treeNodeList;
		generateTree();
	}

	public static NavTree getTreeNodeById(NavTree tree, int id) {
		if (tree == null)
			return null;
		NavTree treeNode = tree.findTreeNodeById(id);
		return treeNode;
	}

	/** generate a tree from the given treeNode or entity list */
	public void generateTree() {
		HashMap nodeMap = putNodesIntoMap();
		putChildIntoParent(nodeMap);
	}

	/**
	 * put all the treeNodes into a hash table by its id as the key
	 * 
	 * @return hashmap that contains the treenodes
	 */
	protected HashMap putNodesIntoMap() {
		int maxId = Integer.MAX_VALUE;
		HashMap nodeMap = new HashMap<String, NavTree>();
		Iterator it = tempNodeList.iterator();
		while (it.hasNext()) {
			NavTree treeNode = (NavTree) it.next();
			int id = treeNode.getSelfId();
			if (id < maxId) {
				maxId = id;
				this.root = treeNode;
			}
			String keyId = String.valueOf(id);

			nodeMap.put(keyId, treeNode);
			// System.out.println("keyId: " +keyId);
		}
		return nodeMap;
	}

	/**
	 * set the parent nodes point to the child nodes
	 * 
	 * @param nodeMap
	 *            a hashmap that contains all the treenodes by its id as the key
	 */
	protected void putChildIntoParent(HashMap nodeMap) {
		Iterator it = nodeMap.values().iterator();
		while (it.hasNext()) {
			NavTree treeNode = (NavTree) it.next();
			int parentId = treeNode.getParentId();
			String parentKeyId = String.valueOf(parentId);
			if (nodeMap.containsKey(parentKeyId)) {
				NavTree parentNode = (NavTree) nodeMap.get(parentKeyId);
				if (parentNode == null) {
					this.isValidTree = false;
					return;
				} else {
					parentNode.addChildNode(treeNode);
					// System.out.println("childId: " +treeNode.getSelfId()+"
					// parentId: "+parentNode.getSelfId());
				}
			}
		}
	}

	/** initialize the tempNodeList property */
	protected void initTempNodeList() {
		if (this.tempNodeList == null) {
			this.tempNodeList = new ArrayList<NavTree>();
		}
	}

	/** add a tree node to the tempNodeList */
	public void addTreeNode(NavTree treeNode) {
		initTempNodeList();
		this.tempNodeList.add(treeNode);
	}

	/**
	 * insert a tree node to the tree generated already
	 * 
	 * @return show the insert operation is ok or not
	 */
	public boolean insertTreeNode(NavTree treeNode) {
		boolean insertFlag = root.insertJuniorNode(treeNode);
		return insertFlag;
	}

	/**
	 * adapt the entities to the corresponding treeNode
	 * 
	 * @param entityList
	 *            list that contains the entities
	 * @return the list containg the corresponding treeNodes of the entities
	 */
	public static List<NavTree> changeEnititiesToTreeNodes(List entityList) {
		OrganizationEntity orgEntity = new OrganizationEntity();
		List<NavTree> tempNodeList = new ArrayList<NavTree>();
		NavTree treeNode;

		Iterator it = entityList.iterator();
		while (it.hasNext()) {
			orgEntity = (OrganizationEntity) it.next();
			treeNode = new NavTree();
			treeNode.setObj(orgEntity);
			treeNode.setParentId(orgEntity.getParentId());
			treeNode.setSelfId(orgEntity.getOrgId());
			treeNode.setNodeName(orgEntity.getOrgName());
			tempNodeList.add(treeNode);
		}
		return tempNodeList;
	}

	public boolean isValidTree() {
		return this.isValidTree;
	}

	public NavTree getRoot() {
		return root;
	}

	public void setRoot(NavTree root) {
		this.root = root;
	}

	public List<NavTree> getTempNodeList() {
		return tempNodeList;
	}

	public void setTempNodeList(List<NavTree> tempNodeList) {
		this.tempNodeList = tempNodeList;
	}

}

class OrganizationEntity {
	public int parentId;
	public int orgId;
	public String orgName;

	public int getParentId() {
		return parentId;
	}

	public void setParentId(int parentId) {
		this.parentId = parentId;
	}

	public int getOrgId() {
		return orgId;
	}

	public void setOrgId(int orgId) {
		this.orgId = orgId;
	}

	public String getOrgName() {
		return orgName;
	}

	public void setOrgName(String orgName) {
		this.orgName = orgName;
	}
}