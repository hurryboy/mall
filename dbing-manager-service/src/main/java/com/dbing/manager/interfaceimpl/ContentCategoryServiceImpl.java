package com.dbing.manager.interfaceimpl;

import com.dbing.manager.pojo.Content;
import com.dbing.manager.pojo.Contentcategory;
import com.dbing.manager.services.ContentCategoryService;
import com.dbing.mappers.ContentcategoryMapper;
import com.github.abel533.entity.Example;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ContentCategoryServiceImpl extends BaseServiceImpl<Contentcategory> implements ContentCategoryService {

    @Autowired
    ContentcategoryMapper contentcategoryMapper;

    /**
     * 递归删除分类及其子分类
     * @param contentcategory
     */
    @Override
    public void deleteAll(Contentcategory contentcategory){
        long id = contentcategory.getId();
        List<Contentcategory> list = getByParentId(id);
        if(list!=null&&list.size()!=0){
            deleteAll(list.get(0));
        }
        deleteById(id);
    }

   public List<Contentcategory> getByParentId(long id){
       Example example = new Example(Contentcategory.class);
       example.createCriteria().andEqualTo("parentid",id);

       return contentcategoryMapper.selectByExample(example);
   }
}
