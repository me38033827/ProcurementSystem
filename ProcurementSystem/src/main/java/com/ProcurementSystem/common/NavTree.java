package com.ProcurementSystem.common;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;

public class NavTree {

	TreeNode root;

	public NavTree() {
		root = new TreeNode();
		root.setSpscCode("0");
		root.setChildList(new LinkedList<TreeNode>());
		root.setName("");
	}

	/** 添加结点 */
	public boolean addChild(String code) {
		TreeNode parentNode = root;
		ArrayList<String> nameList = XMLResolve.getLayerNames(code);
		if (nameList == null) {// 将该code清空，即归为未分类项目
			return false;
		}
		String spscCode = "";
		int i = 0, length = code.length() / 2;// 用于从ArrayList中取出层级名
		while (code.length() > 0) {
			String leftCode = code.substring(0, 2);
			String rightCode = code.substring(2);
			TreeNode newNode = new TreeNode();
			spscCode += leftCode;
			newNode.setSpscCode(spscCode);// 设置spscCode
			// 判断当前结点是否在父节点的孩子结点中已经存在
			TreeNode findNode = findNodeInParent(parentNode, newNode);
			if (findNode == null) {
				newNode.setName(nameList.get(length - i - 1));// 设置分类名
				newNode.setParentNode(parentNode);
				parentNode.getChildList().add(newNode);// 设置父节点
				parentNode.setQuantity(parentNode.getQuantity() + 1);// 设置分类数量
				parentNode = newNode;// 设置下一次循环的父节点
			} else {
				findNode.setQuantity(findNode.getQuantity() + 1);
				parentNode = findNode;// 设置下一次循环的父节点
			}
			code = rightCode;// 为下一个循环做准备
			i++;
		}
		return true;

	}

	/** 在父节点中查找 */
	private TreeNode findNodeInParent(TreeNode parentNode, TreeNode newNode) {
		List<TreeNode> childs = parentNode.getChildList();
		for (TreeNode child : childs) {
			if (child.getSpscCode().equals(newNode.getSpscCode())) {
				return child;
			}
		}
		return null;
	}

	/** 遍历一棵树，层次遍历，借助一个队列 */
	public String traverse() {
		String str="";
		int level = 0;
		Queue<TreeNode> quee = new LinkedList<>();
		quee.offer(root);
		while (!quee.isEmpty()) {
			TreeNode node = quee.poll();
			if (level == (node.getSpscCode().length() / 2))
				str+=node.getName() + " ";
			else {
				level++;
				str+="\n";
				str+=node.getName() + " ";
			}
			List<TreeNode> childs = node.getChildList();
			Iterator<TreeNode> iterator = childs.iterator();
			while (iterator.hasNext()) {
				quee.offer(iterator.next());
			}
		}
		return str;
	}

	public ArrayList<TreeNode> getNavClass(int i) {//获得第i层级的结点
		ArrayList<TreeNode> list = new ArrayList<>();
		Queue<TreeNode> quee = new LinkedList<>();
		quee.offer(root);
		while(!quee.isEmpty()){
			TreeNode node = quee.poll();
			if(node.getSpscCode().length()/2 <= i){
				if(node.getSpscCode().length()/2 == i){//把i层的结点加入list
					list.add(node);
				}
			}else{
				break;
			}
			List<TreeNode> childs = node.getChildList();//将该结点的孩子结点入队
			Iterator<TreeNode> iterator = childs.iterator();
			while (iterator.hasNext()) {
				quee.offer(iterator.next());
			}
		}
		return list;
	}
	
	

	public static void main(String[] args) {
		NavTree navTree = new NavTree();
		navTree.addChild("14111501");
		navTree.addChild("14111502");
		navTree.addChild("14111503");
		navTree.traverse();
	}

}

//
// public NavTree(NavTree parentNode) {
// this.getParentNode();
// initChildList();
// }
//
// public boolean isLeaf() {
// if (childList == null) {
// return true;
// } else {
// if (childList.isEmpty()) {
// return true;
// } else {
// return false;
// }
// }
// }
//
// /* 插入一个child节点到当前节点中 */
// public void addChildNode(NavTree treeNode) {
// initChildList();
// childList.add(treeNode);
// }
//
// public void initChildList() {
// if (childList == null)
// childList = new ArrayList<NavTree>();
// }
//
// public boolean isValidTree() {
// return true;
// }
//
// /* 返回当前节点的父辈节点集合 */
// public List<NavTree> getElders() {
// List<NavTree> elderList = new ArrayList<NavTree>();
// NavTree parentNode = this.getParentNode();
// if (parentNode == null) {
// return elderList;
// } else {
// elderList.add(parentNode);
// elderList.addAll(parentNode.getElders());
// return elderList;
// }
// }
//
// /* 返回当前节点的晚辈集合 */
// public List<NavTree> getJuniors() {
// List<NavTree> juniorList = new ArrayList<NavTree>();
// List<NavTree> childList = this.getChildList();
// if (childList == null) {
// return juniorList;
// } else {
// int childNumber = childList.size();
// for (int i = 0; i < childNumber; i++) {
// NavTree junior = childList.get(i);
// juniorList.add(junior);
// juniorList.addAll(junior.getJuniors());
// }
// return juniorList;
// }
// }
//
// /* 返回当前节点的孩子集合 */
// public List<NavTree> getChildList() {
// return childList;
// }
//
// /* 删除节点和它下面的晚辈 */
// public void deleteNode() {
// NavTree parentNode = this.getParentNode();
// int id = this.getSpscCode();
//
// if (parentNode != null) {
// parentNode.deleteChildNode(id);
// }
// }
//
// /* 删除当前节点的某个子节点 */
// public void deleteChildNode(int childId) {
// List<NavTree> childList = this.getChildList();
// int childNumber = childList.size();
// for (int i = 0; i < childNumber; i++) {
// NavTree child = childList.get(i);
// if (child.getSpscCode() == childId) {
// childList.remove(i);
// return;
// }
// }
// }
//
// /* 动态的插入一个新的节点到当前树中 */
// public boolean insertJuniorNode(NavTree treeNode) {
// int juniorParentId = treeNode.getParentId();
// if (this.parentId == juniorParentId) {
// addChildNode(treeNode);
// return true;
// } else {
// List<NavTree> childList = this.getChildList();
// int childNumber = childList.size();
// boolean insertFlag;
//
// for (int i = 0; i < childNumber; i++) {
// NavTree childNode = childList.get(i);
// insertFlag = childNode.insertJuniorNode(treeNode);
// if (insertFlag == true)
// return true;
// }
// return false;
// }
// }
//
// /* 找到一颗树中某个节点 */
// public NavTree findTreeNodeById(int id) {
// if (this.selfId == id)
// return this;
// if (childList.isEmpty() || childList == null) {
// return null;
// } else {
// int childNumber = childList.size();
// for (int i = 0; i < childNumber; i++) {
// NavTree child = childList.get(i);
// NavTree resultNode = child.findTreeNodeById(id);
// if (resultNode != null) {
// return resultNode;
// }
// }
// return null;
// }
// }
//
// /* 遍历一棵树，层次遍历 */
// public void traverse() {
// if (selfId < 0)
// return;
// print(this.selfId);
// if (childList == null || childList.isEmpty())
// return;
// int childNumber = childList.size();
// for (int i = 0; i < childNumber; i++) {
// NavTree child = childList.get(i);
// child.traverse();
// }
// }
//
// public void print(String content) {
// System.out.println(content);
// }
//
// public void print(int content) {
// System.out.println(String.valueOf(content));
// }
//
// public void setChildList(List<NavTree> childList) {
// this.childList = childList;
// }
//
// public int getParentId() {
// return parentId;
// }
//
// public void setParentId(int parentId) {
// this.parentId = parentId;
// }
//
// public int getSpscCode() {
// return selfId;
// }
//
// public void setSelfId(int selfId) {
// this.selfId = selfId;
// }
//
// public NavTree getParentNode() {
// return parentNode;
// }
//
// public void setParentNode(NavTree parentNode) {
// this.parentNode = parentNode;
// }
//
// public String getNodeName() {
// return nodeName;
// }
//
// public void setNodeName(String nodeName) {
// this.nodeName = nodeName;
// }
//
// public Object getObj() {
// return obj;
// }
//
// public void setObj(Object obj) {
// this.obj = obj;
// }
// }