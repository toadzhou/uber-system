package com.roncoo.recharge.common.entity;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

public class DdProduct implements Serializable {
    private Long id;

    private String productName;

    private String productCode;

    private String description;

    private Long amountMin;

    private Long amountMax;

    private String loanTerm;

    private Byte status;

    private String iconUrl;

    private Byte repayType;

    private BigDecimal interestMin;

    private BigDecimal interestMax;

    private String interestUnit;

    private String termMin;

    private String termMax;

    private String termUnit;

    private String applyCondition;

    private String applyMaterial;

    private String authConfig;

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

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName == null ? null : productName.trim();
    }

    public String getProductCode() {
        return productCode;
    }

    public void setProductCode(String productCode) {
        this.productCode = productCode == null ? null : productCode.trim();
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description == null ? null : description.trim();
    }

    public Long getAmountMin() {
        return amountMin;
    }

    public void setAmountMin(Long amountMin) {
        this.amountMin = amountMin;
    }

    public Long getAmountMax() {
        return amountMax;
    }

    public void setAmountMax(Long amountMax) {
        this.amountMax = amountMax;
    }

    public String getLoanTerm() {
        return loanTerm;
    }

    public void setLoanTerm(String loanTerm) {
        this.loanTerm = loanTerm == null ? null : loanTerm.trim();
    }

    public Byte getStatus() {
        return status;
    }

    public void setStatus(Byte status) {
        this.status = status;
    }

    public String getIconUrl() {
        return iconUrl;
    }

    public void setIconUrl(String iconUrl) {
        this.iconUrl = iconUrl == null ? null : iconUrl.trim();
    }

    public Byte getRepayType() {
        return repayType;
    }

    public void setRepayType(Byte repayType) {
        this.repayType = repayType;
    }

    public BigDecimal getInterestMin() {
        return interestMin;
    }

    public void setInterestMin(BigDecimal interestMin) {
        this.interestMin = interestMin;
    }

    public BigDecimal getInterestMax() {
        return interestMax;
    }

    public void setInterestMax(BigDecimal interestMax) {
        this.interestMax = interestMax;
    }

    public String getInterestUnit() {
        return interestUnit;
    }

    public void setInterestUnit(String interestUnit) {
        this.interestUnit = interestUnit == null ? null : interestUnit.trim();
    }

    public String getTermMin() {
        return termMin;
    }

    public void setTermMin(String termMin) {
        this.termMin = termMin == null ? null : termMin.trim();
    }

    public String getTermMax() {
        return termMax;
    }

    public void setTermMax(String termMax) {
        this.termMax = termMax == null ? null : termMax.trim();
    }

    public String getTermUnit() {
        return termUnit;
    }

    public void setTermUnit(String termUnit) {
        this.termUnit = termUnit == null ? null : termUnit.trim();
    }

    public String getApplyCondition() {
        return applyCondition;
    }

    public void setApplyCondition(String applyCondition) {
        this.applyCondition = applyCondition == null ? null : applyCondition.trim();
    }

    public String getApplyMaterial() {
        return applyMaterial;
    }

    public void setApplyMaterial(String applyMaterial) {
        this.applyMaterial = applyMaterial == null ? null : applyMaterial.trim();
    }

    public String getAuthConfig() {
        return authConfig;
    }

    public void setAuthConfig(String authConfig) {
        this.authConfig = authConfig == null ? null : authConfig.trim();
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
        sb.append(", productName=").append(productName);
        sb.append(", productCode=").append(productCode);
        sb.append(", description=").append(description);
        sb.append(", amountMin=").append(amountMin);
        sb.append(", amountMax=").append(amountMax);
        sb.append(", loanTerm=").append(loanTerm);
        sb.append(", status=").append(status);
        sb.append(", iconUrl=").append(iconUrl);
        sb.append(", repayType=").append(repayType);
        sb.append(", interestMin=").append(interestMin);
        sb.append(", interestMax=").append(interestMax);
        sb.append(", interestUnit=").append(interestUnit);
        sb.append(", termMin=").append(termMin);
        sb.append(", termMax=").append(termMax);
        sb.append(", termUnit=").append(termUnit);
        sb.append(", applyCondition=").append(applyCondition);
        sb.append(", applyMaterial=").append(applyMaterial);
        sb.append(", authConfig=").append(authConfig);
        sb.append(", createPerson=").append(createPerson);
        sb.append(", createTime=").append(createTime);
        sb.append(", updatePerson=").append(updatePerson);
        sb.append(", updateTime=").append(updateTime);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}