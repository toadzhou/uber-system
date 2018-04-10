package com.roncoo.recharge.common.entity;

import java.io.Serializable;
import java.util.Date;

public class CarConfig implements Serializable {
    private Long id;

    private Integer sonId;

    private Integer parentId;

    private String name;

    private String fullName;

    private String initial;

    private String logo;

    private Byte depth;

    private String saleState;

    private String price;

    private String yearType;

    private String productionState;

    private String sizeType;

    private String createPerson;

    private Date createTime;

    private String updatePerson;

    private Date updateTime;

    private static final long serialVersionUID = 1L;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Integer getSonId() {
        return sonId;
    }

    public void setSonId(Integer sonId) {
        this.sonId = sonId;
    }

    public Integer getParentId() {
        return parentId;
    }

    public void setParentId(Integer parentId) {
        this.parentId = parentId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName == null ? null : fullName.trim();
    }

    public String getInitial() {
        return initial;
    }

    public void setInitial(String initial) {
        this.initial = initial == null ? null : initial.trim();
    }

    public String getLogo() {
        return logo;
    }

    public void setLogo(String logo) {
        this.logo = logo == null ? null : logo.trim();
    }

    public Byte getDepth() {
        return depth;
    }

    public void setDepth(Byte depth) {
        this.depth = depth;
    }

    public String getSaleState() {
        return saleState;
    }

    public void setSaleState(String saleState) {
        this.saleState = saleState == null ? null : saleState.trim();
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price == null ? null : price.trim();
    }

    public String getYearType() {
        return yearType;
    }

    public void setYearType(String yearType) {
        this.yearType = yearType == null ? null : yearType.trim();
    }

    public String getProductionState() {
        return productionState;
    }

    public void setProductionState(String productionState) {
        this.productionState = productionState == null ? null : productionState.trim();
    }

    public String getSizeType() {
        return sizeType;
    }

    public void setSizeType(String sizeType) {
        this.sizeType = sizeType == null ? null : sizeType.trim();
    }

    public String getCreatePerson() {
        return createPerson;
    }

    public void setCreatePerson(String createPerson) {
        this.createPerson = createPerson == null ? null : createPerson.trim();
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public String getUpdatePerson() {
        return updatePerson;
    }

    public void setUpdatePerson(String updatePerson) {
        this.updatePerson = updatePerson == null ? null : updatePerson.trim();
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", sonId=").append(sonId);
        sb.append(", parentId=").append(parentId);
        sb.append(", name=").append(name);
        sb.append(", fullName=").append(fullName);
        sb.append(", initial=").append(initial);
        sb.append(", logo=").append(logo);
        sb.append(", depth=").append(depth);
        sb.append(", saleState=").append(saleState);
        sb.append(", price=").append(price);
        sb.append(", yearType=").append(yearType);
        sb.append(", productionState=").append(productionState);
        sb.append(", sizeType=").append(sizeType);
        sb.append(", createPerson=").append(createPerson);
        sb.append(", createTime=").append(createTime);
        sb.append(", updatePerson=").append(updatePerson);
        sb.append(", updateTime=").append(updateTime);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}