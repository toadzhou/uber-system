package com.roncoo.recharge.common.entity;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class DdProductExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    protected int limitStart = -1;

    protected int pageSize = -1;

    public DdProductExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    public void setLimitStart(int limitStart) {
        this.limitStart=limitStart;
    }

    public int getLimitStart() {
        return limitStart;
    }

    public void setPageSize(int pageSize) {
        this.pageSize=pageSize;
    }

    public int getPageSize() {
        return pageSize;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andIdIsNull() {
            addCriterion("id is null");
            return (Criteria) this;
        }

        public Criteria andIdIsNotNull() {
            addCriterion("id is not null");
            return (Criteria) this;
        }

        public Criteria andIdEqualTo(Long value) {
            addCriterion("id =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(Long value) {
            addCriterion("id <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(Long value) {
            addCriterion("id >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(Long value) {
            addCriterion("id >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(Long value) {
            addCriterion("id <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(Long value) {
            addCriterion("id <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<Long> values) {
            addCriterion("id in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<Long> values) {
            addCriterion("id not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(Long value1, Long value2) {
            addCriterion("id between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(Long value1, Long value2) {
            addCriterion("id not between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andProductNameIsNull() {
            addCriterion("product_name is null");
            return (Criteria) this;
        }

        public Criteria andProductNameIsNotNull() {
            addCriterion("product_name is not null");
            return (Criteria) this;
        }

        public Criteria andProductNameEqualTo(String value) {
            addCriterion("product_name =", value, "productName");
            return (Criteria) this;
        }

        public Criteria andProductNameNotEqualTo(String value) {
            addCriterion("product_name <>", value, "productName");
            return (Criteria) this;
        }

        public Criteria andProductNameGreaterThan(String value) {
            addCriterion("product_name >", value, "productName");
            return (Criteria) this;
        }

        public Criteria andProductNameGreaterThanOrEqualTo(String value) {
            addCriterion("product_name >=", value, "productName");
            return (Criteria) this;
        }

        public Criteria andProductNameLessThan(String value) {
            addCriterion("product_name <", value, "productName");
            return (Criteria) this;
        }

        public Criteria andProductNameLessThanOrEqualTo(String value) {
            addCriterion("product_name <=", value, "productName");
            return (Criteria) this;
        }

        public Criteria andProductNameLike(String value) {
            addCriterion("product_name like", value, "productName");
            return (Criteria) this;
        }

        public Criteria andProductNameNotLike(String value) {
            addCriterion("product_name not like", value, "productName");
            return (Criteria) this;
        }

        public Criteria andProductNameIn(List<String> values) {
            addCriterion("product_name in", values, "productName");
            return (Criteria) this;
        }

        public Criteria andProductNameNotIn(List<String> values) {
            addCriterion("product_name not in", values, "productName");
            return (Criteria) this;
        }

        public Criteria andProductNameBetween(String value1, String value2) {
            addCriterion("product_name between", value1, value2, "productName");
            return (Criteria) this;
        }

        public Criteria andProductNameNotBetween(String value1, String value2) {
            addCriterion("product_name not between", value1, value2, "productName");
            return (Criteria) this;
        }

        public Criteria andProductCodeIsNull() {
            addCriterion("product_code is null");
            return (Criteria) this;
        }

        public Criteria andProductCodeIsNotNull() {
            addCriterion("product_code is not null");
            return (Criteria) this;
        }

        public Criteria andProductCodeEqualTo(String value) {
            addCriterion("product_code =", value, "productCode");
            return (Criteria) this;
        }

        public Criteria andProductCodeNotEqualTo(String value) {
            addCriterion("product_code <>", value, "productCode");
            return (Criteria) this;
        }

        public Criteria andProductCodeGreaterThan(String value) {
            addCriterion("product_code >", value, "productCode");
            return (Criteria) this;
        }

        public Criteria andProductCodeGreaterThanOrEqualTo(String value) {
            addCriterion("product_code >=", value, "productCode");
            return (Criteria) this;
        }

        public Criteria andProductCodeLessThan(String value) {
            addCriterion("product_code <", value, "productCode");
            return (Criteria) this;
        }

        public Criteria andProductCodeLessThanOrEqualTo(String value) {
            addCriterion("product_code <=", value, "productCode");
            return (Criteria) this;
        }

        public Criteria andProductCodeLike(String value) {
            addCriterion("product_code like", value, "productCode");
            return (Criteria) this;
        }

        public Criteria andProductCodeNotLike(String value) {
            addCriterion("product_code not like", value, "productCode");
            return (Criteria) this;
        }

        public Criteria andProductCodeIn(List<String> values) {
            addCriterion("product_code in", values, "productCode");
            return (Criteria) this;
        }

        public Criteria andProductCodeNotIn(List<String> values) {
            addCriterion("product_code not in", values, "productCode");
            return (Criteria) this;
        }

        public Criteria andProductCodeBetween(String value1, String value2) {
            addCriterion("product_code between", value1, value2, "productCode");
            return (Criteria) this;
        }

        public Criteria andProductCodeNotBetween(String value1, String value2) {
            addCriterion("product_code not between", value1, value2, "productCode");
            return (Criteria) this;
        }

        public Criteria andDescriptionIsNull() {
            addCriterion("description is null");
            return (Criteria) this;
        }

        public Criteria andDescriptionIsNotNull() {
            addCriterion("description is not null");
            return (Criteria) this;
        }

        public Criteria andDescriptionEqualTo(String value) {
            addCriterion("description =", value, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionNotEqualTo(String value) {
            addCriterion("description <>", value, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionGreaterThan(String value) {
            addCriterion("description >", value, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionGreaterThanOrEqualTo(String value) {
            addCriterion("description >=", value, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionLessThan(String value) {
            addCriterion("description <", value, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionLessThanOrEqualTo(String value) {
            addCriterion("description <=", value, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionLike(String value) {
            addCriterion("description like", value, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionNotLike(String value) {
            addCriterion("description not like", value, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionIn(List<String> values) {
            addCriterion("description in", values, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionNotIn(List<String> values) {
            addCriterion("description not in", values, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionBetween(String value1, String value2) {
            addCriterion("description between", value1, value2, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionNotBetween(String value1, String value2) {
            addCriterion("description not between", value1, value2, "description");
            return (Criteria) this;
        }

        public Criteria andAmountMinIsNull() {
            addCriterion("amount_min is null");
            return (Criteria) this;
        }

        public Criteria andAmountMinIsNotNull() {
            addCriterion("amount_min is not null");
            return (Criteria) this;
        }

        public Criteria andAmountMinEqualTo(Long value) {
            addCriterion("amount_min =", value, "amountMin");
            return (Criteria) this;
        }

        public Criteria andAmountMinNotEqualTo(Long value) {
            addCriterion("amount_min <>", value, "amountMin");
            return (Criteria) this;
        }

        public Criteria andAmountMinGreaterThan(Long value) {
            addCriterion("amount_min >", value, "amountMin");
            return (Criteria) this;
        }

        public Criteria andAmountMinGreaterThanOrEqualTo(Long value) {
            addCriterion("amount_min >=", value, "amountMin");
            return (Criteria) this;
        }

        public Criteria andAmountMinLessThan(Long value) {
            addCriterion("amount_min <", value, "amountMin");
            return (Criteria) this;
        }

        public Criteria andAmountMinLessThanOrEqualTo(Long value) {
            addCriterion("amount_min <=", value, "amountMin");
            return (Criteria) this;
        }

        public Criteria andAmountMinIn(List<Long> values) {
            addCriterion("amount_min in", values, "amountMin");
            return (Criteria) this;
        }

        public Criteria andAmountMinNotIn(List<Long> values) {
            addCriterion("amount_min not in", values, "amountMin");
            return (Criteria) this;
        }

        public Criteria andAmountMinBetween(Long value1, Long value2) {
            addCriterion("amount_min between", value1, value2, "amountMin");
            return (Criteria) this;
        }

        public Criteria andAmountMinNotBetween(Long value1, Long value2) {
            addCriterion("amount_min not between", value1, value2, "amountMin");
            return (Criteria) this;
        }

        public Criteria andAmountMaxIsNull() {
            addCriterion("amount_max is null");
            return (Criteria) this;
        }

        public Criteria andAmountMaxIsNotNull() {
            addCriterion("amount_max is not null");
            return (Criteria) this;
        }

        public Criteria andAmountMaxEqualTo(Long value) {
            addCriterion("amount_max =", value, "amountMax");
            return (Criteria) this;
        }

        public Criteria andAmountMaxNotEqualTo(Long value) {
            addCriterion("amount_max <>", value, "amountMax");
            return (Criteria) this;
        }

        public Criteria andAmountMaxGreaterThan(Long value) {
            addCriterion("amount_max >", value, "amountMax");
            return (Criteria) this;
        }

        public Criteria andAmountMaxGreaterThanOrEqualTo(Long value) {
            addCriterion("amount_max >=", value, "amountMax");
            return (Criteria) this;
        }

        public Criteria andAmountMaxLessThan(Long value) {
            addCriterion("amount_max <", value, "amountMax");
            return (Criteria) this;
        }

        public Criteria andAmountMaxLessThanOrEqualTo(Long value) {
            addCriterion("amount_max <=", value, "amountMax");
            return (Criteria) this;
        }

        public Criteria andAmountMaxIn(List<Long> values) {
            addCriterion("amount_max in", values, "amountMax");
            return (Criteria) this;
        }

        public Criteria andAmountMaxNotIn(List<Long> values) {
            addCriterion("amount_max not in", values, "amountMax");
            return (Criteria) this;
        }

        public Criteria andAmountMaxBetween(Long value1, Long value2) {
            addCriterion("amount_max between", value1, value2, "amountMax");
            return (Criteria) this;
        }

        public Criteria andAmountMaxNotBetween(Long value1, Long value2) {
            addCriterion("amount_max not between", value1, value2, "amountMax");
            return (Criteria) this;
        }

        public Criteria andLoanTermIsNull() {
            addCriterion("loan_term is null");
            return (Criteria) this;
        }

        public Criteria andLoanTermIsNotNull() {
            addCriterion("loan_term is not null");
            return (Criteria) this;
        }

        public Criteria andLoanTermEqualTo(String value) {
            addCriterion("loan_term =", value, "loanTerm");
            return (Criteria) this;
        }

        public Criteria andLoanTermNotEqualTo(String value) {
            addCriterion("loan_term <>", value, "loanTerm");
            return (Criteria) this;
        }

        public Criteria andLoanTermGreaterThan(String value) {
            addCriterion("loan_term >", value, "loanTerm");
            return (Criteria) this;
        }

        public Criteria andLoanTermGreaterThanOrEqualTo(String value) {
            addCriterion("loan_term >=", value, "loanTerm");
            return (Criteria) this;
        }

        public Criteria andLoanTermLessThan(String value) {
            addCriterion("loan_term <", value, "loanTerm");
            return (Criteria) this;
        }

        public Criteria andLoanTermLessThanOrEqualTo(String value) {
            addCriterion("loan_term <=", value, "loanTerm");
            return (Criteria) this;
        }

        public Criteria andLoanTermLike(String value) {
            addCriterion("loan_term like", value, "loanTerm");
            return (Criteria) this;
        }

        public Criteria andLoanTermNotLike(String value) {
            addCriterion("loan_term not like", value, "loanTerm");
            return (Criteria) this;
        }

        public Criteria andLoanTermIn(List<String> values) {
            addCriterion("loan_term in", values, "loanTerm");
            return (Criteria) this;
        }

        public Criteria andLoanTermNotIn(List<String> values) {
            addCriterion("loan_term not in", values, "loanTerm");
            return (Criteria) this;
        }

        public Criteria andLoanTermBetween(String value1, String value2) {
            addCriterion("loan_term between", value1, value2, "loanTerm");
            return (Criteria) this;
        }

        public Criteria andLoanTermNotBetween(String value1, String value2) {
            addCriterion("loan_term not between", value1, value2, "loanTerm");
            return (Criteria) this;
        }

        public Criteria andStatusIsNull() {
            addCriterion("status is null");
            return (Criteria) this;
        }

        public Criteria andStatusIsNotNull() {
            addCriterion("status is not null");
            return (Criteria) this;
        }

        public Criteria andStatusEqualTo(Byte value) {
            addCriterion("status =", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusNotEqualTo(Byte value) {
            addCriterion("status <>", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusGreaterThan(Byte value) {
            addCriterion("status >", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusGreaterThanOrEqualTo(Byte value) {
            addCriterion("status >=", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusLessThan(Byte value) {
            addCriterion("status <", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusLessThanOrEqualTo(Byte value) {
            addCriterion("status <=", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusIn(List<Byte> values) {
            addCriterion("status in", values, "status");
            return (Criteria) this;
        }

        public Criteria andStatusNotIn(List<Byte> values) {
            addCriterion("status not in", values, "status");
            return (Criteria) this;
        }

        public Criteria andStatusBetween(Byte value1, Byte value2) {
            addCriterion("status between", value1, value2, "status");
            return (Criteria) this;
        }

        public Criteria andStatusNotBetween(Byte value1, Byte value2) {
            addCriterion("status not between", value1, value2, "status");
            return (Criteria) this;
        }

        public Criteria andIconUrlIsNull() {
            addCriterion("icon_url is null");
            return (Criteria) this;
        }

        public Criteria andIconUrlIsNotNull() {
            addCriterion("icon_url is not null");
            return (Criteria) this;
        }

        public Criteria andIconUrlEqualTo(String value) {
            addCriterion("icon_url =", value, "iconUrl");
            return (Criteria) this;
        }

        public Criteria andIconUrlNotEqualTo(String value) {
            addCriterion("icon_url <>", value, "iconUrl");
            return (Criteria) this;
        }

        public Criteria andIconUrlGreaterThan(String value) {
            addCriterion("icon_url >", value, "iconUrl");
            return (Criteria) this;
        }

        public Criteria andIconUrlGreaterThanOrEqualTo(String value) {
            addCriterion("icon_url >=", value, "iconUrl");
            return (Criteria) this;
        }

        public Criteria andIconUrlLessThan(String value) {
            addCriterion("icon_url <", value, "iconUrl");
            return (Criteria) this;
        }

        public Criteria andIconUrlLessThanOrEqualTo(String value) {
            addCriterion("icon_url <=", value, "iconUrl");
            return (Criteria) this;
        }

        public Criteria andIconUrlLike(String value) {
            addCriterion("icon_url like", value, "iconUrl");
            return (Criteria) this;
        }

        public Criteria andIconUrlNotLike(String value) {
            addCriterion("icon_url not like", value, "iconUrl");
            return (Criteria) this;
        }

        public Criteria andIconUrlIn(List<String> values) {
            addCriterion("icon_url in", values, "iconUrl");
            return (Criteria) this;
        }

        public Criteria andIconUrlNotIn(List<String> values) {
            addCriterion("icon_url not in", values, "iconUrl");
            return (Criteria) this;
        }

        public Criteria andIconUrlBetween(String value1, String value2) {
            addCriterion("icon_url between", value1, value2, "iconUrl");
            return (Criteria) this;
        }

        public Criteria andIconUrlNotBetween(String value1, String value2) {
            addCriterion("icon_url not between", value1, value2, "iconUrl");
            return (Criteria) this;
        }

        public Criteria andRepayTypeIsNull() {
            addCriterion("repay_type is null");
            return (Criteria) this;
        }

        public Criteria andRepayTypeIsNotNull() {
            addCriterion("repay_type is not null");
            return (Criteria) this;
        }

        public Criteria andRepayTypeEqualTo(Byte value) {
            addCriterion("repay_type =", value, "repayType");
            return (Criteria) this;
        }

        public Criteria andRepayTypeNotEqualTo(Byte value) {
            addCriterion("repay_type <>", value, "repayType");
            return (Criteria) this;
        }

        public Criteria andRepayTypeGreaterThan(Byte value) {
            addCriterion("repay_type >", value, "repayType");
            return (Criteria) this;
        }

        public Criteria andRepayTypeGreaterThanOrEqualTo(Byte value) {
            addCriterion("repay_type >=", value, "repayType");
            return (Criteria) this;
        }

        public Criteria andRepayTypeLessThan(Byte value) {
            addCriterion("repay_type <", value, "repayType");
            return (Criteria) this;
        }

        public Criteria andRepayTypeLessThanOrEqualTo(Byte value) {
            addCriterion("repay_type <=", value, "repayType");
            return (Criteria) this;
        }

        public Criteria andRepayTypeIn(List<Byte> values) {
            addCriterion("repay_type in", values, "repayType");
            return (Criteria) this;
        }

        public Criteria andRepayTypeNotIn(List<Byte> values) {
            addCriterion("repay_type not in", values, "repayType");
            return (Criteria) this;
        }

        public Criteria andRepayTypeBetween(Byte value1, Byte value2) {
            addCriterion("repay_type between", value1, value2, "repayType");
            return (Criteria) this;
        }

        public Criteria andRepayTypeNotBetween(Byte value1, Byte value2) {
            addCriterion("repay_type not between", value1, value2, "repayType");
            return (Criteria) this;
        }

        public Criteria andInterestMinIsNull() {
            addCriterion("interest_min is null");
            return (Criteria) this;
        }

        public Criteria andInterestMinIsNotNull() {
            addCriterion("interest_min is not null");
            return (Criteria) this;
        }

        public Criteria andInterestMinEqualTo(BigDecimal value) {
            addCriterion("interest_min =", value, "interestMin");
            return (Criteria) this;
        }

        public Criteria andInterestMinNotEqualTo(BigDecimal value) {
            addCriterion("interest_min <>", value, "interestMin");
            return (Criteria) this;
        }

        public Criteria andInterestMinGreaterThan(BigDecimal value) {
            addCriterion("interest_min >", value, "interestMin");
            return (Criteria) this;
        }

        public Criteria andInterestMinGreaterThanOrEqualTo(BigDecimal value) {
            addCriterion("interest_min >=", value, "interestMin");
            return (Criteria) this;
        }

        public Criteria andInterestMinLessThan(BigDecimal value) {
            addCriterion("interest_min <", value, "interestMin");
            return (Criteria) this;
        }

        public Criteria andInterestMinLessThanOrEqualTo(BigDecimal value) {
            addCriterion("interest_min <=", value, "interestMin");
            return (Criteria) this;
        }

        public Criteria andInterestMinIn(List<BigDecimal> values) {
            addCriterion("interest_min in", values, "interestMin");
            return (Criteria) this;
        }

        public Criteria andInterestMinNotIn(List<BigDecimal> values) {
            addCriterion("interest_min not in", values, "interestMin");
            return (Criteria) this;
        }

        public Criteria andInterestMinBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("interest_min between", value1, value2, "interestMin");
            return (Criteria) this;
        }

        public Criteria andInterestMinNotBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("interest_min not between", value1, value2, "interestMin");
            return (Criteria) this;
        }

        public Criteria andInterestMaxIsNull() {
            addCriterion("interest_max is null");
            return (Criteria) this;
        }

        public Criteria andInterestMaxIsNotNull() {
            addCriterion("interest_max is not null");
            return (Criteria) this;
        }

        public Criteria andInterestMaxEqualTo(BigDecimal value) {
            addCriterion("interest_max =", value, "interestMax");
            return (Criteria) this;
        }

        public Criteria andInterestMaxNotEqualTo(BigDecimal value) {
            addCriterion("interest_max <>", value, "interestMax");
            return (Criteria) this;
        }

        public Criteria andInterestMaxGreaterThan(BigDecimal value) {
            addCriterion("interest_max >", value, "interestMax");
            return (Criteria) this;
        }

        public Criteria andInterestMaxGreaterThanOrEqualTo(BigDecimal value) {
            addCriterion("interest_max >=", value, "interestMax");
            return (Criteria) this;
        }

        public Criteria andInterestMaxLessThan(BigDecimal value) {
            addCriterion("interest_max <", value, "interestMax");
            return (Criteria) this;
        }

        public Criteria andInterestMaxLessThanOrEqualTo(BigDecimal value) {
            addCriterion("interest_max <=", value, "interestMax");
            return (Criteria) this;
        }

        public Criteria andInterestMaxIn(List<BigDecimal> values) {
            addCriterion("interest_max in", values, "interestMax");
            return (Criteria) this;
        }

        public Criteria andInterestMaxNotIn(List<BigDecimal> values) {
            addCriterion("interest_max not in", values, "interestMax");
            return (Criteria) this;
        }

        public Criteria andInterestMaxBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("interest_max between", value1, value2, "interestMax");
            return (Criteria) this;
        }

        public Criteria andInterestMaxNotBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("interest_max not between", value1, value2, "interestMax");
            return (Criteria) this;
        }

        public Criteria andInterestUnitIsNull() {
            addCriterion("interest_unit is null");
            return (Criteria) this;
        }

        public Criteria andInterestUnitIsNotNull() {
            addCriterion("interest_unit is not null");
            return (Criteria) this;
        }

        public Criteria andInterestUnitEqualTo(String value) {
            addCriterion("interest_unit =", value, "interestUnit");
            return (Criteria) this;
        }

        public Criteria andInterestUnitNotEqualTo(String value) {
            addCriterion("interest_unit <>", value, "interestUnit");
            return (Criteria) this;
        }

        public Criteria andInterestUnitGreaterThan(String value) {
            addCriterion("interest_unit >", value, "interestUnit");
            return (Criteria) this;
        }

        public Criteria andInterestUnitGreaterThanOrEqualTo(String value) {
            addCriterion("interest_unit >=", value, "interestUnit");
            return (Criteria) this;
        }

        public Criteria andInterestUnitLessThan(String value) {
            addCriterion("interest_unit <", value, "interestUnit");
            return (Criteria) this;
        }

        public Criteria andInterestUnitLessThanOrEqualTo(String value) {
            addCriterion("interest_unit <=", value, "interestUnit");
            return (Criteria) this;
        }

        public Criteria andInterestUnitLike(String value) {
            addCriterion("interest_unit like", value, "interestUnit");
            return (Criteria) this;
        }

        public Criteria andInterestUnitNotLike(String value) {
            addCriterion("interest_unit not like", value, "interestUnit");
            return (Criteria) this;
        }

        public Criteria andInterestUnitIn(List<String> values) {
            addCriterion("interest_unit in", values, "interestUnit");
            return (Criteria) this;
        }

        public Criteria andInterestUnitNotIn(List<String> values) {
            addCriterion("interest_unit not in", values, "interestUnit");
            return (Criteria) this;
        }

        public Criteria andInterestUnitBetween(String value1, String value2) {
            addCriterion("interest_unit between", value1, value2, "interestUnit");
            return (Criteria) this;
        }

        public Criteria andInterestUnitNotBetween(String value1, String value2) {
            addCriterion("interest_unit not between", value1, value2, "interestUnit");
            return (Criteria) this;
        }

        public Criteria andTermMinIsNull() {
            addCriterion("term_min is null");
            return (Criteria) this;
        }

        public Criteria andTermMinIsNotNull() {
            addCriterion("term_min is not null");
            return (Criteria) this;
        }

        public Criteria andTermMinEqualTo(String value) {
            addCriterion("term_min =", value, "termMin");
            return (Criteria) this;
        }

        public Criteria andTermMinNotEqualTo(String value) {
            addCriterion("term_min <>", value, "termMin");
            return (Criteria) this;
        }

        public Criteria andTermMinGreaterThan(String value) {
            addCriterion("term_min >", value, "termMin");
            return (Criteria) this;
        }

        public Criteria andTermMinGreaterThanOrEqualTo(String value) {
            addCriterion("term_min >=", value, "termMin");
            return (Criteria) this;
        }

        public Criteria andTermMinLessThan(String value) {
            addCriterion("term_min <", value, "termMin");
            return (Criteria) this;
        }

        public Criteria andTermMinLessThanOrEqualTo(String value) {
            addCriterion("term_min <=", value, "termMin");
            return (Criteria) this;
        }

        public Criteria andTermMinLike(String value) {
            addCriterion("term_min like", value, "termMin");
            return (Criteria) this;
        }

        public Criteria andTermMinNotLike(String value) {
            addCriterion("term_min not like", value, "termMin");
            return (Criteria) this;
        }

        public Criteria andTermMinIn(List<String> values) {
            addCriterion("term_min in", values, "termMin");
            return (Criteria) this;
        }

        public Criteria andTermMinNotIn(List<String> values) {
            addCriterion("term_min not in", values, "termMin");
            return (Criteria) this;
        }

        public Criteria andTermMinBetween(String value1, String value2) {
            addCriterion("term_min between", value1, value2, "termMin");
            return (Criteria) this;
        }

        public Criteria andTermMinNotBetween(String value1, String value2) {
            addCriterion("term_min not between", value1, value2, "termMin");
            return (Criteria) this;
        }

        public Criteria andTermMaxIsNull() {
            addCriterion("term_max is null");
            return (Criteria) this;
        }

        public Criteria andTermMaxIsNotNull() {
            addCriterion("term_max is not null");
            return (Criteria) this;
        }

        public Criteria andTermMaxEqualTo(String value) {
            addCriterion("term_max =", value, "termMax");
            return (Criteria) this;
        }

        public Criteria andTermMaxNotEqualTo(String value) {
            addCriterion("term_max <>", value, "termMax");
            return (Criteria) this;
        }

        public Criteria andTermMaxGreaterThan(String value) {
            addCriterion("term_max >", value, "termMax");
            return (Criteria) this;
        }

        public Criteria andTermMaxGreaterThanOrEqualTo(String value) {
            addCriterion("term_max >=", value, "termMax");
            return (Criteria) this;
        }

        public Criteria andTermMaxLessThan(String value) {
            addCriterion("term_max <", value, "termMax");
            return (Criteria) this;
        }

        public Criteria andTermMaxLessThanOrEqualTo(String value) {
            addCriterion("term_max <=", value, "termMax");
            return (Criteria) this;
        }

        public Criteria andTermMaxLike(String value) {
            addCriterion("term_max like", value, "termMax");
            return (Criteria) this;
        }

        public Criteria andTermMaxNotLike(String value) {
            addCriterion("term_max not like", value, "termMax");
            return (Criteria) this;
        }

        public Criteria andTermMaxIn(List<String> values) {
            addCriterion("term_max in", values, "termMax");
            return (Criteria) this;
        }

        public Criteria andTermMaxNotIn(List<String> values) {
            addCriterion("term_max not in", values, "termMax");
            return (Criteria) this;
        }

        public Criteria andTermMaxBetween(String value1, String value2) {
            addCriterion("term_max between", value1, value2, "termMax");
            return (Criteria) this;
        }

        public Criteria andTermMaxNotBetween(String value1, String value2) {
            addCriterion("term_max not between", value1, value2, "termMax");
            return (Criteria) this;
        }

        public Criteria andTermUnitIsNull() {
            addCriterion("term_unit is null");
            return (Criteria) this;
        }

        public Criteria andTermUnitIsNotNull() {
            addCriterion("term_unit is not null");
            return (Criteria) this;
        }

        public Criteria andTermUnitEqualTo(String value) {
            addCriterion("term_unit =", value, "termUnit");
            return (Criteria) this;
        }

        public Criteria andTermUnitNotEqualTo(String value) {
            addCriterion("term_unit <>", value, "termUnit");
            return (Criteria) this;
        }

        public Criteria andTermUnitGreaterThan(String value) {
            addCriterion("term_unit >", value, "termUnit");
            return (Criteria) this;
        }

        public Criteria andTermUnitGreaterThanOrEqualTo(String value) {
            addCriterion("term_unit >=", value, "termUnit");
            return (Criteria) this;
        }

        public Criteria andTermUnitLessThan(String value) {
            addCriterion("term_unit <", value, "termUnit");
            return (Criteria) this;
        }

        public Criteria andTermUnitLessThanOrEqualTo(String value) {
            addCriterion("term_unit <=", value, "termUnit");
            return (Criteria) this;
        }

        public Criteria andTermUnitLike(String value) {
            addCriterion("term_unit like", value, "termUnit");
            return (Criteria) this;
        }

        public Criteria andTermUnitNotLike(String value) {
            addCriterion("term_unit not like", value, "termUnit");
            return (Criteria) this;
        }

        public Criteria andTermUnitIn(List<String> values) {
            addCriterion("term_unit in", values, "termUnit");
            return (Criteria) this;
        }

        public Criteria andTermUnitNotIn(List<String> values) {
            addCriterion("term_unit not in", values, "termUnit");
            return (Criteria) this;
        }

        public Criteria andTermUnitBetween(String value1, String value2) {
            addCriterion("term_unit between", value1, value2, "termUnit");
            return (Criteria) this;
        }

        public Criteria andTermUnitNotBetween(String value1, String value2) {
            addCriterion("term_unit not between", value1, value2, "termUnit");
            return (Criteria) this;
        }

        public Criteria andApplyConditionIsNull() {
            addCriterion("apply_condition is null");
            return (Criteria) this;
        }

        public Criteria andApplyConditionIsNotNull() {
            addCriterion("apply_condition is not null");
            return (Criteria) this;
        }

        public Criteria andApplyConditionEqualTo(String value) {
            addCriterion("apply_condition =", value, "applyCondition");
            return (Criteria) this;
        }

        public Criteria andApplyConditionNotEqualTo(String value) {
            addCriterion("apply_condition <>", value, "applyCondition");
            return (Criteria) this;
        }

        public Criteria andApplyConditionGreaterThan(String value) {
            addCriterion("apply_condition >", value, "applyCondition");
            return (Criteria) this;
        }

        public Criteria andApplyConditionGreaterThanOrEqualTo(String value) {
            addCriterion("apply_condition >=", value, "applyCondition");
            return (Criteria) this;
        }

        public Criteria andApplyConditionLessThan(String value) {
            addCriterion("apply_condition <", value, "applyCondition");
            return (Criteria) this;
        }

        public Criteria andApplyConditionLessThanOrEqualTo(String value) {
            addCriterion("apply_condition <=", value, "applyCondition");
            return (Criteria) this;
        }

        public Criteria andApplyConditionLike(String value) {
            addCriterion("apply_condition like", value, "applyCondition");
            return (Criteria) this;
        }

        public Criteria andApplyConditionNotLike(String value) {
            addCriterion("apply_condition not like", value, "applyCondition");
            return (Criteria) this;
        }

        public Criteria andApplyConditionIn(List<String> values) {
            addCriterion("apply_condition in", values, "applyCondition");
            return (Criteria) this;
        }

        public Criteria andApplyConditionNotIn(List<String> values) {
            addCriterion("apply_condition not in", values, "applyCondition");
            return (Criteria) this;
        }

        public Criteria andApplyConditionBetween(String value1, String value2) {
            addCriterion("apply_condition between", value1, value2, "applyCondition");
            return (Criteria) this;
        }

        public Criteria andApplyConditionNotBetween(String value1, String value2) {
            addCriterion("apply_condition not between", value1, value2, "applyCondition");
            return (Criteria) this;
        }

        public Criteria andApplyMaterialIsNull() {
            addCriterion("apply_material is null");
            return (Criteria) this;
        }

        public Criteria andApplyMaterialIsNotNull() {
            addCriterion("apply_material is not null");
            return (Criteria) this;
        }

        public Criteria andApplyMaterialEqualTo(String value) {
            addCriterion("apply_material =", value, "applyMaterial");
            return (Criteria) this;
        }

        public Criteria andApplyMaterialNotEqualTo(String value) {
            addCriterion("apply_material <>", value, "applyMaterial");
            return (Criteria) this;
        }

        public Criteria andApplyMaterialGreaterThan(String value) {
            addCriterion("apply_material >", value, "applyMaterial");
            return (Criteria) this;
        }

        public Criteria andApplyMaterialGreaterThanOrEqualTo(String value) {
            addCriterion("apply_material >=", value, "applyMaterial");
            return (Criteria) this;
        }

        public Criteria andApplyMaterialLessThan(String value) {
            addCriterion("apply_material <", value, "applyMaterial");
            return (Criteria) this;
        }

        public Criteria andApplyMaterialLessThanOrEqualTo(String value) {
            addCriterion("apply_material <=", value, "applyMaterial");
            return (Criteria) this;
        }

        public Criteria andApplyMaterialLike(String value) {
            addCriterion("apply_material like", value, "applyMaterial");
            return (Criteria) this;
        }

        public Criteria andApplyMaterialNotLike(String value) {
            addCriterion("apply_material not like", value, "applyMaterial");
            return (Criteria) this;
        }

        public Criteria andApplyMaterialIn(List<String> values) {
            addCriterion("apply_material in", values, "applyMaterial");
            return (Criteria) this;
        }

        public Criteria andApplyMaterialNotIn(List<String> values) {
            addCriterion("apply_material not in", values, "applyMaterial");
            return (Criteria) this;
        }

        public Criteria andApplyMaterialBetween(String value1, String value2) {
            addCriterion("apply_material between", value1, value2, "applyMaterial");
            return (Criteria) this;
        }

        public Criteria andApplyMaterialNotBetween(String value1, String value2) {
            addCriterion("apply_material not between", value1, value2, "applyMaterial");
            return (Criteria) this;
        }

        public Criteria andAuthConfigIsNull() {
            addCriterion("auth_config is null");
            return (Criteria) this;
        }

        public Criteria andAuthConfigIsNotNull() {
            addCriterion("auth_config is not null");
            return (Criteria) this;
        }

        public Criteria andAuthConfigEqualTo(String value) {
            addCriterion("auth_config =", value, "authConfig");
            return (Criteria) this;
        }

        public Criteria andAuthConfigNotEqualTo(String value) {
            addCriterion("auth_config <>", value, "authConfig");
            return (Criteria) this;
        }

        public Criteria andAuthConfigGreaterThan(String value) {
            addCriterion("auth_config >", value, "authConfig");
            return (Criteria) this;
        }

        public Criteria andAuthConfigGreaterThanOrEqualTo(String value) {
            addCriterion("auth_config >=", value, "authConfig");
            return (Criteria) this;
        }

        public Criteria andAuthConfigLessThan(String value) {
            addCriterion("auth_config <", value, "authConfig");
            return (Criteria) this;
        }

        public Criteria andAuthConfigLessThanOrEqualTo(String value) {
            addCriterion("auth_config <=", value, "authConfig");
            return (Criteria) this;
        }

        public Criteria andAuthConfigLike(String value) {
            addCriterion("auth_config like", value, "authConfig");
            return (Criteria) this;
        }

        public Criteria andAuthConfigNotLike(String value) {
            addCriterion("auth_config not like", value, "authConfig");
            return (Criteria) this;
        }

        public Criteria andAuthConfigIn(List<String> values) {
            addCriterion("auth_config in", values, "authConfig");
            return (Criteria) this;
        }

        public Criteria andAuthConfigNotIn(List<String> values) {
            addCriterion("auth_config not in", values, "authConfig");
            return (Criteria) this;
        }

        public Criteria andAuthConfigBetween(String value1, String value2) {
            addCriterion("auth_config between", value1, value2, "authConfig");
            return (Criteria) this;
        }

        public Criteria andAuthConfigNotBetween(String value1, String value2) {
            addCriterion("auth_config not between", value1, value2, "authConfig");
            return (Criteria) this;
        }

        public Criteria andCreatePersonIsNull() {
            addCriterion("create_person is null");
            return (Criteria) this;
        }

        public Criteria andCreatePersonIsNotNull() {
            addCriterion("create_person is not null");
            return (Criteria) this;
        }

        public Criteria andCreatePersonEqualTo(String value) {
            addCriterion("create_person =", value, "createPerson");
            return (Criteria) this;
        }

        public Criteria andCreatePersonNotEqualTo(String value) {
            addCriterion("create_person <>", value, "createPerson");
            return (Criteria) this;
        }

        public Criteria andCreatePersonGreaterThan(String value) {
            addCriterion("create_person >", value, "createPerson");
            return (Criteria) this;
        }

        public Criteria andCreatePersonGreaterThanOrEqualTo(String value) {
            addCriterion("create_person >=", value, "createPerson");
            return (Criteria) this;
        }

        public Criteria andCreatePersonLessThan(String value) {
            addCriterion("create_person <", value, "createPerson");
            return (Criteria) this;
        }

        public Criteria andCreatePersonLessThanOrEqualTo(String value) {
            addCriterion("create_person <=", value, "createPerson");
            return (Criteria) this;
        }

        public Criteria andCreatePersonLike(String value) {
            addCriterion("create_person like", value, "createPerson");
            return (Criteria) this;
        }

        public Criteria andCreatePersonNotLike(String value) {
            addCriterion("create_person not like", value, "createPerson");
            return (Criteria) this;
        }

        public Criteria andCreatePersonIn(List<String> values) {
            addCriterion("create_person in", values, "createPerson");
            return (Criteria) this;
        }

        public Criteria andCreatePersonNotIn(List<String> values) {
            addCriterion("create_person not in", values, "createPerson");
            return (Criteria) this;
        }

        public Criteria andCreatePersonBetween(String value1, String value2) {
            addCriterion("create_person between", value1, value2, "createPerson");
            return (Criteria) this;
        }

        public Criteria andCreatePersonNotBetween(String value1, String value2) {
            addCriterion("create_person not between", value1, value2, "createPerson");
            return (Criteria) this;
        }

        public Criteria andCreateTimeIsNull() {
            addCriterion("create_time is null");
            return (Criteria) this;
        }

        public Criteria andCreateTimeIsNotNull() {
            addCriterion("create_time is not null");
            return (Criteria) this;
        }

        public Criteria andCreateTimeEqualTo(Date value) {
            addCriterion("create_time =", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeNotEqualTo(Date value) {
            addCriterion("create_time <>", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeGreaterThan(Date value) {
            addCriterion("create_time >", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("create_time >=", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeLessThan(Date value) {
            addCriterion("create_time <", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeLessThanOrEqualTo(Date value) {
            addCriterion("create_time <=", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeIn(List<Date> values) {
            addCriterion("create_time in", values, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeNotIn(List<Date> values) {
            addCriterion("create_time not in", values, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeBetween(Date value1, Date value2) {
            addCriterion("create_time between", value1, value2, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeNotBetween(Date value1, Date value2) {
            addCriterion("create_time not between", value1, value2, "createTime");
            return (Criteria) this;
        }

        public Criteria andUpdatePersonIsNull() {
            addCriterion("update_person is null");
            return (Criteria) this;
        }

        public Criteria andUpdatePersonIsNotNull() {
            addCriterion("update_person is not null");
            return (Criteria) this;
        }

        public Criteria andUpdatePersonEqualTo(String value) {
            addCriterion("update_person =", value, "updatePerson");
            return (Criteria) this;
        }

        public Criteria andUpdatePersonNotEqualTo(String value) {
            addCriterion("update_person <>", value, "updatePerson");
            return (Criteria) this;
        }

        public Criteria andUpdatePersonGreaterThan(String value) {
            addCriterion("update_person >", value, "updatePerson");
            return (Criteria) this;
        }

        public Criteria andUpdatePersonGreaterThanOrEqualTo(String value) {
            addCriterion("update_person >=", value, "updatePerson");
            return (Criteria) this;
        }

        public Criteria andUpdatePersonLessThan(String value) {
            addCriterion("update_person <", value, "updatePerson");
            return (Criteria) this;
        }

        public Criteria andUpdatePersonLessThanOrEqualTo(String value) {
            addCriterion("update_person <=", value, "updatePerson");
            return (Criteria) this;
        }

        public Criteria andUpdatePersonLike(String value) {
            addCriterion("update_person like", value, "updatePerson");
            return (Criteria) this;
        }

        public Criteria andUpdatePersonNotLike(String value) {
            addCriterion("update_person not like", value, "updatePerson");
            return (Criteria) this;
        }

        public Criteria andUpdatePersonIn(List<String> values) {
            addCriterion("update_person in", values, "updatePerson");
            return (Criteria) this;
        }

        public Criteria andUpdatePersonNotIn(List<String> values) {
            addCriterion("update_person not in", values, "updatePerson");
            return (Criteria) this;
        }

        public Criteria andUpdatePersonBetween(String value1, String value2) {
            addCriterion("update_person between", value1, value2, "updatePerson");
            return (Criteria) this;
        }

        public Criteria andUpdatePersonNotBetween(String value1, String value2) {
            addCriterion("update_person not between", value1, value2, "updatePerson");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeIsNull() {
            addCriterion("update_time is null");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeIsNotNull() {
            addCriterion("update_time is not null");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeEqualTo(Date value) {
            addCriterion("update_time =", value, "updateTime");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeNotEqualTo(Date value) {
            addCriterion("update_time <>", value, "updateTime");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeGreaterThan(Date value) {
            addCriterion("update_time >", value, "updateTime");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("update_time >=", value, "updateTime");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeLessThan(Date value) {
            addCriterion("update_time <", value, "updateTime");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeLessThanOrEqualTo(Date value) {
            addCriterion("update_time <=", value, "updateTime");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeIn(List<Date> values) {
            addCriterion("update_time in", values, "updateTime");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeNotIn(List<Date> values) {
            addCriterion("update_time not in", values, "updateTime");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeBetween(Date value1, Date value2) {
            addCriterion("update_time between", value1, value2, "updateTime");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeNotBetween(Date value1, Date value2) {
            addCriterion("update_time not between", value1, value2, "updateTime");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}