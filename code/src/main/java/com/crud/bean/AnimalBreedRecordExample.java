package com.crud.bean;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class AnimalBreedRecordExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public AnimalBreedRecordExample() {
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

        public Criteria andIdIsNull() {
            addCriterion("id is null");
            return (Criteria) this;
        }

        public Criteria andIdIsNotNull() {
            addCriterion("id is not null");
            return (Criteria) this;
        }

        public Criteria andIdEqualTo(Integer value) {
            addCriterion("id =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(Integer value) {
            addCriterion("id <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(Integer value) {
            addCriterion("id >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("id >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(Integer value) {
            addCriterion("id <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(Integer value) {
            addCriterion("id <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<Integer> values) {
            addCriterion("id in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<Integer> values) {
            addCriterion("id not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(Integer value1, Integer value2) {
            addCriterion("id between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(Integer value1, Integer value2) {
            addCriterion("id not between", value1, value2, "id");
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

        public Criteria andRecorderIsNull() {
            addCriterion("Recorder is null");
            return (Criteria) this;
        }

        public Criteria andRecorderIsNotNull() {
            addCriterion("Recorder is not null");
            return (Criteria) this;
        }

        public Criteria andRecorderEqualTo(String value) {
            addCriterion("Recorder =", value, "recorder");
            return (Criteria) this;
        }

        public Criteria andRecorderNotEqualTo(String value) {
            addCriterion("Recorder <>", value, "recorder");
            return (Criteria) this;
        }

        public Criteria andRecorderGreaterThan(String value) {
            addCriterion("Recorder >", value, "recorder");
            return (Criteria) this;
        }

        public Criteria andRecorderGreaterThanOrEqualTo(String value) {
            addCriterion("Recorder >=", value, "recorder");
            return (Criteria) this;
        }

        public Criteria andRecorderLessThan(String value) {
            addCriterion("Recorder <", value, "recorder");
            return (Criteria) this;
        }

        public Criteria andRecorderLessThanOrEqualTo(String value) {
            addCriterion("Recorder <=", value, "recorder");
            return (Criteria) this;
        }

        public Criteria andRecorderLike(String value) {
            addCriterion("Recorder like", value, "recorder");
            return (Criteria) this;
        }

        public Criteria andRecorderNotLike(String value) {
            addCriterion("Recorder not like", value, "recorder");
            return (Criteria) this;
        }

        public Criteria andRecorderIn(List<String> values) {
            addCriterion("Recorder in", values, "recorder");
            return (Criteria) this;
        }

        public Criteria andRecorderNotIn(List<String> values) {
            addCriterion("Recorder not in", values, "recorder");
            return (Criteria) this;
        }

        public Criteria andRecorderBetween(String value1, String value2) {
            addCriterion("Recorder between", value1, value2, "recorder");
            return (Criteria) this;
        }

        public Criteria andRecorderNotBetween(String value1, String value2) {
            addCriterion("Recorder not between", value1, value2, "recorder");
            return (Criteria) this;
        }

        public Criteria andRecorddateIsNull() {
            addCriterion("RecordDate is null");
            return (Criteria) this;
        }

        public Criteria andRecorddateIsNotNull() {
            addCriterion("RecordDate is not null");
            return (Criteria) this;
        }

        public Criteria andRecorddateEqualTo(Date value) {
            addCriterion("RecordDate =", value, "recorddate");
            return (Criteria) this;
        }

        public Criteria andRecorddateNotEqualTo(Date value) {
            addCriterion("RecordDate <>", value, "recorddate");
            return (Criteria) this;
        }

        public Criteria andRecorddateGreaterThan(Date value) {
            addCriterion("RecordDate >", value, "recorddate");
            return (Criteria) this;
        }

        public Criteria andRecorddateGreaterThanOrEqualTo(Date value) {
            addCriterion("RecordDate >=", value, "recorddate");
            return (Criteria) this;
        }

        public Criteria andRecorddateLessThan(Date value) {
            addCriterion("RecordDate <", value, "recorddate");
            return (Criteria) this;
        }

        public Criteria andRecorddateLessThanOrEqualTo(Date value) {
            addCriterion("RecordDate <=", value, "recorddate");
            return (Criteria) this;
        }

        public Criteria andRecorddateIn(List<Date> values) {
            addCriterion("RecordDate in", values, "recorddate");
            return (Criteria) this;
        }

        public Criteria andRecorddateNotIn(List<Date> values) {
            addCriterion("RecordDate not in", values, "recorddate");
            return (Criteria) this;
        }

        public Criteria andRecorddateBetween(Date value1, Date value2) {
            addCriterion("RecordDate between", value1, value2, "recorddate");
            return (Criteria) this;
        }

        public Criteria andRecorddateNotBetween(Date value1, Date value2) {
            addCriterion("RecordDate not between", value1, value2, "recorddate");
            return (Criteria) this;
        }

        public Criteria andBreeddescriptionIsNull() {
            addCriterion("BreedDescription is null");
            return (Criteria) this;
        }

        public Criteria andBreeddescriptionIsNotNull() {
            addCriterion("BreedDescription is not null");
            return (Criteria) this;
        }

        public Criteria andBreeddescriptionEqualTo(String value) {
            addCriterion("BreedDescription =", value, "breeddescription");
            return (Criteria) this;
        }

        public Criteria andBreeddescriptionNotEqualTo(String value) {
            addCriterion("BreedDescription <>", value, "breeddescription");
            return (Criteria) this;
        }

        public Criteria andBreeddescriptionGreaterThan(String value) {
            addCriterion("BreedDescription >", value, "breeddescription");
            return (Criteria) this;
        }

        public Criteria andBreeddescriptionGreaterThanOrEqualTo(String value) {
            addCriterion("BreedDescription >=", value, "breeddescription");
            return (Criteria) this;
        }

        public Criteria andBreeddescriptionLessThan(String value) {
            addCriterion("BreedDescription <", value, "breeddescription");
            return (Criteria) this;
        }

        public Criteria andBreeddescriptionLessThanOrEqualTo(String value) {
            addCriterion("BreedDescription <=", value, "breeddescription");
            return (Criteria) this;
        }

        public Criteria andBreeddescriptionLike(String value) {
            addCriterion("BreedDescription like", value, "breeddescription");
            return (Criteria) this;
        }

        public Criteria andBreeddescriptionNotLike(String value) {
            addCriterion("BreedDescription not like", value, "breeddescription");
            return (Criteria) this;
        }

        public Criteria andBreeddescriptionIn(List<String> values) {
            addCriterion("BreedDescription in", values, "breeddescription");
            return (Criteria) this;
        }

        public Criteria andBreeddescriptionNotIn(List<String> values) {
            addCriterion("BreedDescription not in", values, "breeddescription");
            return (Criteria) this;
        }

        public Criteria andBreeddescriptionBetween(String value1, String value2) {
            addCriterion("BreedDescription between", value1, value2, "breeddescription");
            return (Criteria) this;
        }

        public Criteria andBreeddescriptionNotBetween(String value1, String value2) {
            addCriterion("BreedDescription not between", value1, value2, "breeddescription");
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