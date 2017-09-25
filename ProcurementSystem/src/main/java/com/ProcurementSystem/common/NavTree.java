package com.ProcurementSystem.common;

import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;

public class NavTree {
	class TreeNode {
		private String selfId;
		private String name;
		private String spscCode;
		private int quantity;// 当前分类下的商品数
		private TreeNode parentNode;
		private List<TreeNode> childList;

		public TreeNode() {
			childList = new LinkedList<TreeNode>();
		}

		public String getSelfId() {
			return selfId;
		}

		public void setSelfId(String selfId) {
			this.selfId = selfId;
		}

		public String getName() {
			return name;
		}

		public void setName(String name) {
			this.name = name;
		}

		public String getSpscCode() {
			return spscCode;
		}

		public void setSpscCode(String spscCode) {
			this.spscCode = spscCode;
		}

		public int getQuantity() {
			return quantity;
		}

		public void setQuantity(int quantity) {
			this.quantity = quantity;
		}

		public TreeNode getParentNode() {
			return parentNode;
		}

		public void setParentNode(TreeNode parentNode) {
			this.parentNode = parentNode;
		}

		public List<TreeNode> getChildList() {
			return childList;
		}

		public void setChildList(List<TreeNode> childList) {
			this.childList = childList;
		}

	}

	TreeNode root;

	public NavTree() {
		root = new TreeNode();
		root.selfId = "0";
		root.spscCode="0";
		root.childList = new LinkedList<TreeNode>();
	}

	/** 添加结点 */
	public void addChild(String code) {
		TreeNode parentNode = root;
		String spscCode = "";
		while (code.length() > 0) {
			String leftCode = code.substring(0, 2);
			String rightCode = code.substring(2);
			TreeNode newNode = new TreeNode();
			newNode.setSelfId(leftCode);// 设置selfId
			spscCode += leftCode;
			// 判断当前结点是否在父节点中已经存在
			TreeNode findNode = findNodeInParent(parentNode, newNode);
			if (findNode == null) {
				String name = getNameByCode("", leftCode);// 从xml中查找名称
				newNode.setName(name);// 设置分类名
				newNode.setSpscCode(spscCode);// 设置spscCode
				newNode.setParentNode(parentNode);
				parentNode.getChildList().add(newNode);// 设置父节点
				parentNode.setQuantity(parentNode.getQuantity() + 1);// 设置分类数量
				parentNode = newNode;// 设置下一次循环的父节点
			} else {
				findNode.setQuantity(findNode.getQuantity() + 1);
				parentNode = findNode;// 设置下一次循环的父节点
			}
			code = rightCode;// 为下一个循环做准备
		}

	}

	/** 在父节点中查找 */
	private TreeNode findNodeInParent(TreeNode parentNode, TreeNode newNode) {
		List<TreeNode> childs = parentNode.getChildList();
		for (TreeNode child : childs) {
			if (child.getSelfId().equals(newNode.getSelfId())) {
				return child;
			}
		}
		return null;
	}

	private String getNameByCode(String filePath, String leftCode) {
		// TODO Auto-generated method stub
		return null;
	}

	/** 遍历一棵树，层次遍历，借助一个队列 */
	 public void traverse() {
		 int level=0;
		 Queue<TreeNode> quee = new LinkedList<>();
		 quee.offer(root);
		 while(!quee.isEmpty()){
			 TreeNode node = quee.poll();
			 if(level == (node.getSpscCode().length()/2))
				 System.out.print(node.getSelfId()+" ");
			 else{
				 level++;
				 System.out.println();
				 System.out.print(node.getSelfId()+" ");
			 }
			 List<TreeNode> childs = node.getChildList();
			 Iterator<TreeNode> iterator = childs.iterator();
			 while(iterator.hasNext()){
				quee.offer(iterator.next());
				iterator.remove();
			 }
		 }
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
// int id = this.getSelfId();
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
// if (child.getSelfId() == childId) {
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
// public int getSelfId() {
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