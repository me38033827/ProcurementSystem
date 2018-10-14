package com.ProcurementSystem.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ProcurementSystem.dao.IBuyerTemplateFolderDao;
import com.ProcurementSystem.entity.TemplateFolder;

@Service
public class BuyerTemplateFolderService {
	@Resource
	IBuyerTemplateFolderDao templateFolderDao;
	
	public TemplateFolder add(TemplateFolder templateFolder) {
		// TODO Auto-generated method stub
		templateFolderDao.add(templateFolder);
		return templateFolder;
	}

	public List<TemplateFolder> getByParentId(Integer parentId) {
		// TODO Auto-generated method stub
		return templateFolderDao.getByParentId(parentId);
	}

	public TemplateFolder getById(Integer id) {
		return templateFolderDao.getById(id);
	}

	public void editById(TemplateFolder templateFolder) {
		// TODO Auto-generated method stub
		templateFolderDao.editById(templateFolder);
	}

	public void deleteById(Integer id) {
		// TODO Auto-generated method stub
		templateFolderDao.deleteById(id);
	}

}
