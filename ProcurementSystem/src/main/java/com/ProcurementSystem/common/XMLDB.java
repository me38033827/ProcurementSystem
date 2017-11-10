package com.ProcurementSystem.common;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

import com.ProcurementSystem.entity.UNSPSC;

public class XMLDB {
	
	private static List<UNSPSC> unspsc;
	private static Map<String,Object> unspscMap;
	
	public static void main(String[] args) {
		
	}
	public List<UNSPSC> getAllCode(){
		DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
		Element commodity = null;
		Element root = null;
		unspsc = new ArrayList<UNSPSC>();
		unspscMap = new HashMap<String, Object>();
		try {
			factory.setIgnoringElementContentWhitespace(true);
			DocumentBuilder db = factory.newDocumentBuilder();
			String path = XMLResolve.class.getClassLoader().getResource("../../cataloghierarchy.xml").getPath();
			System.out.println("xml文件路径:"+path);
			File file = new File(path);			
			Document xmldoc = db.parse(file);//读取xml文件
			root = xmldoc.getDocumentElement();
			System.out.println(root.getNodeName());
			NodeList leafList = root.getElementsByTagName("ProductCategoryLeaf");
			
			for(int i = 0; i < leafList.getLength(); i++){
				Node node = leafList.item(i);
				commodity = (Element)node;
				
				// 获得leaf code
				String code = commodity.getElementsByTagName("Literal").item(0).getFirstChild().getNodeValue();
				
				//去掉Uncategorized Items
				int codeInt;
				if(code.equals("Uncategorized Items")){
					//delete
					continue;
				}
				codeInt = Integer.parseInt(code);
				
				// 获得leaf名称
				Node description = commodity.getElementsByTagName("Description").item(2);
				String descriptionContent = null;
				if(description==null){
					//无中文名称 删除
					descriptionContent = commodity.getElementsByTagName("Description").item(1).getFirstChild().getNodeValue();;
					continue;
				}else{
					descriptionContent = description.getFirstChild().getNodeValue();
				}	
				
				//delete其他＊＊＊ 的code ariba自己添加的
				if(descriptionContent.startsWith("其他")){
					continue;
				}
				
				addCode(codeInt,descriptionContent);
				
				//获得所有父节点信息
				int k = codeInt;
				Element parentCommodity = commodity;
				while((k/100)>1){
					//k为父节点code
					k/=100;
					//获得父节点description
					parentCommodity = (Element)parentCommodity.getParentNode();
					String parentDescription = parentCommodity.getElementsByTagName("Description").item(2).getFirstChild().getNodeValue();
					//添加父节点到map中
					addCode(k,parentDescription);
				}
			}
		} catch (ParserConfigurationException e) {
			e.printStackTrace();
		} catch (SAXException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return unspsc;
	}
	
	public static boolean addCode(int id, String description){
		if(unspscMap.containsKey(description)){
			int idInMap = (int) unspscMap.get(description);
			if(idInMap==id){
				//System.out.println(id+"\t"+description+"重复");
				return true;
			}else{
				//不一致
				//System.out.println(id+"\t"+idInMap+"\t"+description+"不一致");
				return false;
			}
		}else{
			System.out.println(id+"\t"+description);
			//放到查重map
			unspscMap.put(description, id);
			//放到list
			UNSPSC u = new UNSPSC();
			u.setId(id);
			u.setDescription(description);
			unspsc.add(u);
		}
		return true;
	}
}
