package com.crud.bean;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class ExperimentDataExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public ExperimentDataExample() {
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

        public Criteria andExperimentnumberIsNull() {
            addCriterion("ExperimentNumber is null");
            return (Criteria) this;
        }

        public Criteria andExperimentnumberIsNotNull() {
            addCriterion("ExperimentNumber is not null");
            return (Criteria) this;
        }

        public Criteria andExperimentnumberEqualTo(Integer value) {
            addCriterion("ExperimentNumber =", value, "experimentnumber");
            return (Criteria) this;
        }

        public Criteria andExperimentnumberNotEqualTo(Integer value) {
            addCriterion("ExperimentNumber <>", value, "experimentnumber");
            return (Criteria) this;
        }

        public Criteria andExperimentnumberGreaterThan(Integer value) {
            addCriterion("ExperimentNumber >", value, "experimentnumber");
            return (Criteria) this;
        }

        public Criteria andExperimentnumberGreaterThanOrEqualTo(Integer value) {
            addCriterion("ExperimentNumber >=", value, "experimentnumber");
            return (Criteria) this;
        }

        public Criteria andExperimentnumberLessThan(Integer value) {
            addCriterion("ExperimentNumber <", value, "experimentnumber");
            return (Criteria) this;
        }

        public Criteria andExperimentnumberLessThanOrEqualTo(Integer value) {
            addCriterion("ExperimentNumber <=", value, "experimentnumber");
            return (Criteria) this;
        }

        public Criteria andExperimentnumberIn(List<Integer> values) {
            addCriterion("ExperimentNumber in", values, "experimentnumber");
            return (Criteria) this;
        }

        public Criteria andExperimentnumberNotIn(List<Integer> values) {
            addCriterion("ExperimentNumber not in", values, "experimentnumber");
            return (Criteria) this;
        }

        public Criteria andExperimentnumberBetween(Integer value1, Integer value2) {
            addCriterion("ExperimentNumber between", value1, value2, "experimentnumber");
            return (Criteria) this;
        }

        public Criteria andExperimentnumberNotBetween(Integer value1, Integer value2) {
            addCriterion("ExperimentNumber not between", value1, value2, "experimentnumber");
            return (Criteria) this;
        }

        public Criteria andExperimenternumberIsNull() {
            addCriterion("ExperimenterNumber is null");
            return (Criteria) this;
        }

        public Criteria andExperimenternumberIsNotNull() {
            addCriterion("ExperimenterNumber is not null");
            return (Criteria) this;
        }

        public Criteria andExperimenternumberEqualTo(String value) {
            addCriterion("ExperimenterNumber =", value, "experimenternumber");
            return (Criteria) this;
        }

        public Criteria andExperimenternumberNotEqualTo(String value) {
            addCriterion("ExperimenterNumber <>", value, "experimenternumber");
            return (Criteria) this;
        }

        public Criteria andExperimenternumberGreaterThan(String value) {
            addCriterion("ExperimenterNumber >", value, "experimenternumber");
            return (Criteria) this;
        }

        public Criteria andExperimenternumberGreaterThanOrEqualTo(String value) {
            addCriterion("ExperimenterNumber >=", value, "experimenternumber");
            return (Criteria) this;
        }

        public Criteria andExperimenternumberLessThan(String value) {
            addCriterion("ExperimenterNumber <", value, "experimenternumber");
            return (Criteria) this;
        }

        public Criteria andExperimenternumberLessThanOrEqualTo(String value) {
            addCriterion("ExperimenterNumber <=", value, "experimenternumber");
            return (Criteria) this;
        }

        public Criteria andExperimenternumberLike(String value) {
            addCriterion("ExperimenterNumber like", value, "experimenternumber");
            return (Criteria) this;
        }

        public Criteria andExperimenternumberNotLike(String value) {
            addCriterion("ExperimenterNumber not like", value, "experimenternumber");
            return (Criteria) this;
        }

        public Criteria andExperimenternumberIn(List<String> values) {
            addCriterion("ExperimenterNumber in", values, "experimenternumber");
            return (Criteria) this;
        }

        public Criteria andExperimenternumberNotIn(List<String> values) {
            addCriterion("ExperimenterNumber not in", values, "experimenternumber");
            return (Criteria) this;
        }

        public Criteria andExperimenternumberBetween(String value1, String value2) {
            addCriterion("ExperimenterNumber between", value1, value2, "experimenternumber");
            return (Criteria) this;
        }

        public Criteria andExperimenternumberNotBetween(String value1, String value2) {
            addCriterion("ExperimenterNumber not between", value1, value2, "experimenternumber");
            return (Criteria) this;
        }

        public Criteria andExperimentpurposeIsNull() {
            addCriterion("ExperimentPurpose is null");
            return (Criteria) this;
        }

        public Criteria andExperimentpurposeIsNotNull() {
            addCriterion("ExperimentPurpose is not null");
            return (Criteria) this;
        }

        public Criteria andExperimentpurposeEqualTo(String value) {
            addCriterion("ExperimentPurpose =", value, "experimentpurpose");
            return (Criteria) this;
        }

        public Criteria andExperimentpurposeNotEqualTo(String value) {
            addCriterion("ExperimentPurpose <>", value, "experimentpurpose");
            return (Criteria) this;
        }

        public Criteria andExperimentpurposeGreaterThan(String value) {
            addCriterion("ExperimentPurpose >", value, "experimentpurpose");
            return (Criteria) this;
        }

        public Criteria andExperimentpurposeGreaterThanOrEqualTo(String value) {
            addCriterion("ExperimentPurpose >=", value, "experimentpurpose");
            return (Criteria) this;
        }

        public Criteria andExperimentpurposeLessThan(String value) {
            addCriterion("ExperimentPurpose <", value, "experimentpurpose");
            return (Criteria) this;
        }

        public Criteria andExperimentpurposeLessThanOrEqualTo(String value) {
            addCriterion("ExperimentPurpose <=", value, "experimentpurpose");
            return (Criteria) this;
        }

        public Criteria andExperimentpurposeLike(String value) {
            addCriterion("ExperimentPurpose like", value, "experimentpurpose");
            return (Criteria) this;
        }

        public Criteria andExperimentpurposeNotLike(String value) {
            addCriterion("ExperimentPurpose not like", value, "experimentpurpose");
            return (Criteria) this;
        }

        public Criteria andExperimentpurposeIn(List<String> values) {
            addCriterion("ExperimentPurpose in", values, "experimentpurpose");
            return (Criteria) this;
        }

        public Criteria andExperimentpurposeNotIn(List<String> values) {
            addCriterion("ExperimentPurpose not in", values, "experimentpurpose");
            return (Criteria) this;
        }

        public Criteria andExperimentpurposeBetween(String value1, String value2) {
            addCriterion("ExperimentPurpose between", value1, value2, "experimentpurpose");
            return (Criteria) this;
        }

        public Criteria andExperimentpurposeNotBetween(String value1, String value2) {
            addCriterion("ExperimentPurpose not between", value1, value2, "experimentpurpose");
            return (Criteria) this;
        }

        public Criteria andExperimentlocationIsNull() {
            addCriterion("ExperimentLocation is null");
            return (Criteria) this;
        }

        public Criteria andExperimentlocationIsNotNull() {
            addCriterion("ExperimentLocation is not null");
            return (Criteria) this;
        }

        public Criteria andExperimentlocationEqualTo(String value) {
            addCriterion("ExperimentLocation =", value, "experimentlocation");
            return (Criteria) this;
        }

        public Criteria andExperimentlocationNotEqualTo(String value) {
            addCriterion("ExperimentLocation <>", value, "experimentlocation");
            return (Criteria) this;
        }

        public Criteria andExperimentlocationGreaterThan(String value) {
            addCriterion("ExperimentLocation >", value, "experimentlocation");
            return (Criteria) this;
        }

        public Criteria andExperimentlocationGreaterThanOrEqualTo(String value) {
            addCriterion("ExperimentLocation >=", value, "experimentlocation");
            return (Criteria) this;
        }

        public Criteria andExperimentlocationLessThan(String value) {
            addCriterion("ExperimentLocation <", value, "experimentlocation");
            return (Criteria) this;
        }

        public Criteria andExperimentlocationLessThanOrEqualTo(String value) {
            addCriterion("ExperimentLocation <=", value, "experimentlocation");
            return (Criteria) this;
        }

        public Criteria andExperimentlocationLike(String value) {
            addCriterion("ExperimentLocation like", value, "experimentlocation");
            return (Criteria) this;
        }

        public Criteria andExperimentlocationNotLike(String value) {
            addCriterion("ExperimentLocation not like", value, "experimentlocation");
            return (Criteria) this;
        }

        public Criteria andExperimentlocationIn(List<String> values) {
            addCriterion("ExperimentLocation in", values, "experimentlocation");
            return (Criteria) this;
        }

        public Criteria andExperimentlocationNotIn(List<String> values) {
            addCriterion("ExperimentLocation not in", values, "experimentlocation");
            return (Criteria) this;
        }

        public Criteria andExperimentlocationBetween(String value1, String value2) {
            addCriterion("ExperimentLocation between", value1, value2, "experimentlocation");
            return (Criteria) this;
        }

        public Criteria andExperimentlocationNotBetween(String value1, String value2) {
            addCriterion("ExperimentLocation not between", value1, value2, "experimentlocation");
            return (Criteria) this;
        }

        public Criteria andExperimentapproachIsNull() {
            addCriterion("ExperimentApproach is null");
            return (Criteria) this;
        }

        public Criteria andExperimentapproachIsNotNull() {
            addCriterion("ExperimentApproach is not null");
            return (Criteria) this;
        }

        public Criteria andExperimentapproachEqualTo(String value) {
            addCriterion("ExperimentApproach =", value, "experimentapproach");
            return (Criteria) this;
        }

        public Criteria andExperimentapproachNotEqualTo(String value) {
            addCriterion("ExperimentApproach <>", value, "experimentapproach");
            return (Criteria) this;
        }

        public Criteria andExperimentapproachGreaterThan(String value) {
            addCriterion("ExperimentApproach >", value, "experimentapproach");
            return (Criteria) this;
        }

        public Criteria andExperimentapproachGreaterThanOrEqualTo(String value) {
            addCriterion("ExperimentApproach >=", value, "experimentapproach");
            return (Criteria) this;
        }

        public Criteria andExperimentapproachLessThan(String value) {
            addCriterion("ExperimentApproach <", value, "experimentapproach");
            return (Criteria) this;
        }

        public Criteria andExperimentapproachLessThanOrEqualTo(String value) {
            addCriterion("ExperimentApproach <=", value, "experimentapproach");
            return (Criteria) this;
        }

        public Criteria andExperimentapproachLike(String value) {
            addCriterion("ExperimentApproach like", value, "experimentapproach");
            return (Criteria) this;
        }

        public Criteria andExperimentapproachNotLike(String value) {
            addCriterion("ExperimentApproach not like", value, "experimentapproach");
            return (Criteria) this;
        }

        public Criteria andExperimentapproachIn(List<String> values) {
            addCriterion("ExperimentApproach in", values, "experimentapproach");
            return (Criteria) this;
        }

        public Criteria andExperimentapproachNotIn(List<String> values) {
            addCriterion("ExperimentApproach not in", values, "experimentapproach");
            return (Criteria) this;
        }

        public Criteria andExperimentapproachBetween(String value1, String value2) {
            addCriterion("ExperimentApproach between", value1, value2, "experimentapproach");
            return (Criteria) this;
        }

        public Criteria andExperimentapproachNotBetween(String value1, String value2) {
            addCriterion("ExperimentApproach not between", value1, value2, "experimentapproach");
            return (Criteria) this;
        }

        public Criteria andExperimentrecordIsNull() {
            addCriterion("ExperimentRecord is null");
            return (Criteria) this;
        }

        public Criteria andExperimentrecordIsNotNull() {
            addCriterion("ExperimentRecord is not null");
            return (Criteria) this;
        }

        public Criteria andExperimentrecordEqualTo(String value) {
            addCriterion("ExperimentRecord =", value, "experimentrecord");
            return (Criteria) this;
        }

        public Criteria andExperimentrecordNotEqualTo(String value) {
            addCriterion("ExperimentRecord <>", value, "experimentrecord");
            return (Criteria) this;
        }

        public Criteria andExperimentrecordGreaterThan(String value) {
            addCriterion("ExperimentRecord >", value, "experimentrecord");
            return (Criteria) this;
        }

        public Criteria andExperimentrecordGreaterThanOrEqualTo(String value) {
            addCriterion("ExperimentRecord >=", value, "experimentrecord");
            return (Criteria) this;
        }

        public Criteria andExperimentrecordLessThan(String value) {
            addCriterion("ExperimentRecord <", value, "experimentrecord");
            return (Criteria) this;
        }

        public Criteria andExperimentrecordLessThanOrEqualTo(String value) {
            addCriterion("ExperimentRecord <=", value, "experimentrecord");
            return (Criteria) this;
        }

        public Criteria andExperimentrecordLike(String value) {
            addCriterion("ExperimentRecord like", value, "experimentrecord");
            return (Criteria) this;
        }

        public Criteria andExperimentrecordNotLike(String value) {
            addCriterion("ExperimentRecord not like", value, "experimentrecord");
            return (Criteria) this;
        }

        public Criteria andExperimentrecordIn(List<String> values) {
            addCriterion("ExperimentRecord in", values, "experimentrecord");
            return (Criteria) this;
        }

        public Criteria andExperimentrecordNotIn(List<String> values) {
            addCriterion("ExperimentRecord not in", values, "experimentrecord");
            return (Criteria) this;
        }

        public Criteria andExperimentrecordBetween(String value1, String value2) {
            addCriterion("ExperimentRecord between", value1, value2, "experimentrecord");
            return (Criteria) this;
        }

        public Criteria andExperimentrecordNotBetween(String value1, String value2) {
            addCriterion("ExperimentRecord not between", value1, value2, "experimentrecord");
            return (Criteria) this;
        }

        public Criteria andExperimentresultIsNull() {
            addCriterion("ExperimentResult is null");
            return (Criteria) this;
        }

        public Criteria andExperimentresultIsNotNull() {
            addCriterion("ExperimentResult is not null");
            return (Criteria) this;
        }

        public Criteria andExperimentresultEqualTo(String value) {
            addCriterion("ExperimentResult =", value, "experimentresult");
            return (Criteria) this;
        }

        public Criteria andExperimentresultNotEqualTo(String value) {
            addCriterion("ExperimentResult <>", value, "experimentresult");
            return (Criteria) this;
        }

        public Criteria andExperimentresultGreaterThan(String value) {
            addCriterion("ExperimentResult >", value, "experimentresult");
            return (Criteria) this;
        }

        public Criteria andExperimentresultGreaterThanOrEqualTo(String value) {
            addCriterion("ExperimentResult >=", value, "experimentresult");
            return (Criteria) this;
        }

        public Criteria andExperimentresultLessThan(String value) {
            addCriterion("ExperimentResult <", value, "experimentresult");
            return (Criteria) this;
        }

        public Criteria andExperimentresultLessThanOrEqualTo(String value) {
            addCriterion("ExperimentResult <=", value, "experimentresult");
            return (Criteria) this;
        }

        public Criteria andExperimentresultLike(String value) {
            addCriterion("ExperimentResult like", value, "experimentresult");
            return (Criteria) this;
        }

        public Criteria andExperimentresultNotLike(String value) {
            addCriterion("ExperimentResult not like", value, "experimentresult");
            return (Criteria) this;
        }

        public Criteria andExperimentresultIn(List<String> values) {
            addCriterion("ExperimentResult in", values, "experimentresult");
            return (Criteria) this;
        }

        public Criteria andExperimentresultNotIn(List<String> values) {
            addCriterion("ExperimentResult not in", values, "experimentresult");
            return (Criteria) this;
        }

        public Criteria andExperimentresultBetween(String value1, String value2) {
            addCriterion("ExperimentResult between", value1, value2, "experimentresult");
            return (Criteria) this;
        }

        public Criteria andExperimentresultNotBetween(String value1, String value2) {
            addCriterion("ExperimentResult not between", value1, value2, "experimentresult");
            return (Criteria) this;
        }

        public Criteria andExperimentnoteIsNull() {
            addCriterion("ExperimentNote is null");
            return (Criteria) this;
        }

        public Criteria andExperimentnoteIsNotNull() {
            addCriterion("ExperimentNote is not null");
            return (Criteria) this;
        }

        public Criteria andExperimentnoteEqualTo(String value) {
            addCriterion("ExperimentNote =", value, "experimentnote");
            return (Criteria) this;
        }

        public Criteria andExperimentnoteNotEqualTo(String value) {
            addCriterion("ExperimentNote <>", value, "experimentnote");
            return (Criteria) this;
        }

        public Criteria andExperimentnoteGreaterThan(String value) {
            addCriterion("ExperimentNote >", value, "experimentnote");
            return (Criteria) this;
        }

        public Criteria andExperimentnoteGreaterThanOrEqualTo(String value) {
            addCriterion("ExperimentNote >=", value, "experimentnote");
            return (Criteria) this;
        }

        public Criteria andExperimentnoteLessThan(String value) {
            addCriterion("ExperimentNote <", value, "experimentnote");
            return (Criteria) this;
        }

        public Criteria andExperimentnoteLessThanOrEqualTo(String value) {
            addCriterion("ExperimentNote <=", value, "experimentnote");
            return (Criteria) this;
        }

        public Criteria andExperimentnoteLike(String value) {
            addCriterion("ExperimentNote like", value, "experimentnote");
            return (Criteria) this;
        }

        public Criteria andExperimentnoteNotLike(String value) {
            addCriterion("ExperimentNote not like", value, "experimentnote");
            return (Criteria) this;
        }

        public Criteria andExperimentnoteIn(List<String> values) {
            addCriterion("ExperimentNote in", values, "experimentnote");
            return (Criteria) this;
        }

        public Criteria andExperimentnoteNotIn(List<String> values) {
            addCriterion("ExperimentNote not in", values, "experimentnote");
            return (Criteria) this;
        }

        public Criteria andExperimentnoteBetween(String value1, String value2) {
            addCriterion("ExperimentNote between", value1, value2, "experimentnote");
            return (Criteria) this;
        }

        public Criteria andExperimentnoteNotBetween(String value1, String value2) {
            addCriterion("ExperimentNote not between", value1, value2, "experimentnote");
            return (Criteria) this;
        }

        public Criteria andExperimentdateIsNull() {
            addCriterion("ExperimentDate is null");
            return (Criteria) this;
        }

        public Criteria andExperimentdateIsNotNull() {
            addCriterion("ExperimentDate is not null");
            return (Criteria) this;
        }

        public Criteria andExperimentdateEqualTo(Date value) {
            addCriterion("ExperimentDate =", value, "experimentdate");
            return (Criteria) this;
        }

        public Criteria andExperimentdateNotEqualTo(Date value) {
            addCriterion("ExperimentDate <>", value, "experimentdate");
            return (Criteria) this;
        }

        public Criteria andExperimentdateGreaterThan(Date value) {
            addCriterion("ExperimentDate >", value, "experimentdate");
            return (Criteria) this;
        }

        public Criteria andExperimentdateGreaterThanOrEqualTo(Date value) {
            addCriterion("ExperimentDate >=", value, "experimentdate");
            return (Criteria) this;
        }

        public Criteria andExperimentdateLessThan(Date value) {
            addCriterion("ExperimentDate <", value, "experimentdate");
            return (Criteria) this;
        }

        public Criteria andExperimentdateLessThanOrEqualTo(Date value) {
            addCriterion("ExperimentDate <=", value, "experimentdate");
            return (Criteria) this;
        }

        public Criteria andExperimentdateIn(List<Date> values) {
            addCriterion("ExperimentDate in", values, "experimentdate");
            return (Criteria) this;
        }

        public Criteria andExperimentdateNotIn(List<Date> values) {
            addCriterion("ExperimentDate not in", values, "experimentdate");
            return (Criteria) this;
        }

        public Criteria andExperimentdateBetween(Date value1, Date value2) {
            addCriterion("ExperimentDate between", value1, value2, "experimentdate");
            return (Criteria) this;
        }

        public Criteria andExperimentdateNotBetween(Date value1, Date value2) {
            addCriterion("ExperimentDate not between", value1, value2, "experimentdate");
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