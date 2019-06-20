package com.roncoo.recharge.common.entity;

import java.io.Serializable;
import java.util.Date;

public class DspSystemLog implements Serializable {
    private Long id;

    private Long groupId;

    private Long resourceId;

    private Long ideaId;

    private Long price;

    private Integer type;

    private String imei;

    private String ip;

    private String ua;

    private Date time;

    private String appId;

    private String slotId;

    private Integer putType;

    private Integer priceType;

    private Integer parPrice;

    private Integer billType;

    private Integer feeType;

    private String fee;

    private static final long serialVersionUID = 1L;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getGroupId() {
        return groupId;
    }

    public void setGroupId(Long groupId) {
        this.groupId = groupId;
    }

    public Long getResourceId() {
        return resourceId;
    }

    public void setResourceId(Long resourceId) {
        this.resourceId = resourceId;
    }

    public Long getIdeaId() {
        return ideaId;
    }

    public void setIdeaId(Long ideaId) {
        this.ideaId = ideaId;
    }

    public Long getPrice() {
        return price;
    }

    public void setPrice(Long price) {
        this.price = price;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public String getImei() {
        return imei;
    }

    public void setImei(String imei) {
        this.imei = imei == null ? null : imei.trim();
    }

    public String getIp() {
        return ip;
    }

    public void setIp(String ip) {
        this.ip = ip == null ? null : ip.trim();
    }

    public String getUa() {
        return ua;
    }

    public void setUa(String ua) {
        this.ua = ua == null ? null : ua.trim();
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public String getAppId() {
        return appId;
    }

    public void setAppId(String appId) {
        this.appId = appId == null ? null : appId.trim();
    }

    public String getSlotId() {
        return slotId;
    }

    public void setSlotId(String slotId) {
        this.slotId = slotId == null ? null : slotId.trim();
    }

    public Integer getPutType() {
        return putType;
    }

    public void setPutType(Integer putType) {
        this.putType = putType;
    }

    public Integer getPriceType() {
        return priceType;
    }

    public void setPriceType(Integer priceType) {
        this.priceType = priceType;
    }

    public Integer getParPrice() {
        return parPrice;
    }

    public void setParPrice(Integer parPrice) {
        this.parPrice = parPrice;
    }

    public Integer getBillType() {
        return billType;
    }

    public void setBillType(Integer billType) {
        this.billType = billType;
    }

    public Integer getFeeType() {
        return feeType;
    }

    public void setFeeType(Integer feeType) {
        this.feeType = feeType;
    }

    public String getFee() {
        return fee;
    }

    public void setFee(String fee) {
        this.fee = fee == null ? null : fee.trim();
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", groupId=").append(groupId);
        sb.append(", resourceId=").append(resourceId);
        sb.append(", ideaId=").append(ideaId);
        sb.append(", price=").append(price);
        sb.append(", type=").append(type);
        sb.append(", imei=").append(imei);
        sb.append(", ip=").append(ip);
        sb.append(", ua=").append(ua);
        sb.append(", time=").append(time);
        sb.append(", appId=").append(appId);
        sb.append(", slotId=").append(slotId);
        sb.append(", putType=").append(putType);
        sb.append(", priceType=").append(priceType);
        sb.append(", parPrice=").append(parPrice);
        sb.append(", billType=").append(billType);
        sb.append(", feeType=").append(feeType);
        sb.append(", fee=").append(fee);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}