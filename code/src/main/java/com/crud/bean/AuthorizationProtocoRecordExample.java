package com.crud.bean;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class AuthorizationProtocoRecordExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public AuthorizationProtocoRecordExample() {
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

        public Criteria andAuthozagreeidIsNull() {
            addCriterion("AuthozAgreeId is null");
            return (Criteria) this;
        }

        public Criteria andAuthozagreeidIsNotNull() {
            addCriterion("AuthozAgreeId is not null");
            return (Criteria) this;
        }

        public Criteria andAuthozagreeidEqualTo(Integer value) {
            addCriterion("AuthozAgreeId =", value, "authozagreeid");
            return (Criteria) this;
        }

        public Criteria andAuthozagreeidNotEqualTo(Integer value) {
            addCriterion("AuthozAgreeId <>", value, "authozagreeid");
            return (Criteria) this;
        }

        public Criteria andAuthozagreeidGreaterThan(Integer value) {
            addCriterion("AuthozAgreeId >", value, "authozagreeid");
            return (Criteria) this;
        }

        public Criteria andAuthozagreeidGreaterThanOrEqualTo(Integer value) {
            addCriterion("AuthozAgreeId >=", value, "authozagreeid");
            return (Criteria) this;
        }

        public Criteria andAuthozagreeidLessThan(Integer value) {
            addCriterion("AuthozAgreeId <", value, "authozagreeid");
            return (Criteria) this;
        }

        public Criteria andAuthozagreeidLessThanOrEqualTo(Integer value) {
            addCriterion("AuthozAgreeId <=", value, "authozagreeid");
            return (Criteria) this;
        }

        public Criteria andAuthozagreeidIn(List<Integer> values) {
            addCriterion("AuthozAgreeId in", values, "authozagreeid");
            return (Criteria) this;
        }

        public Criteria andAuthozagreeidNotIn(List<Integer> values) {
            addCriterion("AuthozAgreeId not in", values, "authozagreeid");
            return (Criteria) this;
        }

        public Criteria andAuthozagreeidBetween(Integer value1, Integer value2) {
            addCriterion("AuthozAgreeId between", value1, value2, "authozagreeid");
            return (Criteria) this;
        }

        public Criteria andAuthozagreeidNotBetween(Integer value1, Integer value2) {
            addCriterion("AuthozAgreeId not between", value1, value2, "authozagreeid");
            return (Criteria) this;
        }

        public Criteria andUidIsNull() {
            addCriterion("uid is null");
            return (Criteria) this;
        }

        public Criteria andUidIsNotNull() {
            addCriterion("uid is not null");
            return (Criteria) this;
        }

        public Criteria andUidEqualTo(String value) {
            addCriterion("uid =", value, "uid");
            return (Criteria) this;
        }

        public Criteria andUidNotEqualTo(String value) {
            addCriterion("uid <>", value, "uid");
            return (Criteria) this;
        }

        public Criteria andUidGreaterThan(String value) {
            addCriterion("uid >", value, "uid");
            return (Criteria) this;
        }

        public Criteria andUidGreaterThanOrEqualTo(String value) {
            addCriterion("uid >=", value, "uid");
            return (Criteria) this;
        }

        public Criteria andUidLessThan(String value) {
            addCriterion("uid <", value, "uid");
            return (Criteria) this;
        }

        public Criteria andUidLessThanOrEqualTo(String value) {
            addCriterion("uid <=", value, "uid");
            return (Criteria) this;
        }

        public Criteria andUidLike(String value) {
            addCriterion("uid like", value, "uid");
            return (Criteria) this;
        }

        public Criteria andUidNotLike(String value) {
            addCriterion("uid not like", value, "uid");
            return (Criteria) this;
        }

        public Criteria andUidIn(List<String> values) {
            addCriterion("uid in", values, "uid");
            return (Criteria) this;
        }

        public Criteria andUidNotIn(List<String> values) {
            addCriterion("uid not in", values, "uid");
            return (Criteria) this;
        }

        public Criteria andUidBetween(String value1, String value2) {
            addCriterion("uid between", value1, value2, "uid");
            return (Criteria) this;
        }

        public Criteria andUidNotBetween(String value1, String value2) {
            addCriterion("uid not between", value1, value2, "uid");
            return (Criteria) this;
        }

        public Criteria andArchivenumberIsNull() {
            addCriterion("archiveNumber is null");
            return (Criteria) this;
        }

        public Criteria andArchivenumberIsNotNull() {
            addCriterion("archiveNumber is not null");
            return (Criteria) this;
        }

        public Criteria andArchivenumberEqualTo(Integer value) {
            addCriterion("archiveNumber =", value, "archivenumber");
            return (Criteria) this;
        }

        public Criteria andArchivenumberNotEqualTo(Integer value) {
            addCriterion("archiveNumber <>", value, "archivenumber");
            return (Criteria) this;
        }

        public Criteria andArchivenumberGreaterThan(Integer value) {
            addCriterion("archiveNumber >", value, "archivenumber");
            return (Criteria) this;
        }

        public Criteria andArchivenumberGreaterThanOrEqualTo(Integer value) {
            addCriterion("archiveNumber >=", value, "archivenumber");
            return (Criteria) this;
        }

        public Criteria andArchivenumberLessThan(Integer value) {
            addCriterion("archiveNumber <", value, "archivenumber");
            return (Criteria) this;
        }

        public Criteria andArchivenumberLessThanOrEqualTo(Integer value) {
            addCriterion("archiveNumber <=", value, "archivenumber");
            return (Criteria) this;
        }

        public Criteria andArchivenumberIn(List<Integer> values) {
            addCriterion("archiveNumber in", values, "archivenumber");
            return (Criteria) this;
        }

        public Criteria andArchivenumberNotIn(List<Integer> values) {
            addCriterion("archiveNumber not in", values, "archivenumber");
            return (Criteria) this;
        }

        public Criteria andArchivenumberBetween(Integer value1, Integer value2) {
            addCriterion("archiveNumber between", value1, value2, "archivenumber");
            return (Criteria) this;
        }

        public Criteria andArchivenumberNotBetween(Integer value1, Integer value2) {
            addCriterion("archiveNumber not between", value1, value2, "archivenumber");
            return (Criteria) this;
        }

        public Criteria andResponsiblepersonIsNull() {
            addCriterion("ResponsiblePerson is null");
            return (Criteria) this;
        }

        public Criteria andResponsiblepersonIsNotNull() {
            addCriterion("ResponsiblePerson is not null");
            return (Criteria) this;
        }

        public Criteria andResponsiblepersonEqualTo(String value) {
            addCriterion("ResponsiblePerson =", value, "responsibleperson");
            return (Criteria) this;
        }

        public Criteria andResponsiblepersonNotEqualTo(String value) {
            addCriterion("ResponsiblePerson <>", value, "responsibleperson");
            return (Criteria) this;
        }

        public Criteria andResponsiblepersonGreaterThan(String value) {
            addCriterion("ResponsiblePerson >", value, "responsibleperson");
            return (Criteria) this;
        }

        public Criteria andResponsiblepersonGreaterThanOrEqualTo(String value) {
            addCriterion("ResponsiblePerson >=", value, "responsibleperson");
            return (Criteria) this;
        }

        public Criteria andResponsiblepersonLessThan(String value) {
            addCriterion("ResponsiblePerson <", value, "responsibleperson");
            return (Criteria) this;
        }

        public Criteria andResponsiblepersonLessThanOrEqualTo(String value) {
            addCriterion("ResponsiblePerson <=", value, "responsibleperson");
            return (Criteria) this;
        }

        public Criteria andResponsiblepersonLike(String value) {
            addCriterion("ResponsiblePerson like", value, "responsibleperson");
            return (Criteria) this;
        }

        public Criteria andResponsiblepersonNotLike(String value) {
            addCriterion("ResponsiblePerson not like", value, "responsibleperson");
            return (Criteria) this;
        }

        public Criteria andResponsiblepersonIn(List<String> values) {
            addCriterion("ResponsiblePerson in", values, "responsibleperson");
            return (Criteria) this;
        }

        public Criteria andResponsiblepersonNotIn(List<String> values) {
            addCriterion("ResponsiblePerson not in", values, "responsibleperson");
            return (Criteria) this;
        }

        public Criteria andResponsiblepersonBetween(String value1, String value2) {
            addCriterion("ResponsiblePerson between", value1, value2, "responsibleperson");
            return (Criteria) this;
        }

        public Criteria andResponsiblepersonNotBetween(String value1, String value2) {
            addCriterion("ResponsiblePerson not between", value1, value2, "responsibleperson");
            return (Criteria) this;
        }

        public Criteria andStoreaddressIsNull() {
            addCriterion("StoreAddress is null");
            return (Criteria) this;
        }

        public Criteria andStoreaddressIsNotNull() {
            addCriterion("StoreAddress is not null");
            return (Criteria) this;
        }

        public Criteria andStoreaddressEqualTo(String value) {
            addCriterion("StoreAddress =", value, "storeaddress");
            return (Criteria) this;
        }

        public Criteria andStoreaddressNotEqualTo(String value) {
            addCriterion("StoreAddress <>", value, "storeaddress");
            return (Criteria) this;
        }

        public Criteria andStoreaddressGreaterThan(String value) {
            addCriterion("StoreAddress >", value, "storeaddress");
            return (Criteria) this;
        }

        public Criteria andStoreaddressGreaterThanOrEqualTo(String value) {
            addCriterion("StoreAddress >=", value, "storeaddress");
            return (Criteria) this;
        }

        public Criteria andStoreaddressLessThan(String value) {
            addCriterion("StoreAddress <", value, "storeaddress");
            return (Criteria) this;
        }

        public Criteria andStoreaddressLessThanOrEqualTo(String value) {
            addCriterion("StoreAddress <=", value, "storeaddress");
            return (Criteria) this;
        }

        public Criteria andStoreaddressLike(String value) {
            addCriterion("StoreAddress like", value, "storeaddress");
            return (Criteria) this;
        }

        public Criteria andStoreaddressNotLike(String value) {
            addCriterion("StoreAddress not like", value, "storeaddress");
            return (Criteria) this;
        }

        public Criteria andStoreaddressIn(List<String> values) {
            addCriterion("StoreAddress in", values, "storeaddress");
            return (Criteria) this;
        }

        public Criteria andStoreaddressNotIn(List<String> values) {
            addCriterion("StoreAddress not in", values, "storeaddress");
            return (Criteria) this;
        }

        public Criteria andStoreaddressBetween(String value1, String value2) {
            addCriterion("StoreAddress between", value1, value2, "storeaddress");
            return (Criteria) this;
        }

        public Criteria andStoreaddressNotBetween(String value1, String value2) {
            addCriterion("StoreAddress not between", value1, value2, "storeaddress");
            return (Criteria) this;
        }

        public Criteria andBusinessdateIsNull() {
            addCriterion("BusinessDate is null");
            return (Criteria) this;
        }

        public Criteria andBusinessdateIsNotNull() {
            addCriterion("BusinessDate is not null");
            return (Criteria) this;
        }

        public Criteria andBusinessdateEqualTo(Date value) {
            addCriterion("BusinessDate =", value, "businessdate");
            return (Criteria) this;
        }

        public Criteria andBusinessdateNotEqualTo(Date value) {
            addCriterion("BusinessDate <>", value, "businessdate");
            return (Criteria) this;
        }

        public Criteria andBusinessdateGreaterThan(Date value) {
            addCriterion("BusinessDate >", value, "businessdate");
            return (Criteria) this;
        }

        public Criteria andBusinessdateGreaterThanOrEqualTo(Date value) {
            addCriterion("BusinessDate >=", value, "businessdate");
            return (Criteria) this;
        }

        public Criteria andBusinessdateLessThan(Date value) {
            addCriterion("BusinessDate <", value, "businessdate");
            return (Criteria) this;
        }

        public Criteria andBusinessdateLessThanOrEqualTo(Date value) {
            addCriterion("BusinessDate <=", value, "businessdate");
            return (Criteria) this;
        }

        public Criteria andBusinessdateIn(List<Date> values) {
            addCriterion("BusinessDate in", values, "businessdate");
            return (Criteria) this;
        }

        public Criteria andBusinessdateNotIn(List<Date> values) {
            addCriterion("BusinessDate not in", values, "businessdate");
            return (Criteria) this;
        }

        public Criteria andBusinessdateBetween(Date value1, Date value2) {
            addCriterion("BusinessDate between", value1, value2, "businessdate");
            return (Criteria) this;
        }

        public Criteria andBusinessdateNotBetween(Date value1, Date value2) {
            addCriterion("BusinessDate not between", value1, value2, "businessdate");
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