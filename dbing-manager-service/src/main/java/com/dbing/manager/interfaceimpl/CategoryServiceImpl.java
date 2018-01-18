package com.dbing.manager.interfaceimpl;

import com.dbing.manager.pojo.Category;
import com.dbing.manager.services.CategoryService;
import org.springframework.stereotype.Service;

@Service
public class CategoryServiceImpl extends BaseServiceImpl<Category> implements CategoryService{
}
