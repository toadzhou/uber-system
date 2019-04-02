package com.roncoo.recharge.common.entity;

import java.io.Serializable;

public class GoodsItem implements Serializable {
    private Long id;

    private String title;

    private String sellPoint;

    private Integer status;

    private Integer prices;

    private Integer stockNumber;

    private Long categoryId;

    private String barcode;

    private Integer costPrice;

    private Integer marketPrice;

    private Integer isDefault;

    private static final long serialVersionUID = 1L;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public String getSellPoint() {
        return sellPoint;
    }

    public void setSellPoint(String sellPoint) {
        this.sellPoint = sellPoint == null ? null : sellPoint.trim();
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Integer getPrices() {
        return prices;
    }

    public void setPrices(Integer prices) {
        this.prices = prices;
    }

    public Integer getStockNumber() {
        return stockNumber;
    }

    public void setStockNumber(Integer stockNumber) {
        this.stockNumber = stockNumber;
    }

    public Long getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(Long categoryId) {
        this.categoryId = categoryId;
    }

    public String getBarcode() {
        return barcode;
    }

    public void setBarcode(String barcode) {
        this.barcode = barcode == null ? null : barcode.trim();
    }

    public Integer getCostPrice() {
        return costPrice;
    }

    public void setCostPrice(Integer costPrice) {
        this.costPrice = costPrice;
    }

    public Integer getMarketPrice() {
        return marketPrice;
    }

    public void setMarketPrice(Integer marketPrice) {
        this.marketPrice = marketPrice;
    }

    public Integer getIsDefault() {
        return isDefault;
    }

    public void setIsDefault(Integer isDefault) {
        this.isDefault = isDefault;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", title=").append(title);
        sb.append(", sellPoint=").append(sellPoint);
        sb.append(", status=").append(status);
        sb.append(", prices=").append(prices);
        sb.append(", stockNumber=").append(stockNumber);
        sb.append(", categoryId=").append(categoryId);
        sb.append(", barcode=").append(barcode);
        sb.append(", costPrice=").append(costPrice);
        sb.append(", marketPrice=").append(marketPrice);
        sb.append(", isDefault=").append(isDefault);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}