package com.ProcurementSystem.common;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathConstants;
import javax.xml.xpath.XPathExpressionException;
import javax.xml.xpath.XPathFactory;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

public class XMLResolve {
	public static void main(String[] args) {
		
	}
	public static ArrayList<String> getLayerNames(String code){
		DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
		Element commodity = null;
		Element theElem = null, root = null;
		ArrayList<String> nameList = new ArrayList<>();
		try {
			factory.setIgnoringElementContentWhitespace(true);
			DocumentBuilder db = factory.newDocumentBuilder();
			String path = XMLResolve.class.getClassLoader().getResource("../../cataloghierarchy.xml").getPath();
			System.out.println("xml文件路径:"+path);
			File file = new File(path);			
			Document xmldoc = db.parse(file);//读取xml文件
			root = xmldoc.getDocumentElement();
			System.out.println(root.getNodeName());
			commodity = (Element) selectSingleNode(
					"/CatalogHierarchy//ProductCategoryLeaf/ProductCategoryConditions/IsIn[Literal='"+code+"']", root);
			if(commodity == null ) return null; //code不存在，返回null
			commodity = (Element) commodity.getParentNode().getParentNode();
			//String code = "14111501";
			for (int i = 0; i < code.length() / 2; i++) {
				//System.out.println("---  查询厚牛皮纸 " + (i + 1) + " ----");
				String content = commodity.getElementsByTagName("Description").item(2).getFirstChild().getNodeValue();//获得该层级中文名
				nameList.add(content);
				System.out.println("Description：" + content);
				// System.out.println(commodity.getChildNodes().item(2).getTextContent());
				commodity = (Element) commodity.getParentNode();
			}
		} catch (ParserConfigurationException e) {
			e.printStackTrace();
		} catch (SAXException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return nameList;//最低级 - > 最高级
	}
	public static void output(Node node) {// 将node的XML字符串输出到控制台
		TransformerFactory transFactory = TransformerFactory.newInstance();
		try {
			Transformer transformer = transFactory.newTransformer();
			transformer.setOutputProperty("encoding", "UTF-8");
			transformer.setOutputProperty("indent", "yes");
			DOMSource source = new DOMSource();
			source.setNode(node);
			StreamResult result = new StreamResult();
			result.setOutputStream(System.out);
			transformer.transform(source, result);
		} catch (TransformerConfigurationException e) {
			e.printStackTrace();
		} catch (TransformerException e) {
			e.printStackTrace();
		}
	}

	public static Node selectSingleNode(String express, Object source) {// 查找节点，并返回第一个符合条件节点
		Node result = null;
		XPathFactory xpathFactory = XPathFactory.newInstance();
		XPath xpath = xpathFactory.newXPath();
		try {
			result = (Node) xpath.evaluate(express, source, XPathConstants.NODE);
		} catch (XPathExpressionException e) {
			System.out.println("读取错误！");
			return null;
		}
		return result;
	}

	public static NodeList selectNodes(String express, Object source) {// 查找节点，返回符合条件的节点集。
		NodeList result = null;
		XPathFactory xpathFactory = XPathFactory.newInstance();
		XPath xpath = xpathFactory.newXPath();
		try {
			result = (NodeList) xpath.evaluate(express, source, XPathConstants.NODESET);
		} catch (XPathExpressionException e) {
			e.printStackTrace();
		}
		return result;
	}

	public static void saveXml(String fileName, Document doc) {// 将Document输出到文件
		TransformerFactory transFactory = TransformerFactory.newInstance();
		try {
			Transformer transformer = transFactory.newTransformer();
			transformer.setOutputProperty("indent", "yes");

			DOMSource source = new DOMSource();
			source.setNode(doc);
			StreamResult result = new StreamResult();
			result.setOutputStream(new FileOutputStream(fileName));

			transformer.transform(source, result);
		} catch (TransformerConfigurationException e) {
			e.printStackTrace();
		} catch (TransformerException e) {
			e.printStackTrace();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
	}

}
