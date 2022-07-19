package com.crud.bean;

import java.util.ArrayList;
import java.util.List;

public class AnimalBasicInfoExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public AnimalBasicInfoExample() {
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

        public Criteria andBasicnumberIsNull() {
            addCriterion("BasicNumber is null");
            return (Criteria) this;
        }

        public Criteria andBasicnumberIsNotNull() {
            addCriterion("BasicNumber is not null");
            return (Criteria) this;
        }

        public Criteria andBasicnumberEqualTo(Integer value) {
            addCriterion("BasicNumber =", value, "basicnumber");
            return (Criteria) this;
        }

        public Criteria andBasicnumberNotEqualTo(Integer value) {
            addCriterion("BasicNumber <>", value, "basicnumber");
            return (Criteria) this;
        }

        public Criteria andBasicnumberGreaterThan(Integer value) {
            addCriterion("BasicNumber >", value, "basicnumber");
            return (Criteria) this;
        }

        public Criteria andBasicnumberGreaterThanOrEqualTo(Integer value) {
            addCriterion("BasicNumber >=", value, "basicnumber");
            return (Criteria) this;
        }

        public Criteria andBasicnumberLessThan(Integer value) {
            addCriterion("BasicNumber <", value, "basicnumber");
            return (Criteria) this;
        }

        public Criteria andBasicnumberLessThanOrEqualTo(Integer value) {
            addCriterion("BasicNumber <=", value, "basicnumber");
            return (Criteria) this;
        }

        public Criteria andBasicnumberIn(List<Integer> values) {
            addCriterion("BasicNumber in", values, "basicnumber");
            return (Criteria) this;
        }

        public Criteria andBasicnumberNotIn(List<Integer> values) {
            addCriterion("BasicNumber not in", values, "basicnumber");
            return (Criteria) this;
        }

        public Criteria andBasicnumberBetween(Integer value1, Integer value2) {
            addCriterion("BasicNumber between", value1, value2, "basicnumber");
            return (Criteria) this;
        }

        public Criteria andBasicnumberNotBetween(Integer value1, Integer value2) {
            addCriterion("BasicNumber not between", value1, value2, "basicnumber");
            return (Criteria) this;
        }

        public Criteria andAnimalweightIsNull() {
            addCriterion("AnimalWeight is null");
            return (Criteria) this;
        }

        public Criteria andAnimalweightIsNotNull() {
            addCriterion("AnimalWeight is not null");
            return (Criteria) this;
        }

        public Criteria andAnimalweightEqualTo(String value) {
            addCriterion("AnimalWeight =", value, "animalweight");
            return (Criteria) this;
        }

        public Criteria andAnimalweightNotEqualTo(String value) {
            addCriterion("AnimalWeight <>", value, "animalweight");
            return (Criteria) this;
        }

        public Criteria andAnimalweightGreaterThan(String value) {
            addCriterion("AnimalWeight >", value, "animalweight");
            return (Criteria) this;
        }

        public Criteria andAnimalweightGreaterThanOrEqualTo(String value) {
            addCriterion("AnimalWeight >=", value, "animalweight");
            return (Criteria) this;
        }

        public Criteria andAnimalweightLessThan(String value) {
            addCriterion("AnimalWeight <", value, "animalweight");
            return (Criteria) this;
        }

        public Criteria andAnimalweightLessThanOrEqualTo(String value) {
            addCriterion("AnimalWeight <=", value, "animalweight");
            return (Criteria) this;
        }

        public Criteria andAnimalweightLike(String value) {
            addCriterion("AnimalWeight like", value, "animalweight");
            return (Criteria) this;
        }

        public Criteria andAnimalweightNotLike(String value) {
            addCriterion("AnimalWeight not like", value, "animalweight");
            return (Criteria) this;
        }

        public Criteria andAnimalweightIn(List<String> values) {
            addCriterion("AnimalWeight in", values, "animalweight");
            return (Criteria) this;
        }

        public Criteria andAnimalweightNotIn(List<String> values) {
            addCriterion("AnimalWeight not in", values, "animalweight");
            return (Criteria) this;
        }

        public Criteria andAnimalweightBetween(double value1, double value2) {
            addCriterion("AnimalWeight between", value1, value2, "animalweight");
            return (Criteria) this;
        }

        public Criteria andAnimalweightNotBetween(String value1, String value2) {
            addCriterion("AnimalWeight not between", value1, value2, "animalweight");
            return (Criteria) this;
        }

        public Criteria andAnimallenghIsNull() {
            addCriterion("AnimalLengh is null");
            return (Criteria) this;
        }

        public Criteria andAnimallenghIsNotNull() {
            addCriterion("AnimalLengh is not null");
            return (Criteria) this;
        }

        public Criteria andAnimallenghEqualTo(String value) {
            addCriterion("AnimalLengh =", value, "animallengh");
            return (Criteria) this;
        }

        public Criteria andAnimallenghNotEqualTo(String value) {
            addCriterion("AnimalLengh <>", value, "animallengh");
            return (Criteria) this;
        }

        public Criteria andAnimallenghGreaterThan(String value) {
            addCriterion("AnimalLengh >", value, "animallengh");
            return (Criteria) this;
        }

        public Criteria andAnimallenghGreaterThanOrEqualTo(String value) {
            addCriterion("AnimalLengh >=", value, "animallengh");
            return (Criteria) this;
        }

        public Criteria andAnimallenghLessThan(String value) {
            addCriterion("AnimalLengh <", value, "animallengh");
            return (Criteria) this;
        }

        public Criteria andAnimallenghLessThanOrEqualTo(String value) {
            addCriterion("AnimalLengh <=", value, "animallengh");
            return (Criteria) this;
        }

        public Criteria andAnimallenghLike(String value) {
            addCriterion("AnimalLengh like", value, "animallengh");
            return (Criteria) this;
        }

        public Criteria andAnimallenghNotLike(String value) {
            addCriterion("AnimalLengh not like", value, "animallengh");
            return (Criteria) this;
        }

        public Criteria andAnimallenghIn(List<String> values) {
            addCriterion("AnimalLengh in", values, "animallengh");
            return (Criteria) this;
        }

        public Criteria andAnimallenghNotIn(List<String> values) {
            addCriterion("AnimalLengh not in", values, "animallengh");
            return (Criteria) this;
        }

        public Criteria andAnimallenghBetween(double value1, double value2) {
            addCriterion("AnimalLengh between", value1, value2, "animallengh");
            return (Criteria) this;
        }

        public Criteria andAnimallenghNotBetween(String value1, String value2) {
            addCriterion("AnimalLengh not between", value1, value2, "animallengh");
            return (Criteria) this;
        }

        public Criteria andAnimalbloodtypeIsNull() {
            addCriterion("AnimalBloodType is null");
            return (Criteria) this;
        }

        public Criteria andAnimalbloodtypeIsNotNull() {
            addCriterion("AnimalBloodType is not null");
            return (Criteria) this;
        }

        public Criteria andAnimalbloodtypeEqualTo(String value) {
            addCriterion("AnimalBloodType =", value, "animalbloodtype");
            return (Criteria) this;
        }

        public Criteria andAnimalbloodtypeNotEqualTo(String value) {
            addCriterion("AnimalBloodType <>", value, "animalbloodtype");
            return (Criteria) this;
        }

        public Criteria andAnimalbloodtypeGreaterThan(String value) {
            addCriterion("AnimalBloodType >", value, "animalbloodtype");
            return (Criteria) this;
        }

        public Criteria andAnimalbloodtypeGreaterThanOrEqualTo(String value) {
            addCriterion("AnimalBloodType >=", value, "animalbloodtype");
            return (Criteria) this;
        }

        public Criteria andAnimalbloodtypeLessThan(String value) {
            addCriterion("AnimalBloodType <", value, "animalbloodtype");
            return (Criteria) this;
        }

        public Criteria andAnimalbloodtypeLessThanOrEqualTo(String value) {
            addCriterion("AnimalBloodType <=", value, "animalbloodtype");
            return (Criteria) this;
        }

        public Criteria andAnimalbloodtypeLike(String value) {
            addCriterion("AnimalBloodType like", value, "animalbloodtype");
            return (Criteria) this;
        }

        public Criteria andAnimalbloodtypeNotLike(String value) {
            addCriterion("AnimalBloodType not like", value, "animalbloodtype");
            return (Criteria) this;
        }

        public Criteria andAnimalbloodtypeIn(List<String> values) {
            addCriterion("AnimalBloodType in", values, "animalbloodtype");
            return (Criteria) this;
        }

        public Criteria andAnimalbloodtypeNotIn(List<String> values) {
            addCriterion("AnimalBloodType not in", values, "animalbloodtype");
            return (Criteria) this;
        }

        public Criteria andAnimalbloodtypeBetween(String value1, String value2) {
            addCriterion("AnimalBloodType between", value1, value2, "animalbloodtype");
            return (Criteria) this;
        }

        public Criteria andAnimalbloodtypeNotBetween(String value1, String value2) {
            addCriterion("AnimalBloodType not between", value1, value2, "animalbloodtype");
            return (Criteria) this;
        }

        public Criteria andAnimaloriginIsNull() {
            addCriterion("AnimalOrigin is null");
            return (Criteria) this;
        }

        public Criteria andAnimaloriginIsNotNull() {
            addCriterion("AnimalOrigin is not null");
            return (Criteria) this;
        }

        public Criteria andAnimaloriginEqualTo(String value) {
            addCriterion("AnimalOrigin =", value, "animalorigin");
            return (Criteria) this;
        }

        public Criteria andAnimaloriginNotEqualTo(String value) {
            addCriterion("AnimalOrigin <>", value, "animalorigin");
            return (Criteria) this;
        }

        public Criteria andAnimaloriginGreaterThan(String value) {
            addCriterion("AnimalOrigin >", value, "animalorigin");
            return (Criteria) this;
        }

        public Criteria andAnimaloriginGreaterThanOrEqualTo(String value) {
            addCriterion("AnimalOrigin >=", value, "animalorigin");
            return (Criteria) this;
        }

        public Criteria andAnimaloriginLessThan(String value) {
            addCriterion("AnimalOrigin <", value, "animalorigin");
            return (Criteria) this;
        }

        public Criteria andAnimaloriginLessThanOrEqualTo(String value) {
            addCriterion("AnimalOrigin <=", value, "animalorigin");
            return (Criteria) this;
        }

        public Criteria andAnimaloriginLike(String value) {
            addCriterion("AnimalOrigin like", value, "animalorigin");
            return (Criteria) this;
        }

        public Criteria andAnimaloriginNotLike(String value) {
            addCriterion("AnimalOrigin not like", value, "animalorigin");
            return (Criteria) this;
        }

        public Criteria andAnimaloriginIn(List<String> values) {
            addCriterion("AnimalOrigin in", values, "animalorigin");
            return (Criteria) this;
        }

        public Criteria andAnimaloriginNotIn(List<String> values) {
            addCriterion("AnimalOrigin not in", values, "animalorigin");
            return (Criteria) this;
        }

        public Criteria andAnimaloriginBetween(String value1, String value2) {
            addCriterion("AnimalOrigin between", value1, value2, "animalorigin");
            return (Criteria) this;
        }

        public Criteria andAnimaloriginNotBetween(String value1, String value2) {
            addCriterion("AnimalOrigin not between", value1, value2, "animalorigin");
            return (Criteria) this;
        }

        public Criteria andAnimaldescriptionIsNull() {
            addCriterion("AnimalDescription is null");
            return (Criteria) this;
        }

        public Criteria andAnimaldescriptionIsNotNull() {
            addCriterion("AnimalDescription is not null");
            return (Criteria) this;
        }

        public Criteria andAnimaldescriptionEqualTo(String value) {
            addCriterion("AnimalDescription =", value, "animaldescription");
            return (Criteria) this;
        }

        public Criteria andAnimaldescriptionNotEqualTo(String value) {
            addCriterion("AnimalDescription <>", value, "animaldescription");
            return (Criteria) this;
        }

        public Criteria andAnimaldescriptionGreaterThan(String value) {
            addCriterion("AnimalDescription >", value, "animaldescription");
            return (Criteria) this;
        }

        public Criteria andAnimaldescriptionGreaterThanOrEqualTo(String value) {
            addCriterion("AnimalDescription >=", value, "animaldescription");
            return (Criteria) this;
        }

        public Criteria andAnimaldescriptionLessThan(String value) {
            addCriterion("AnimalDescription <", value, "animaldescription");
            return (Criteria) this;
        }

        public Criteria andAnimaldescriptionLessThanOrEqualTo(String value) {
            addCriterion("AnimalDescription <=", value, "animaldescription");
            return (Criteria) this;
        }

        public Criteria andAnimaldescriptionLike(String value) {
            addCriterion("AnimalDescription like", value, "animaldescription");
            return (Criteria) this;
        }

        public Criteria andAnimaldescriptionNotLike(String value) {
            addCriterion("AnimalDescription not like", value, "animaldescription");
            return (Criteria) this;
        }

        public Criteria andAnimaldescriptionIn(List<String> values) {
            addCriterion("AnimalDescription in", values, "animaldescription");
            return (Criteria) this;
        }

        public Criteria andAnimaldescriptionNotIn(List<String> values) {
            addCriterion("AnimalDescription not in", values, "animaldescription");
            return (Criteria) this;
        }

        public Criteria andAnimaldescriptionBetween(String value1, String value2) {
            addCriterion("AnimalDescription between", value1, value2, "animaldescription");
            return (Criteria) this;
        }

        public Criteria andAnimaldescriptionNotBetween(String value1, String value2) {
            addCriterion("AnimalDescription not between", value1, value2, "animaldescription");
            return (Criteria) this;
        }

        public Criteria andAnimalspeciesIsNull() {
            addCriterion("AnimalSpecies is null");
            return (Criteria) this;
        }

        public Criteria andAnimalspeciesIsNotNull() {
            addCriterion("AnimalSpecies is not null");
            return (Criteria) this;
        }

        public Criteria andAnimalspeciesEqualTo(String value) {
            addCriterion("AnimalSpecies =", value, "animalspecies");
            return (Criteria) this;
        }

        public Criteria andAnimalspeciesNotEqualTo(String value) {
            addCriterion("AnimalSpecies <>", value, "animalspecies");
            return (Criteria) this;
        }

        public Criteria andAnimalspeciesGreaterThan(String value) {
            addCriterion("AnimalSpecies >", value, "animalspecies");
            return (Criteria) this;
        }

        public Criteria andAnimalspeciesGreaterThanOrEqualTo(String value) {
            addCriterion("AnimalSpecies >=", value, "animalspecies");
            return (Criteria) this;
        }

        public Criteria andAnimalspeciesLessThan(String value) {
            addCriterion("AnimalSpecies <", value, "animalspecies");
            return (Criteria) this;
        }

        public Criteria andAnimalspeciesLessThanOrEqualTo(String value) {
            addCriterion("AnimalSpecies <=", value, "animalspecies");
            return (Criteria) this;
        }

        public Criteria andAnimalspeciesLike(String value) {
            addCriterion("AnimalSpecies like", value, "animalspecies");
            return (Criteria) this;
        }

        public Criteria andAnimalspeciesNotLike(String value) {
            addCriterion("AnimalSpecies not like", value, "animalspecies");
            return (Criteria) this;
        }

        public Criteria andAnimalspeciesIn(List<String> values) {
            addCriterion("AnimalSpecies in", values, "animalspecies");
            return (Criteria) this;
        }

        public Criteria andAnimalspeciesNotIn(List<String> values) {
            addCriterion("AnimalSpecies not in", values, "animalspecies");
            return (Criteria) this;
        }

        public Criteria andAnimalspeciesBetween(String value1, String value2) {
            addCriterion("AnimalSpecies between", value1, value2, "animalspecies");
            return (Criteria) this;
        }

        public Criteria andAnimalspeciesNotBetween(String value1, String value2) {
            addCriterion("AnimalSpecies not between", value1, value2, "animalspecies");
            return (Criteria) this;
        }

        public Criteria andAnimalsexIsNull() {
            addCriterion("AnimalSex is null");
            return (Criteria) this;
        }

        public Criteria andAnimalsexIsNotNull() {
            addCriterion("AnimalSex is not null");
            return (Criteria) this;
        }

        public Criteria andAnimalsexEqualTo(String value) {
            addCriterion("AnimalSex =", value, "animalsex");
            return (Criteria) this;
        }

        public Criteria andAnimalsexNotEqualTo(String value) {
            addCriterion("AnimalSex <>", value, "animalsex");
            return (Criteria) this;
        }

        public Criteria andAnimalsexGreaterThan(String value) {
            addCriterion("AnimalSex >", value, "animalsex");
            return (Criteria) this;
        }

        public Criteria andAnimalsexGreaterThanOrEqualTo(String value) {
            addCriterion("AnimalSex >=", value, "animalsex");
            return (Criteria) this;
        }

        public Criteria andAnimalsexLessThan(String value) {
            addCriterion("AnimalSex <", value, "animalsex");
            return (Criteria) this;
        }

        public Criteria andAnimalsexLessThanOrEqualTo(String value) {
            addCriterion("AnimalSex <=", value, "animalsex");
            return (Criteria) this;
        }

        public Criteria andAnimalsexLike(String value) {
            addCriterion("AnimalSex like", value, "animalsex");
            return (Criteria) this;
        }

        public Criteria andAnimalsexNotLike(String value) {
            addCriterion("AnimalSex not like", value, "animalsex");
            return (Criteria) this;
        }

        public Criteria andAnimalsexIn(List<String> values) {
            addCriterion("AnimalSex in", values, "animalsex");
            return (Criteria) this;
        }

        public Criteria andAnimalsexNotIn(List<String> values) {
            addCriterion("AnimalSex not in", values, "animalsex");
            return (Criteria) this;
        }

        public Criteria andAnimalsexBetween(String value1, String value2) {
            addCriterion("AnimalSex between", value1, value2, "animalsex");
            return (Criteria) this;
        }

        public Criteria andAnimalsexNotBetween(String value1, String value2) {
            addCriterion("AnimalSex not between", value1, value2, "animalsex");
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