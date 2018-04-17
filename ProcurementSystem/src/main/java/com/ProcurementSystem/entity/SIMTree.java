package com.ProcurementSystem.entity;

import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;

public class SIMTree {

	public SIMTreeNode root;
	private String treeStr;
	
	public SIMTree() {
		root = new SIMTreeNode();
		SupplierSIM sim = new SupplierSIM();
		sim.setId(10000);
		sim.setTitle("初始根目录");
		root.setType(1);
		root.setSupplierSIM(sim);
	}

	public void addChild(SIMTreeNode parent, SIMTreeNode child) {
		if (parent.getChildren() != null) {
			int hasSame = 0;
			// 检查是否有相同子节点后添加新的子节点
			for (SIMTreeNode node : parent.getChildren()) {
				if (node.getSupplierSIM().getId() == child.getSupplierSIM().getId()) {
					hasSame = 1;
					break;
				}
			} // 判断是否重复
			if (hasSame == 0) {
				parent.getChildren().add(child);
			}
		}
	}

	// 遍历
	public void traverse() {
		Queue<SIMTreeNode> queue = new LinkedList<>();
		queue.offer(root);
		while (!queue.isEmpty()) {
			SIMTreeNode parent = queue.poll();// 父节点
			System.out.println(parent.getSupplierSIM().getId()+ parent.getSupplierSIM().getTitle());
			if (parent.getChildren() != null) {
				Iterator<SIMTreeNode> iterator = parent.getChildren().iterator();
				while (iterator.hasNext()) {
					queue.offer(iterator.next());// 入队
				}
			} 
		}
	}

	
	// 遍历创建json 不可编辑
	public JSONArray traverseToJSONArrayWithAnswer(List<SupplierSIMAnswer> answers) {
		Queue<SIMTreeNode> queue = new LinkedList<>();
		queue.offer(root);
		SIMTreeNode a = queue.poll();
		return traverseHelperWithAnswer(a,answers);
	}
		
	
	public JSONArray traverseHelperWithAnswer(SIMTreeNode parentNode,List<SupplierSIMAnswer> answers){
		JSONArray array = new JSONArray();
		// type: folder
		if(parentNode.getType()==1){
			List<SIMTreeNode> children = parentNode.getChildren();
			// control: used for 序号显示
			Boolean control = false;
			if(parentNode.getNumber()==null){
				control = true;
			}
			
			for (SIMTreeNode child : children){
				String answer="";
				JSONObject jsonObj = new JSONObject();
				if(control==true){
					child.setNumber(child.getOrder().toString());
				}else{
					child.setNumber(parentNode.getNumber()+"."+child.getOrder().toString());
				}
				if(child.getType()==2){
					int id = child.getSupplierSIM().getId();
					for(SupplierSIMAnswer a:answers){
						if(a.getQuestionId()==id){
							if(a.getAnswer()!=null){
								answer="<a class=\"questionnaire-ans\"id=\"ans-"+ child.getSupplierSIM().getId() +"\">"+a.getAnswer()+"</a>";
							}
							answers.remove(a);
							break;
						}
					}
				}
				
				jsonObj.put("text", child.getNumber()+"    "+child.getSupplierSIM().getTitle()
						+answer);
				jsonObj.put("href", "");
				if(child.getType()==1){
					jsonObj.put("nodes", traverseHelperWithAnswer(child,answers));
				}
				array.add(jsonObj);
			}
			return array;
		}
		// type: question
		return array;
	}
	
	
	public JSONArray traverseHelperWithoutSelection(SIMTreeNode parentNode){
		JSONArray array = new JSONArray();
		// type: folder
		if(parentNode.getType()==1){
			List<SIMTreeNode> children = parentNode.getChildren();
			// control: used for 序号显示
			Boolean control = false;
			if(parentNode.getNumber()==null){
				control = true;
			}
			
			for (SIMTreeNode child : children){
				JSONObject jsonObj = new JSONObject();
				String li="";
				String answer = "";
				if(control==true){
					child.setNumber(child.getOrder().toString());
				}else{
					child.setNumber(parentNode.getNumber()+"."+child.getOrder().toString());
				}
				//folder
				if(child.getType()==2){
					int child_type = child.getType();
					int child_accept_value = child.getSupplierSIM().getAcceptValue();
					int child_answer_type = child.getSupplierSIM().getAnswerType();
					//有选项
					if(child_type==2 && child_accept_value==2){
						answer= "<select class=\"selection\" id=\"ans-"+child.getSupplierSIM().getId()+"\" name=\"ans-"+child.getSupplierSIM().getId()+"\">\n";
						answer+="<option class='selection' selected=\"selected\" disabled=\"disabled\" style='display:none' value=''></option>";
						List<SupplierSIMSelection> selections = child.getSupplierSIM().getSelections();
						for(SupplierSIMSelection selection: selections){
							answer = answer +  "<option class=\"selection\" value=\""+selection.getContent()+"\">"+selection.getContent()+"</option>\n";
						}
						answer=answer+"</select>";
					}
					if(child_type==2 && child_accept_value!=2 && child_answer_type==1){
						answer="<input class=\"input\" id=\"ans-"+child.getSupplierSIM().getId()+"\" name=\"ans-"+child.getSupplierSIM().getId()+"\"/>";
					}
					
				}
				jsonObj.put("text", child.getNumber()+"    "+child.getSupplierSIM().getTitle()
						+ "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" + answer);
				jsonObj.put("href", "");
				if(child.getType()==1){
					jsonObj.put("nodes", traverseHelperWithoutSelection(child));
				}
				array.add(jsonObj);
			}
			return array;
		}
		// type: question
		return array;
	}
	
	
	// 遍历创建json 不可编辑
	public JSONArray traverseToJSONArrayWithoutSelection() {
		Queue<SIMTreeNode> queue = new LinkedList<>();
		queue.offer(root);
		SIMTreeNode a = queue.poll();
		return traverseHelperWithoutSelection(a);
	}
	
	public JSONArray traverseHelper(SIMTreeNode parentNode){
		JSONArray array = new JSONArray();
		// type: folder
		if(parentNode.getType()==1){
			List<SIMTreeNode> children = parentNode.getChildren();
			// control: used for 序号显示
			Boolean control = false;
			if(parentNode.getNumber()==null){
				control = true;
			}
			for (SIMTreeNode child : children){
				JSONObject jsonObj = new JSONObject();
				String li="";
				String answer = "";
				if(control==true){
					child.setNumber(child.getOrder().toString());
				}else{
					child.setNumber(parentNode.getNumber()+"."+child.getOrder().toString());
				}
				//folder
				if(child.getType()==1){
					li="<li><a class=\"manu-deactive\">添加</a ></li>\n"+
							"<li><a onclick=\"createFolder("+child.getSupplierSIM().getId()+")\" class=\"manu-active sim-create-folder folder-" + child.getSupplierSIM().getId()+"\" >区段</a ></li>\n"+
							"<li><a onclick=\"createQuestion("+child.getSupplierSIM().getId()+")\" class=\"manu-active sim-create-question question-" + child.getSupplierSIM().getId()+"\" >问题</a ></li>\n"+
							"<li><a class=\"manu-deactive\">操作</a ></li>\n"+
							"<li><a onclick=\"editFolder("+child.getSupplierSIM().getId()+")\" class=\"manu-active sim-edit-folder edit-" + child.getSupplierSIM().getId()+"\" >编辑</a ></li>\n"+
							"<li><a onclick=\"deleteFolder("+child.getSupplierSIM().getId()+")\" class=\"manu-active sim-delete-folder delete-" + child.getSupplierSIM().getId()+"\" >删除</a ></li>\n";
				}
				//question
				else{
					
					li="<li><a class=\"manu-deactive\">操作</a ></li>\n"+
							"<li><a onclick=\"editQuestion("+child.getSupplierSIM().getId()+")\" class=\"manu-active sim-edit-question edit-" + child.getSupplierSIM().getId()+"\" >编辑</a ></li>\n"+
							"<li><a onclick=\"deleteQuestion("+child.getSupplierSIM().getId()+")\" class=\"manu-active sim-delete-question delete-" + child.getSupplierSIM().getId()+"\" >删除</a ></li>\n";

					int child_type = child.getType();
					int child_accept_value = child.getSupplierSIM().getAcceptValue();
					int child_answer_type = child.getSupplierSIM().getAnswerType();
					int child_multiple = child.getSupplierSIM().getMultipleValue();
					//单选
					if(child_type==2 && child_accept_value==2 && child_multiple == 0){
						answer= "<select class=\"selection\" id=\"ans-"+child.getSupplierSIM().getId()+"\" name=\"ans-"+child.getSupplierSIM().getId()+"\">\n";
						answer+="<option class='selection' selected=\"selected\" disabled=\"disabled\" style='display:none' value=''></option>";
						List<SupplierSIMSelection> selections = child.getSupplierSIM().getSelections();
						for(SupplierSIMSelection selection: selections){
							answer = answer +  "<option class=\"selection\" value=\""+selection.getContent()+"\">"+selection.getContent()+"</option>\n";
						}
						answer=answer+"</select>";
					}
					//多选
					if(child_type==2 && child_accept_value==2 && child_multiple == 1){
						int simId = child.getSupplierSIM().getId();
						answer+="<div id=\""+simId+"\"></div>";
//						List<SupplierSIMSelection> selections = child.getSupplierSIM().getSelections();
//						for(SupplierSIMSelection selection: selections){
//							String label = simId+"-"+child.getOrder();
//							answer+="<div id=\""+simId+"\"></div>";
////							answer+="<input type=\"checkbox\" id=\""+label+"\" class=\"chk\" value=\""+selection.getContent()+"\">"
////									+"<label for=\""+label+"\"></label><span>"+selection.getContent()+"</span><br>";
//						}
					}
					//填空
					if(child_type==2 && child_accept_value!=2 && child_answer_type==1){
						answer="<input class=\"input\" id=\"ans-"+child.getSupplierSIM().getId()+"\" name=\"ans-"+child.getSupplierSIM().getId()+"\"/>";
					}
					//日期
					if(child_type==2 && child_accept_value!=2 && child_answer_type==5){
						answer="<label for=\"meeting\"></label><input name=\"initialAnswer\" class=\"form-control input inline-b\" id=\"meeting\""
							+ "type=\"date\" value=\"2017-12-01\" />";
					}
				}
				jsonObj.put("text", child.getNumber()+"    "+child.getSupplierSIM().getTitle()
						+"<div class=\"btn-group\">\n" +
					    "\t\t<button class=\"btn-ma\" data-toggle=\"dropdown\" style=\"background-color: transparent; width: 100%\">\n" +
					    "\t\t	<span class=\"caret\"></span>\n" +
					    "\t\t</button>\n" +
					    "\t\t<ul class=\"dropdown-menu\" style=\"z-index: 9999\">\n" +
					    li+
					    "\t\t</ul>\n" +
					    "\t\t</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" + answer);
				jsonObj.put("href", "");
				if(child.getType()==1){
					jsonObj.put("nodes", traverseHelper(child));
				}
				array.add(jsonObj);
			}
			return array;
		}
		// type: question
		return array;
	}
	
	// 遍历创建json 可编辑
	public JSONArray traverseToJSONArray() {
		Queue<SIMTreeNode> queue = new LinkedList<>();
		queue.offer(root);
		SIMTreeNode a = queue.poll();
		return traverseHelper(a);
	}
}
