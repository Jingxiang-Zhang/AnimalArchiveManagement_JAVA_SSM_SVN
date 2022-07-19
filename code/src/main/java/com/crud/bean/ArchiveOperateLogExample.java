package com.crud.bean;

import java.util.ArrayList;
import java.util.List;

public class ArchiveOperateLogExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public ArchiveOperateLogExample() {
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

        public Criteria andOpcodeIsNull() {
            addCriterion("Opcode is null");
            return (Criteria) this;
        }

        public Criteria andOpcodeIsNotNull() {
            addCriterion("Opcode is not null");
            return (Criteria) this;
        }

        public Criteria andOpcodeEqualTo(String value) {
            addCriterion("Opcode =", value, "opcode");
            return (Criteria) this;
        }

        public Criteria andOpcodeNotEqualTo(String value) {
            addCriterion("Opcode <>", value, "opcode");
            return (Criteria) this;
        }

        public Criteria andOpcodeGreaterThan(String value) {
            addCriterion("Opcode >", value, "opcode");
            return (Criteria) this;
        }

        public Criteria andOpcodeGreaterThanOrEqualTo(String value) {
            addCriterion("Opcode >=", value, "opcode");
            return (Criteria) this;
        }

        public Criteria andOpcodeLessThan(String value) {
            addCriterion("Opcode <", value, "opcode");
            return (Criteria) this;
        }

        public Criteria andOpcodeLessThanOrEqualTo(String value) {
            addCriterion("Opcode <=", value, "opcode");
            return (Criteria) this;
        }

        public Criteria andOpcodeLike(String value) {
            addCriterion("Opcode like", value, "opcode");
            return (Criteria) this;
        }

        public Criteria andOpcodeNotLike(String value) {
            addCriterion("Opcode not like", value, "opcode");
            return (Criteria) this;
        }

        public Criteria andOpcodeIn(List<String> values) {
            addCriterion("Opcode in", values, "opcode");
            return (Criteria) this;
        }

        public Criteria andOpcodeNotIn(List<String> values) {
            addCriterion("Opcode not in", values, "opcode");
            return (Criteria) this;
        }

        public Criteria andOpcodeBetween(String value1, String value2) {
            addCriterion("Opcode between", value1, value2, "opcode");
            return (Criteria) this;
        }

        public Criteria andOpcodeNotBetween(String value1, String value2) {
            addCriterion("Opcode not between", value1, value2, "opcode");
            return (Criteria) this;
        }

        public Criteria andOperatorIsNull() {
            addCriterion("Operator is null");
            return (Criteria) this;
        }

        public Criteria andOperatorIsNotNull() {
            addCriterion("Operator is not null");
            return (Criteria) this;
        }

        public Criteria andOperatorEqualTo(String value) {
            addCriterion("Operator =", value, "operator");
            return (Criteria) this;
        }

        public Criteria andOperatorNotEqualTo(String value) {
            addCriterion("Operator <>", value, "operator");
            return (Criteria) this;
        }

        public Criteria andOperatorGreaterThan(String value) {
            addCriterion("Operator >", value, "operator");
            return (Criteria) this;
        }

        public Criteria andOperatorGreaterThanOrEqualTo(String value) {
            addCriterion("Operator >=", value, "operator");
            return (Criteria) this;
        }

        public Criteria andOperatorLessThan(String value) {
            addCriterion("Operator <", value, "operator");
            return (Criteria) this;
        }

        public Criteria andOperatorLessThanOrEqualTo(String value) {
            addCriterion("Operator <=", value, "operator");
            return (Criteria) this;
        }

        public Criteria andOperatorLike(String value) {
            addCriterion("Operator like", value, "operator");
            return (Criteria) this;
        }

        public Criteria andOperatorNotLike(String value) {
            addCriterion("Operator not like", value, "operator");
            return (Criteria) this;
        }

        public Criteria andOperatorIn(List<String> values) {
            addCriterion("Operator in", values, "operator");
            return (Criteria) this;
        }

        public Criteria andOperatorNotIn(List<String> values) {
            addCriterion("Operator not in", values, "operator");
            return (Criteria) this;
        }

        public Criteria andOperatorBetween(String value1, String value2) {
            addCriterion("Operator between", value1, value2, "operator");
            return (Criteria) this;
        }

        public Criteria andOperatorNotBetween(String value1, String value2) {
            addCriterion("Operator not between", value1, value2, "operator");
            return (Criteria) this;
        }

        public Criteria andOperatordeptIsNull() {
            addCriterion("OperatorDept is null");
            return (Criteria) this;
        }

        public Criteria andOperatordeptIsNotNull() {
            addCriterion("OperatorDept is not null");
            return (Criteria) this;
        }

        public Criteria andOperatordeptEqualTo(String value) {
            addCriterion("OperatorDept =", value, "operatordept");
            return (Criteria) this;
        }

        public Criteria andOperatordeptNotEqualTo(String value) {
            addCriterion("OperatorDept <>", value, "operatordept");
            return (Criteria) this;
        }

        public Criteria andOperatordeptGreaterThan(String value) {
            addCriterion("OperatorDept >", value, "operatordept");
            return (Criteria) this;
        }

        public Criteria andOperatordeptGreaterThanOrEqualTo(String value) {
            addCriterion("OperatorDept >=", value, "operatordept");
            return (Criteria) this;
        }

        public Criteria andOperatordeptLessThan(String value) {
            addCriterion("OperatorDept <", value, "operatordept");
            return (Criteria) this;
        }

        public Criteria andOperatordeptLessThanOrEqualTo(String value) {
            addCriterion("OperatorDept <=", value, "operatordept");
            return (Criteria) this;
        }

        public Criteria andOperatordeptLike(String value) {
            addCriterion("OperatorDept like", value, "operatordept");
            return (Criteria) this;
        }

        public Criteria andOperatordeptNotLike(String value) {
            addCriterion("OperatorDept not like", value, "operatordept");
            return (Criteria) this;
        }

        public Criteria andOperatordeptIn(List<String> values) {
            addCriterion("OperatorDept in", values, "operatordept");
            return (Criteria) this;
        }

        public Criteria andOperatordeptNotIn(List<String> values) {
            addCriterion("OperatorDept not in", values, "operatordept");
            return (Criteria) this;
        }

        public Criteria andOperatordeptBetween(String value1, String value2) {
            addCriterion("OperatorDept between", value1, value2, "operatordept");
            return (Criteria) this;
        }

        public Criteria andOperatordeptNotBetween(String value1, String value2) {
            addCriterion("OperatorDept not between", value1, value2, "operatordept");
            return (Criteria) this;
        }

        public Criteria andOperatereasonIsNull() {
            addCriterion("OperateReason is null");
            return (Criteria) this;
        }

        public Criteria andOperatereasonIsNotNull() {
            addCriterion("OperateReason is not null");
            return (Criteria) this;
        }

        public Criteria andOperatereasonEqualTo(String value) {
            addCriterion("OperateReason =", value, "operatereason");
            return (Criteria) this;
        }

        public Criteria andOperatereasonNotEqualTo(String value) {
            addCriterion("OperateReason <>", value, "operatereason");
            return (Criteria) this;
        }

        public Criteria andOperatereasonGreaterThan(String value) {
            addCriterion("OperateReason >", value, "operatereason");
            return (Criteria) this;
        }

        public Criteria andOperatereasonGreaterThanOrEqualTo(String value) {
            addCriterion("OperateReason >=", value, "operatereason");
            return (Criteria) this;
        }

        public Criteria andOperatereasonLessThan(String value) {
            addCriterion("OperateReason <", value, "operatereason");
            return (Criteria) this;
        }

        public Criteria andOperatereasonLessThanOrEqualTo(String value) {
            addCriterion("OperateReason <=", value, "operatereason");
            return (Criteria) this;
        }

        public Criteria andOperatereasonLike(String value) {
            addCriterion("OperateReason like", value, "operatereason");
            return (Criteria) this;
        }

        public Criteria andOperatereasonNotLike(String value) {
            addCriterion("OperateReason not like", value, "operatereason");
            return (Criteria) this;
        }

        public Criteria andOperatereasonIn(List<String> values) {
            addCriterion("OperateReason in", values, "operatereason");
            return (Criteria) this;
        }

        public Criteria andOperatereasonNotIn(List<String> values) {
            addCriterion("OperateReason not in", values, "operatereason");
            return (Criteria) this;
        }

        public Criteria andOperatereasonBetween(String value1, String value2) {
            addCriterion("OperateReason between", value1, value2, "operatereason");
            return (Criteria) this;
        }

        public Criteria andOperatereasonNotBetween(String value1, String value2) {
            addCriterion("OperateReason not between", value1, value2, "operatereason");
            return (Criteria) this;
        }

        public Criteria andOperateremarkIsNull() {
            addCriterion("OperateRemark is null");
            return (Criteria) this;
        }

        public Criteria andOperateremarkIsNotNull() {
            addCriterion("OperateRemark is not null");
            return (Criteria) this;
        }

        public Criteria andOperateremarkEqualTo(String value) {
            addCriterion("OperateRemark =", value, "operateremark");
            return (Criteria) this;
        }

        public Criteria andOperateremarkNotEqualTo(String value) {
            addCriterion("OperateRemark <>", value, "operateremark");
            return (Criteria) this;
        }

        public Criteria andOperateremarkGreaterThan(String value) {
            addCriterion("OperateRemark >", value, "operateremark");
            return (Criteria) this;
        }

        public Criteria andOperateremarkGreaterThanOrEqualTo(String value) {
            addCriterion("OperateRemark >=", value, "operateremark");
            return (Criteria) this;
        }

        public Criteria andOperateremarkLessThan(String value) {
            addCriterion("OperateRemark <", value, "operateremark");
            return (Criteria) this;
        }

        public Criteria andOperateremarkLessThanOrEqualTo(String value) {
            addCriterion("OperateRemark <=", value, "operateremark");
            return (Criteria) this;
        }

        public Criteria andOperateremarkLike(String value) {
            addCriterion("OperateRemark like", value, "operateremark");
            return (Criteria) this;
        }

        public Criteria andOperateremarkNotLike(String value) {
            addCriterion("OperateRemark not like", value, "operateremark");
            return (Criteria) this;
        }

        public Criteria andOperateremarkIn(List<String> values) {
            addCriterion("OperateRemark in", values, "operateremark");
            return (Criteria) this;
        }

        public Criteria andOperateremarkNotIn(List<String> values) {
            addCriterion("OperateRemark not in", values, "operateremark");
            return (Criteria) this;
        }

        public Criteria andOperateremarkBetween(String value1, String value2) {
            addCriterion("OperateRemark between", value1, value2, "operateremark");
            return (Criteria) this;
        }

        public Criteria andOperateremarkNotBetween(String value1, String value2) {
            addCriterion("OperateRemark not between", value1, value2, "operateremark");
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