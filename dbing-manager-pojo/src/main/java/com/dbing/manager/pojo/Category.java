package com.dbing.manager.pojo;

import javax.persistence.*;
import java.io.Serializable;

public class Category implements Serializable{
    /**
     * 类目ID
     */
    @Id
    private Long id;

    /**
     * 商品分类名称
     */
    private String name;

    /**
     * 所属父类目，当ID=0时，代表的是一级的类目
     */
    @Column(name = "parent_id")
    private Long parentId;

    /**
     * 排列序号，表示同级类目的展现次序，如数值相等则按名称次序排列。取值范围:大于零的整数
     */
    @Column(name = "sort_order")
    private Integer sortOrder;

    @Column(name = "show_in_nav")
    private Integer showInNav;

    /**
     * 状态。可选值:1(正常),2(删除)
     */
    @Column(name = "is_show")
    private Integer isShow;

    private Integer grade;

    @Column(name = "filter_attr")
    private String filterAttr;

    @Column(name = "is_top_style")
    private Integer isTopStyle;

    @Column(name = "top_style_tpl")
    private String topStyleTpl;

    @Column(name = "style_icon")
    private String styleIcon;

    @Column(name = "cat_icon")
    private String catIcon;

    @Column(name = "is_top_show")
    private Integer isTopShow;

    @Column(name = "cat_alias_name")
    private String catAliasName;

    @Column(name = "commission_rate")
    private Short commissionRate;

    @Column(name = "touch_icon")
    private String touchIcon;

    @Column(name = "category_links")
    private String categoryLinks;

    @Column(name = "category_topic")
    private String categoryTopic;

    @Override
    public String toString() {
        return "Category{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", parentId=" + parentId +
                ", sortOrder=" + sortOrder +
                ", showInNav=" + showInNav +
                ", isShow=" + isShow +
                ", grade=" + grade +
                ", filterAttr='" + filterAttr + '\'' +
                ", isTopStyle=" + isTopStyle +
                ", topStyleTpl='" + topStyleTpl + '\'' +
                ", styleIcon='" + styleIcon + '\'' +
                ", catIcon='" + catIcon + '\'' +
                ", isTopShow=" + isTopShow +
                ", catAliasName='" + catAliasName + '\'' +
                ", commissionRate=" + commissionRate +
                ", touchIcon='" + touchIcon + '\'' +
                ", categoryLinks='" + categoryLinks + '\'' +
                ", categoryTopic='" + categoryTopic + '\'' +
                '}';
    }

    /**
     * 获取类目ID
     *
     * @return id - 类目ID
     */
    public Long getId() {
        return id;
    }

    /**
     * 设置类目ID
     *
     * @param id 类目ID
     */
    public void setId(Long id) {
        this.id = id;
    }

    /**
     * 获取商品分类名称
     *
     * @return name - 商品分类名称
     */
    public String getName() {
        return name;
    }

    /**
     * 设置商品分类名称
     *
     * @param name 商品分类名称
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * 获取所属父类目，当ID=0时，代表的是一级的类目
     *
     * @return parent_id - 所属父类目，当ID=0时，代表的是一级的类目
     */
    public Long getParentId() {
        return parentId;
    }

    /**
     * 设置所属父类目，当ID=0时，代表的是一级的类目
     *
     * @param parentId 所属父类目，当ID=0时，代表的是一级的类目
     */
    public void setParentId(Long parentId) {
        this.parentId = parentId;
    }

    /**
     * 获取排列序号，表示同级类目的展现次序，如数值相等则按名称次序排列。取值范围:大于零的整数
     *
     * @return sort_order - 排列序号，表示同级类目的展现次序，如数值相等则按名称次序排列。取值范围:大于零的整数
     */
    public Integer getSortOrder() {
        return sortOrder;
    }

    /**
     * 设置排列序号，表示同级类目的展现次序，如数值相等则按名称次序排列。取值范围:大于零的整数
     *
     * @param sortOrder 排列序号，表示同级类目的展现次序，如数值相等则按名称次序排列。取值范围:大于零的整数
     */
    public void setSortOrder(Integer sortOrder) {
        this.sortOrder = sortOrder;
    }

    /**
     * @return show_in_nav
     */
    public Integer getShowInNav() {
        return showInNav;
    }

    /**
     * @param showInNav
     */
    public void setShowInNav(Integer showInNav) {
        this.showInNav = showInNav;
    }

    /**
     * 获取状态。可选值:1(正常),2(删除)
     *
     * @return is_show - 状态。可选值:1(正常),2(删除)
     */
    public Integer getIsShow() {
        return isShow;
    }

    /**
     * 设置状态。可选值:1(正常),2(删除)
     *
     * @param isShow 状态。可选值:1(正常),2(删除)
     */
    public void setIsShow(Integer isShow) {
        this.isShow = isShow;
    }

    /**
     * @return grade
     */
    public Integer getGrade() {
        return grade;
    }

    /**
     * @param grade
     */
    public void setGrade(Integer grade) {
        this.grade = grade;
    }

    /**
     * @return filter_attr
     */
    public String getFilterAttr() {
        return filterAttr;
    }

    /**
     * @param filterAttr
     */
    public void setFilterAttr(String filterAttr) {
        this.filterAttr = filterAttr;
    }

    /**
     * @return is_top_style
     */
    public Integer getIsTopStyle() {
        return isTopStyle;
    }

    /**
     * @param isTopStyle
     */
    public void setIsTopStyle(Integer isTopStyle) {
        this.isTopStyle = isTopStyle;
    }

    /**
     * @return top_style_tpl
     */
    public String getTopStyleTpl() {
        return topStyleTpl;
    }

    /**
     * @param topStyleTpl
     */
    public void setTopStyleTpl(String topStyleTpl) {
        this.topStyleTpl = topStyleTpl;
    }

    /**
     * @return style_icon
     */
    public String getStyleIcon() {
        return styleIcon;
    }

    /**
     * @param styleIcon
     */
    public void setStyleIcon(String styleIcon) {
        this.styleIcon = styleIcon;
    }

    /**
     * @return cat_icon
     */
    public String getCatIcon() {
        return catIcon;
    }

    /**
     * @param catIcon
     */
    public void setCatIcon(String catIcon) {
        this.catIcon = catIcon;
    }

    /**
     * @return is_top_show
     */
    public Integer getIsTopShow() {
        return isTopShow;
    }

    /**
     * @param isTopShow
     */
    public void setIsTopShow(Integer isTopShow) {
        this.isTopShow = isTopShow;
    }

    /**
     * @return cat_alias_name
     */
    public String getCatAliasName() {
        return catAliasName;
    }

    /**
     * @param catAliasName
     */
    public void setCatAliasName(String catAliasName) {
        this.catAliasName = catAliasName;
    }

    /**
     * @return commission_rate
     */
    public Short getCommissionRate() {
        return commissionRate;
    }

    /**
     * @param commissionRate
     */
    public void setCommissionRate(Short commissionRate) {
        this.commissionRate = commissionRate;
    }

    /**
     * @return touch_icon
     */
    public String getTouchIcon() {
        return touchIcon;
    }

    /**
     * @param touchIcon
     */
    public void setTouchIcon(String touchIcon) {
        this.touchIcon = touchIcon;
    }

    /**
     * @return category_links
     */
    public String getCategoryLinks() {
        return categoryLinks;
    }

    /**
     * @param categoryLinks
     */
    public void setCategoryLinks(String categoryLinks) {
        this.categoryLinks = categoryLinks;
    }

    /**
     * @return category_topic
     */
    public String getCategoryTopic() {
        return categoryTopic;
    }

    /**
     * @param categoryTopic
     */
    public void setCategoryTopic(String categoryTopic) {
        this.categoryTopic = categoryTopic;
    }
}