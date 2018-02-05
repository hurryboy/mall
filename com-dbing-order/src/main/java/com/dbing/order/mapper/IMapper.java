package com.dbing.order.mapper;


import com.dbing.order.bean.Where;
import com.github.miemiedev.mybatis.paginator.domain.PageBounds;
import com.github.miemiedev.mybatis.paginator.domain.PageList;
import org.apache.ibatis.annotations.Param;

/**
 * 定义统一的Mapper接口
 * @param <T>
 */
public interface IMapper<T> {

    /**
     * 按照分页查询----com.github.miemiedev.mybatis.paginator
     * @param bounds
     * @return
     */
    public PageList<T> queryList(PageBounds bounds);


    /**
     * 按照where条件分页查询
     * @param bounds
     * @param where
     * @return
     */
    public PageList<T> queryListByWhere(PageBounds bounds, @Param("where")Where where);

    /**
     * 按照ID查询数据
     * @param id
     * @return
     */
    public T queryById(@Param("id")String id);

    /**
     * 按照where查询条件
     * @param where
     * @return
     */
    public T queryByWhere(@Param("where") Where where);

    /**
     * 新增数据
     * @param t
     */
    public void save(T t);


    /**
     * 更新数据
     * @param t
     */
    public void update(T t);

    /**
     * 删除数据
     * @param id
     * @return
     */
    public Integer deleteById(@Param("id") Long id);


    /**
     * 批量删除数据
     * @param ids
     * @return
     */
    public Integer deleteByIds(@Param("ids") Long[] ids);




}
