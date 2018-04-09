package com.roncoo.recharge.common.entity;

import java.util.ArrayList;
import java.util.List;

public class CarConfigExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    protected int limitStart = -1;

    protected int pageSize = -1;

    public CarConfigExample() {
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
            addCriterion("CarConfig.id is null");
            return (Criteria) this;
        }

        public Criteria andIdIsNotNull() {
            addCriterion("CarConfig.id is not null");
            return (Criteria) this;
        }

        public Criteria andIdEqualTo(Long value) {
            addCriterion("CarConfig.id =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(Long value) {
            addCriterion("CarConfig.id <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(Long value) {
            addCriterion("CarConfig.id >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(Long value) {
            addCriterion("CarConfig.id >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(Long value) {
            addCriterion("CarConfig.id <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(Long value) {
            addCriterion("CarConfig.id <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<Long> values) {
            addCriterion("CarConfig.id in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<Long> values) {
            addCriterion("CarConfig.id not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(Long value1, Long value2) {
            addCriterion("CarConfig.id between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(Long value1, Long value2) {
            addCriterion("CarConfig.id not between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andSonIdIsNull() {
            addCriterion("CarConfig.son_Id is null");
            return (Criteria) this;
        }

        public Criteria andSonIdIsNotNull() {
            addCriterion("CarConfig.son_Id is not null");
            return (Criteria) this;
        }

        public Criteria andSonIdEqualTo(Integer value) {
            addCriterion("CarConfig.son_Id =", value, "sonId");
            return (Criteria) this;
        }

        public Criteria andSonIdNotEqualTo(Integer value) {
            addCriterion("CarConfig.son_Id <>", value, "sonId");
            return (Criteria) this;
        }

        public Criteria andSonIdGreaterThan(Integer value) {
            addCriterion("CarConfig.son_Id >", value, "sonId");
            return (Criteria) this;
        }

        public Criteria andSonIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("CarConfig.son_Id >=", value, "sonId");
            return (Criteria) this;
        }

        public Criteria andSonIdLessThan(Integer value) {
            addCriterion("CarConfig.son_Id <", value, "sonId");
            return (Criteria) this;
        }

        public Criteria andSonIdLessThanOrEqualTo(Integer value) {
            addCriterion("CarConfig.son_Id <=", value, "sonId");
            return (Criteria) this;
        }

        public Criteria andSonIdIn(List<Integer> values) {
            addCriterion("CarConfig.son_Id in", values, "sonId");
            return (Criteria) this;
        }

        public Criteria andSonIdNotIn(List<Integer> values) {
            addCriterion("CarConfig.son_Id not in", values, "sonId");
            return (Criteria) this;
        }

        public Criteria andSonIdBetween(Integer value1, Integer value2) {
            addCriterion("CarConfig.son_Id between", value1, value2, "sonId");
            return (Criteria) this;
        }

        public Criteria andSonIdNotBetween(Integer value1, Integer value2) {
            addCriterion("CarConfig.son_Id not between", value1, value2, "sonId");
            return (Criteria) this;
        }

        public Criteria andParentIdIsNull() {
            addCriterion("CarConfig.parent_id is null");
            return (Criteria) this;
        }

        public Criteria andParentIdIsNotNull() {
            addCriterion("CarConfig.parent_id is not null");
            return (Criteria) this;
        }

        public Criteria andParentIdEqualTo(Integer value) {
            addCriterion("CarConfig.parent_id =", value, "parentId");
            return (Criteria) this;
        }

        public Criteria andParentIdNotEqualTo(Integer value) {
            addCriterion("CarConfig.parent_id <>", value, "parentId");
            return (Criteria) this;
        }

        public Criteria andParentIdGreaterThan(Integer value) {
            addCriterion("CarConfig.parent_id >", value, "parentId");
            return (Criteria) this;
        }

        public Criteria andParentIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("CarConfig.parent_id >=", value, "parentId");
            return (Criteria) this;
        }

        public Criteria andParentIdLessThan(Integer value) {
            addCriterion("CarConfig.parent_id <", value, "parentId");
            return (Criteria) this;
        }

        public Criteria andParentIdLessThanOrEqualTo(Integer value) {
            addCriterion("CarConfig.parent_id <=", value, "parentId");
            return (Criteria) this;
        }

        public Criteria andParentIdIn(List<Integer> values) {
            addCriterion("CarConfig.parent_id in", values, "parentId");
            return (Criteria) this;
        }

        public Criteria andParentIdNotIn(List<Integer> values) {
            addCriterion("CarConfig.parent_id not in", values, "parentId");
            return (Criteria) this;
        }

        public Criteria andParentIdBetween(Integer value1, Integer value2) {
            addCriterion("CarConfig.parent_id between", value1, value2, "parentId");
            return (Criteria) this;
        }

        public Criteria andParentIdNotBetween(Integer value1, Integer value2) {
            addCriterion("CarConfig.parent_id not between", value1, value2, "parentId");
            return (Criteria) this;
        }

        public Criteria andNameIsNull() {
            addCriterion("CarConfig.name is null");
            return (Criteria) this;
        }

        public Criteria andNameIsNotNull() {
            addCriterion("CarConfig.name is not null");
            return (Criteria) this;
        }

        public Criteria andNameEqualTo(String value) {
            addCriterion("CarConfig.name =", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotEqualTo(String value) {
            addCriterion("CarConfig.name <>", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameGreaterThan(String value) {
            addCriterion("CarConfig.name >", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameGreaterThanOrEqualTo(String value) {
            addCriterion("CarConfig.name >=", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameLessThan(String value) {
            addCriterion("CarConfig.name <", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameLessThanOrEqualTo(String value) {
            addCriterion("CarConfig.name <=", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameLike(String value) {
            addCriterion("CarConfig.name like", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotLike(String value) {
            addCriterion("CarConfig.name not like", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameIn(List<String> values) {
            addCriterion("CarConfig.name in", values, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotIn(List<String> values) {
            addCriterion("CarConfig.name not in", values, "name");
            return (Criteria) this;
        }

        public Criteria andNameBetween(String value1, String value2) {
            addCriterion("CarConfig.name between", value1, value2, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotBetween(String value1, String value2) {
            addCriterion("CarConfig.name not between", value1, value2, "name");
            return (Criteria) this;
        }

        public Criteria andFullNameIsNull() {
            addCriterion("CarConfig.full_name is null");
            return (Criteria) this;
        }

        public Criteria andFullNameIsNotNull() {
            addCriterion("CarConfig.full_name is not null");
            return (Criteria) this;
        }

        public Criteria andFullNameEqualTo(String value) {
            addCriterion("CarConfig.full_name =", value, "fullName");
            return (Criteria) this;
        }

        public Criteria andFullNameNotEqualTo(String value) {
            addCriterion("CarConfig.full_name <>", value, "fullName");
            return (Criteria) this;
        }

        public Criteria andFullNameGreaterThan(String value) {
            addCriterion("CarConfig.full_name >", value, "fullName");
            return (Criteria) this;
        }

        public Criteria andFullNameGreaterThanOrEqualTo(String value) {
            addCriterion("CarConfig.full_name >=", value, "fullName");
            return (Criteria) this;
        }

        public Criteria andFullNameLessThan(String value) {
            addCriterion("CarConfig.full_name <", value, "fullName");
            return (Criteria) this;
        }

        public Criteria andFullNameLessThanOrEqualTo(String value) {
            addCriterion("CarConfig.full_name <=", value, "fullName");
            return (Criteria) this;
        }

        public Criteria andFullNameLike(String value) {
            addCriterion("CarConfig.full_name like", value, "fullName");
            return (Criteria) this;
        }

        public Criteria andFullNameNotLike(String value) {
            addCriterion("CarConfig.full_name not like", value, "fullName");
            return (Criteria) this;
        }

        public Criteria andFullNameIn(List<String> values) {
            addCriterion("CarConfig.full_name in", values, "fullName");
            return (Criteria) this;
        }

        public Criteria andFullNameNotIn(List<String> values) {
            addCriterion("CarConfig.full_name not in", values, "fullName");
            return (Criteria) this;
        }

        public Criteria andFullNameBetween(String value1, String value2) {
            addCriterion("CarConfig.full_name between", value1, value2, "fullName");
            return (Criteria) this;
        }

        public Criteria andFullNameNotBetween(String value1, String value2) {
            addCriterion("CarConfig.full_name not between", value1, value2, "fullName");
            return (Criteria) this;
        }

        public Criteria andInitialIsNull() {
            addCriterion("CarConfig.initial is null");
            return (Criteria) this;
        }

        public Criteria andInitialIsNotNull() {
            addCriterion("CarConfig.initial is not null");
            return (Criteria) this;
        }

        public Criteria andInitialEqualTo(String value) {
            addCriterion("CarConfig.initial =", value, "initial");
            return (Criteria) this;
        }

        public Criteria andInitialNotEqualTo(String value) {
            addCriterion("CarConfig.initial <>", value, "initial");
            return (Criteria) this;
        }

        public Criteria andInitialGreaterThan(String value) {
            addCriterion("CarConfig.initial >", value, "initial");
            return (Criteria) this;
        }

        public Criteria andInitialGreaterThanOrEqualTo(String value) {
            addCriterion("CarConfig.initial >=", value, "initial");
            return (Criteria) this;
        }

        public Criteria andInitialLessThan(String value) {
            addCriterion("CarConfig.initial <", value, "initial");
            return (Criteria) this;
        }

        public Criteria andInitialLessThanOrEqualTo(String value) {
            addCriterion("CarConfig.initial <=", value, "initial");
            return (Criteria) this;
        }

        public Criteria andInitialLike(String value) {
            addCriterion("CarConfig.initial like", value, "initial");
            return (Criteria) this;
        }

        public Criteria andInitialNotLike(String value) {
            addCriterion("CarConfig.initial not like", value, "initial");
            return (Criteria) this;
        }

        public Criteria andInitialIn(List<String> values) {
            addCriterion("CarConfig.initial in", values, "initial");
            return (Criteria) this;
        }

        public Criteria andInitialNotIn(List<String> values) {
            addCriterion("CarConfig.initial not in", values, "initial");
            return (Criteria) this;
        }

        public Criteria andInitialBetween(String value1, String value2) {
            addCriterion("CarConfig.initial between", value1, value2, "initial");
            return (Criteria) this;
        }

        public Criteria andInitialNotBetween(String value1, String value2) {
            addCriterion("CarConfig.initial not between", value1, value2, "initial");
            return (Criteria) this;
        }

        public Criteria andLogoIsNull() {
            addCriterion("CarConfig.logo is null");
            return (Criteria) this;
        }

        public Criteria andLogoIsNotNull() {
            addCriterion("CarConfig.logo is not null");
            return (Criteria) this;
        }

        public Criteria andLogoEqualTo(String value) {
            addCriterion("CarConfig.logo =", value, "logo");
            return (Criteria) this;
        }

        public Criteria andLogoNotEqualTo(String value) {
            addCriterion("CarConfig.logo <>", value, "logo");
            return (Criteria) this;
        }

        public Criteria andLogoGreaterThan(String value) {
            addCriterion("CarConfig.logo >", value, "logo");
            return (Criteria) this;
        }

        public Criteria andLogoGreaterThanOrEqualTo(String value) {
            addCriterion("CarConfig.logo >=", value, "logo");
            return (Criteria) this;
        }

        public Criteria andLogoLessThan(String value) {
            addCriterion("CarConfig.logo <", value, "logo");
            return (Criteria) this;
        }

        public Criteria andLogoLessThanOrEqualTo(String value) {
            addCriterion("CarConfig.logo <=", value, "logo");
            return (Criteria) this;
        }

        public Criteria andLogoLike(String value) {
            addCriterion("CarConfig.logo like", value, "logo");
            return (Criteria) this;
        }

        public Criteria andLogoNotLike(String value) {
            addCriterion("CarConfig.logo not like", value, "logo");
            return (Criteria) this;
        }

        public Criteria andLogoIn(List<String> values) {
            addCriterion("CarConfig.logo in", values, "logo");
            return (Criteria) this;
        }

        public Criteria andLogoNotIn(List<String> values) {
            addCriterion("CarConfig.logo not in", values, "logo");
            return (Criteria) this;
        }

        public Criteria andLogoBetween(String value1, String value2) {
            addCriterion("CarConfig.logo between", value1, value2, "logo");
            return (Criteria) this;
        }

        public Criteria andLogoNotBetween(String value1, String value2) {
            addCriterion("CarConfig.logo not between", value1, value2, "logo");
            return (Criteria) this;
        }

        public Criteria andDepthIsNull() {
            addCriterion("CarConfig.depth is null");
            return (Criteria) this;
        }

        public Criteria andDepthIsNotNull() {
            addCriterion("CarConfig.depth is not null");
            return (Criteria) this;
        }

        public Criteria andDepthEqualTo(Byte value) {
            addCriterion("CarConfig.depth =", value, "depth");
            return (Criteria) this;
        }

        public Criteria andDepthNotEqualTo(Byte value) {
            addCriterion("CarConfig.depth <>", value, "depth");
            return (Criteria) this;
        }

        public Criteria andDepthGreaterThan(Byte value) {
            addCriterion("CarConfig.depth >", value, "depth");
            return (Criteria) this;
        }

        public Criteria andDepthGreaterThanOrEqualTo(Byte value) {
            addCriterion("CarConfig.depth >=", value, "depth");
            return (Criteria) this;
        }

        public Criteria andDepthLessThan(Byte value) {
            addCriterion("CarConfig.depth <", value, "depth");
            return (Criteria) this;
        }

        public Criteria andDepthLessThanOrEqualTo(Byte value) {
            addCriterion("CarConfig.depth <=", value, "depth");
            return (Criteria) this;
        }

        public Criteria andDepthIn(List<Byte> values) {
            addCriterion("CarConfig.depth in", values, "depth");
            return (Criteria) this;
        }

        public Criteria andDepthNotIn(List<Byte> values) {
            addCriterion("CarConfig.depth not in", values, "depth");
            return (Criteria) this;
        }

        public Criteria andDepthBetween(Byte value1, Byte value2) {
            addCriterion("CarConfig.depth between", value1, value2, "depth");
            return (Criteria) this;
        }

        public Criteria andDepthNotBetween(Byte value1, Byte value2) {
            addCriterion("CarConfig.depth not between", value1, value2, "depth");
            return (Criteria) this;
        }

        public Criteria andSaleStateIsNull() {
            addCriterion("CarConfig.sale_state is null");
            return (Criteria) this;
        }

        public Criteria andSaleStateIsNotNull() {
            addCriterion("CarConfig.sale_state is not null");
            return (Criteria) this;
        }

        public Criteria andSaleStateEqualTo(String value) {
            addCriterion("CarConfig.sale_state =", value, "saleState");
            return (Criteria) this;
        }

        public Criteria andSaleStateNotEqualTo(String value) {
            addCriterion("CarConfig.sale_state <>", value, "saleState");
            return (Criteria) this;
        }

        public Criteria andSaleStateGreaterThan(String value) {
            addCriterion("CarConfig.sale_state >", value, "saleState");
            return (Criteria) this;
        }

        public Criteria andSaleStateGreaterThanOrEqualTo(String value) {
            addCriterion("CarConfig.sale_state >=", value, "saleState");
            return (Criteria) this;
        }

        public Criteria andSaleStateLessThan(String value) {
            addCriterion("CarConfig.sale_state <", value, "saleState");
            return (Criteria) this;
        }

        public Criteria andSaleStateLessThanOrEqualTo(String value) {
            addCriterion("CarConfig.sale_state <=", value, "saleState");
            return (Criteria) this;
        }

        public Criteria andSaleStateLike(String value) {
            addCriterion("CarConfig.sale_state like", value, "saleState");
            return (Criteria) this;
        }

        public Criteria andSaleStateNotLike(String value) {
            addCriterion("CarConfig.sale_state not like", value, "saleState");
            return (Criteria) this;
        }

        public Criteria andSaleStateIn(List<String> values) {
            addCriterion("CarConfig.sale_state in", values, "saleState");
            return (Criteria) this;
        }

        public Criteria andSaleStateNotIn(List<String> values) {
            addCriterion("CarConfig.sale_state not in", values, "saleState");
            return (Criteria) this;
        }

        public Criteria andSaleStateBetween(String value1, String value2) {
            addCriterion("CarConfig.sale_state between", value1, value2, "saleState");
            return (Criteria) this;
        }

        public Criteria andSaleStateNotBetween(String value1, String value2) {
            addCriterion("CarConfig.sale_state not between", value1, value2, "saleState");
            return (Criteria) this;
        }

        public Criteria andPriceIsNull() {
            addCriterion("CarConfig.price is null");
            return (Criteria) this;
        }

        public Criteria andPriceIsNotNull() {
            addCriterion("CarConfig.price is not null");
            return (Criteria) this;
        }

        public Criteria andPriceEqualTo(String value) {
            addCriterion("CarConfig.price =", value, "price");
            return (Criteria) this;
        }

        public Criteria andPriceNotEqualTo(String value) {
            addCriterion("CarConfig.price <>", value, "price");
            return (Criteria) this;
        }

        public Criteria andPriceGreaterThan(String value) {
            addCriterion("CarConfig.price >", value, "price");
            return (Criteria) this;
        }

        public Criteria andPriceGreaterThanOrEqualTo(String value) {
            addCriterion("CarConfig.price >=", value, "price");
            return (Criteria) this;
        }

        public Criteria andPriceLessThan(String value) {
            addCriterion("CarConfig.price <", value, "price");
            return (Criteria) this;
        }

        public Criteria andPriceLessThanOrEqualTo(String value) {
            addCriterion("CarConfig.price <=", value, "price");
            return (Criteria) this;
        }

        public Criteria andPriceLike(String value) {
            addCriterion("CarConfig.price like", value, "price");
            return (Criteria) this;
        }

        public Criteria andPriceNotLike(String value) {
            addCriterion("CarConfig.price not like", value, "price");
            return (Criteria) this;
        }

        public Criteria andPriceIn(List<String> values) {
            addCriterion("CarConfig.price in", values, "price");
            return (Criteria) this;
        }

        public Criteria andPriceNotIn(List<String> values) {
            addCriterion("CarConfig.price not in", values, "price");
            return (Criteria) this;
        }

        public Criteria andPriceBetween(String value1, String value2) {
            addCriterion("CarConfig.price between", value1, value2, "price");
            return (Criteria) this;
        }

        public Criteria andPriceNotBetween(String value1, String value2) {
            addCriterion("CarConfig.price not between", value1, value2, "price");
            return (Criteria) this;
        }

        public Criteria andYearTypeIsNull() {
            addCriterion("CarConfig.year_type is null");
            return (Criteria) this;
        }

        public Criteria andYearTypeIsNotNull() {
            addCriterion("CarConfig.year_type is not null");
            return (Criteria) this;
        }

        public Criteria andYearTypeEqualTo(String value) {
            addCriterion("CarConfig.year_type =", value, "yearType");
            return (Criteria) this;
        }

        public Criteria andYearTypeNotEqualTo(String value) {
            addCriterion("CarConfig.year_type <>", value, "yearType");
            return (Criteria) this;
        }

        public Criteria andYearTypeGreaterThan(String value) {
            addCriterion("CarConfig.year_type >", value, "yearType");
            return (Criteria) this;
        }

        public Criteria andYearTypeGreaterThanOrEqualTo(String value) {
            addCriterion("CarConfig.year_type >=", value, "yearType");
            return (Criteria) this;
        }

        public Criteria andYearTypeLessThan(String value) {
            addCriterion("CarConfig.year_type <", value, "yearType");
            return (Criteria) this;
        }

        public Criteria andYearTypeLessThanOrEqualTo(String value) {
            addCriterion("CarConfig.year_type <=", value, "yearType");
            return (Criteria) this;
        }

        public Criteria andYearTypeLike(String value) {
            addCriterion("CarConfig.year_type like", value, "yearType");
            return (Criteria) this;
        }

        public Criteria andYearTypeNotLike(String value) {
            addCriterion("CarConfig.year_type not like", value, "yearType");
            return (Criteria) this;
        }

        public Criteria andYearTypeIn(List<String> values) {
            addCriterion("CarConfig.year_type in", values, "yearType");
            return (Criteria) this;
        }

        public Criteria andYearTypeNotIn(List<String> values) {
            addCriterion("CarConfig.year_type not in", values, "yearType");
            return (Criteria) this;
        }

        public Criteria andYearTypeBetween(String value1, String value2) {
            addCriterion("CarConfig.year_type between", value1, value2, "yearType");
            return (Criteria) this;
        }

        public Criteria andYearTypeNotBetween(String value1, String value2) {
            addCriterion("CarConfig.year_type not between", value1, value2, "yearType");
            return (Criteria) this;
        }

        public Criteria andProductionStateIsNull() {
            addCriterion("CarConfig.production_state is null");
            return (Criteria) this;
        }

        public Criteria andProductionStateIsNotNull() {
            addCriterion("CarConfig.production_state is not null");
            return (Criteria) this;
        }

        public Criteria andProductionStateEqualTo(String value) {
            addCriterion("CarConfig.production_state =", value, "productionState");
            return (Criteria) this;
        }

        public Criteria andProductionStateNotEqualTo(String value) {
            addCriterion("CarConfig.production_state <>", value, "productionState");
            return (Criteria) this;
        }

        public Criteria andProductionStateGreaterThan(String value) {
            addCriterion("CarConfig.production_state >", value, "productionState");
            return (Criteria) this;
        }

        public Criteria andProductionStateGreaterThanOrEqualTo(String value) {
            addCriterion("CarConfig.production_state >=", value, "productionState");
            return (Criteria) this;
        }

        public Criteria andProductionStateLessThan(String value) {
            addCriterion("CarConfig.production_state <", value, "productionState");
            return (Criteria) this;
        }

        public Criteria andProductionStateLessThanOrEqualTo(String value) {
            addCriterion("CarConfig.production_state <=", value, "productionState");
            return (Criteria) this;
        }

        public Criteria andProductionStateLike(String value) {
            addCriterion("CarConfig.production_state like", value, "productionState");
            return (Criteria) this;
        }

        public Criteria andProductionStateNotLike(String value) {
            addCriterion("CarConfig.production_state not like", value, "productionState");
            return (Criteria) this;
        }

        public Criteria andProductionStateIn(List<String> values) {
            addCriterion("CarConfig.production_state in", values, "productionState");
            return (Criteria) this;
        }

        public Criteria andProductionStateNotIn(List<String> values) {
            addCriterion("CarConfig.production_state not in", values, "productionState");
            return (Criteria) this;
        }

        public Criteria andProductionStateBetween(String value1, String value2) {
            addCriterion("CarConfig.production_state between", value1, value2, "productionState");
            return (Criteria) this;
        }

        public Criteria andProductionStateNotBetween(String value1, String value2) {
            addCriterion("CarConfig.production_state not between", value1, value2, "productionState");
            return (Criteria) this;
        }

        public Criteria andSizeTypeIsNull() {
            addCriterion("CarConfig.size_type is null");
            return (Criteria) this;
        }

        public Criteria andSizeTypeIsNotNull() {
            addCriterion("CarConfig.size_type is not null");
            return (Criteria) this;
        }

        public Criteria andSizeTypeEqualTo(String value) {
            addCriterion("CarConfig.size_type =", value, "sizeType");
            return (Criteria) this;
        }

        public Criteria andSizeTypeNotEqualTo(String value) {
            addCriterion("CarConfig.size_type <>", value, "sizeType");
            return (Criteria) this;
        }

        public Criteria andSizeTypeGreaterThan(String value) {
            addCriterion("CarConfig.size_type >", value, "sizeType");
            return (Criteria) this;
        }

        public Criteria andSizeTypeGreaterThanOrEqualTo(String value) {
            addCriterion("CarConfig.size_type >=", value, "sizeType");
            return (Criteria) this;
        }

        public Criteria andSizeTypeLessThan(String value) {
            addCriterion("CarConfig.size_type <", value, "sizeType");
            return (Criteria) this;
        }

        public Criteria andSizeTypeLessThanOrEqualTo(String value) {
            addCriterion("CarConfig.size_type <=", value, "sizeType");
            return (Criteria) this;
        }

        public Criteria andSizeTypeLike(String value) {
            addCriterion("CarConfig.size_type like", value, "sizeType");
            return (Criteria) this;
        }

        public Criteria andSizeTypeNotLike(String value) {
            addCriterion("CarConfig.size_type not like", value, "sizeType");
            return (Criteria) this;
        }

        public Criteria andSizeTypeIn(List<String> values) {
            addCriterion("CarConfig.size_type in", values, "sizeType");
            return (Criteria) this;
        }

        public Criteria andSizeTypeNotIn(List<String> values) {
            addCriterion("CarConfig.size_type not in", values, "sizeType");
            return (Criteria) this;
        }

        public Criteria andSizeTypeBetween(String value1, String value2) {
            addCriterion("CarConfig.size_type between", value1, value2, "sizeType");
            return (Criteria) this;
        }

        public Criteria andSizeTypeNotBetween(String value1, String value2) {
            addCriterion("CarConfig.size_type not between", value1, value2, "sizeType");
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