package com.crud.bean;

import java.util.ArrayList;
import java.util.List;

public class UserExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public UserExample() {
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

        public Criteria andPwdIsNull() {
            addCriterion("pwd is null");
            return (Criteria) this;
        }

        public Criteria andPwdIsNotNull() {
            addCriterion("pwd is not null");
            return (Criteria) this;
        }

        public Criteria andPwdEqualTo(String value) {
            addCriterion("pwd =", value, "pwd");
            return (Criteria) this;
        }

        public Criteria andPwdNotEqualTo(String value) {
            addCriterion("pwd <>", value, "pwd");
            return (Criteria) this;
        }

        public Criteria andPwdGreaterThan(String value) {
            addCriterion("pwd >", value, "pwd");
            return (Criteria) this;
        }

        public Criteria andPwdGreaterThanOrEqualTo(String value) {
            addCriterion("pwd >=", value, "pwd");
            return (Criteria) this;
        }

        public Criteria andPwdLessThan(String value) {
            addCriterion("pwd <", value, "pwd");
            return (Criteria) this;
        }

        public Criteria andPwdLessThanOrEqualTo(String value) {
            addCriterion("pwd <=", value, "pwd");
            return (Criteria) this;
        }

        public Criteria andPwdLike(String value) {
            addCriterion("pwd like", value, "pwd");
            return (Criteria) this;
        }

        public Criteria andPwdNotLike(String value) {
            addCriterion("pwd not like", value, "pwd");
            return (Criteria) this;
        }

        public Criteria andPwdIn(List<String> values) {
            addCriterion("pwd in", values, "pwd");
            return (Criteria) this;
        }

        public Criteria andPwdNotIn(List<String> values) {
            addCriterion("pwd not in", values, "pwd");
            return (Criteria) this;
        }

        public Criteria andPwdBetween(String value1, String value2) {
            addCriterion("pwd between", value1, value2, "pwd");
            return (Criteria) this;
        }

        public Criteria andPwdNotBetween(String value1, String value2) {
            addCriterion("pwd not between", value1, value2, "pwd");
            return (Criteria) this;
        }

        public Criteria andNameIsNull() {
            addCriterion("name is null");
            return (Criteria) this;
        }

        public Criteria andNameIsNotNull() {
            addCriterion("name is not null");
            return (Criteria) this;
        }

        public Criteria andNameEqualTo(String value) {
            addCriterion("name =", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotEqualTo(String value) {
            addCriterion("name <>", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameGreaterThan(String value) {
            addCriterion("name >", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameGreaterThanOrEqualTo(String value) {
            addCriterion("name >=", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameLessThan(String value) {
            addCriterion("name <", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameLessThanOrEqualTo(String value) {
            addCriterion("name <=", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameLike(String value) {
            addCriterion("name like", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotLike(String value) {
            addCriterion("name not like", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameIn(List<String> values) {
            addCriterion("name in", values, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotIn(List<String> values) {
            addCriterion("name not in", values, "name");
            return (Criteria) this;
        }

        public Criteria andNameBetween(String value1, String value2) {
            addCriterion("name between", value1, value2, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotBetween(String value1, String value2) {
            addCriterion("name not between", value1, value2, "name");
            return (Criteria) this;
        }

        public Criteria andTelIsNull() {
            addCriterion("tel is null");
            return (Criteria) this;
        }

        public Criteria andTelIsNotNull() {
            addCriterion("tel is not null");
            return (Criteria) this;
        }

        public Criteria andTelEqualTo(String value) {
            addCriterion("tel =", value, "tel");
            return (Criteria) this;
        }

        public Criteria andTelNotEqualTo(String value) {
            addCriterion("tel <>", value, "tel");
            return (Criteria) this;
        }

        public Criteria andTelGreaterThan(String value) {
            addCriterion("tel >", value, "tel");
            return (Criteria) this;
        }

        public Criteria andTelGreaterThanOrEqualTo(String value) {
            addCriterion("tel >=", value, "tel");
            return (Criteria) this;
        }

        public Criteria andTelLessThan(String value) {
            addCriterion("tel <", value, "tel");
            return (Criteria) this;
        }

        public Criteria andTelLessThanOrEqualTo(String value) {
            addCriterion("tel <=", value, "tel");
            return (Criteria) this;
        }

        public Criteria andTelLike(String value) {
            addCriterion("tel like", value, "tel");
            return (Criteria) this;
        }

        public Criteria andTelNotLike(String value) {
            addCriterion("tel not like", value, "tel");
            return (Criteria) this;
        }

        public Criteria andTelIn(List<String> values) {
            addCriterion("tel in", values, "tel");
            return (Criteria) this;
        }

        public Criteria andTelNotIn(List<String> values) {
            addCriterion("tel not in", values, "tel");
            return (Criteria) this;
        }

        public Criteria andTelBetween(String value1, String value2) {
            addCriterion("tel between", value1, value2, "tel");
            return (Criteria) this;
        }

        public Criteria andTelNotBetween(String value1, String value2) {
            addCriterion("tel not between", value1, value2, "tel");
            return (Criteria) this;
        }

        public Criteria andDeptIsNull() {
            addCriterion("dept is null");
            return (Criteria) this;
        }

        public Criteria andDeptIsNotNull() {
            addCriterion("dept is not null");
            return (Criteria) this;
        }

        public Criteria andDeptEqualTo(String value) {
            addCriterion("dept =", value, "dept");
            return (Criteria) this;
        }

        public Criteria andDeptNotEqualTo(String value) {
            addCriterion("dept <>", value, "dept");
            return (Criteria) this;
        }

        public Criteria andDeptGreaterThan(String value) {
            addCriterion("dept >", value, "dept");
            return (Criteria) this;
        }

        public Criteria andDeptGreaterThanOrEqualTo(String value) {
            addCriterion("dept >=", value, "dept");
            return (Criteria) this;
        }

        public Criteria andDeptLessThan(String value) {
            addCriterion("dept <", value, "dept");
            return (Criteria) this;
        }

        public Criteria andDeptLessThanOrEqualTo(String value) {
            addCriterion("dept <=", value, "dept");
            return (Criteria) this;
        }

        public Criteria andDeptLike(String value) {
            addCriterion("dept like", value, "dept");
            return (Criteria) this;
        }

        public Criteria andDeptNotLike(String value) {
            addCriterion("dept not like", value, "dept");
            return (Criteria) this;
        }

        public Criteria andDeptIn(List<String> values) {
            addCriterion("dept in", values, "dept");
            return (Criteria) this;
        }

        public Criteria andDeptNotIn(List<String> values) {
            addCriterion("dept not in", values, "dept");
            return (Criteria) this;
        }

        public Criteria andDeptBetween(String value1, String value2) {
            addCriterion("dept between", value1, value2, "dept");
            return (Criteria) this;
        }

        public Criteria andDeptNotBetween(String value1, String value2) {
            addCriterion("dept not between", value1, value2, "dept");
            return (Criteria) this;
        }

        public Criteria andAddrIsNull() {
            addCriterion("addr is null");
            return (Criteria) this;
        }

        public Criteria andAddrIsNotNull() {
            addCriterion("addr is not null");
            return (Criteria) this;
        }

        public Criteria andAddrEqualTo(String value) {
            addCriterion("addr =", value, "addr");
            return (Criteria) this;
        }

        public Criteria andAddrNotEqualTo(String value) {
            addCriterion("addr <>", value, "addr");
            return (Criteria) this;
        }

        public Criteria andAddrGreaterThan(String value) {
            addCriterion("addr >", value, "addr");
            return (Criteria) this;
        }

        public Criteria andAddrGreaterThanOrEqualTo(String value) {
            addCriterion("addr >=", value, "addr");
            return (Criteria) this;
        }

        public Criteria andAddrLessThan(String value) {
            addCriterion("addr <", value, "addr");
            return (Criteria) this;
        }

        public Criteria andAddrLessThanOrEqualTo(String value) {
            addCriterion("addr <=", value, "addr");
            return (Criteria) this;
        }

        public Criteria andAddrLike(String value) {
            addCriterion("addr like", value, "addr");
            return (Criteria) this;
        }

        public Criteria andAddrNotLike(String value) {
            addCriterion("addr not like", value, "addr");
            return (Criteria) this;
        }

        public Criteria andAddrIn(List<String> values) {
            addCriterion("addr in", values, "addr");
            return (Criteria) this;
        }

        public Criteria andAddrNotIn(List<String> values) {
            addCriterion("addr not in", values, "addr");
            return (Criteria) this;
        }

        public Criteria andAddrBetween(String value1, String value2) {
            addCriterion("addr between", value1, value2, "addr");
            return (Criteria) this;
        }

        public Criteria andAddrNotBetween(String value1, String value2) {
            addCriterion("addr not between", value1, value2, "addr");
            return (Criteria) this;
        }

        public Criteria andAuthzarcIsNull() {
            addCriterion("authzArc is null");
            return (Criteria) this;
        }

        public Criteria andAuthzarcIsNotNull() {
            addCriterion("authzArc is not null");
            return (Criteria) this;
        }

        public Criteria andAuthzarcEqualTo(String value) {
            addCriterion("authzArc =", value, "authzarc");
            return (Criteria) this;
        }

        public Criteria andAuthzarcNotEqualTo(String value) {
            addCriterion("authzArc <>", value, "authzarc");
            return (Criteria) this;
        }

        public Criteria andAuthzarcGreaterThan(String value) {
            addCriterion("authzArc >", value, "authzarc");
            return (Criteria) this;
        }

        public Criteria andAuthzarcGreaterThanOrEqualTo(String value) {
            addCriterion("authzArc >=", value, "authzarc");
            return (Criteria) this;
        }

        public Criteria andAuthzarcLessThan(String value) {
            addCriterion("authzArc <", value, "authzarc");
            return (Criteria) this;
        }

        public Criteria andAuthzarcLessThanOrEqualTo(String value) {
            addCriterion("authzArc <=", value, "authzarc");
            return (Criteria) this;
        }

        public Criteria andAuthzarcLike(String value) {
            addCriterion("authzArc like", value, "authzarc");
            return (Criteria) this;
        }

        public Criteria andAuthzarcNotLike(String value) {
            addCriterion("authzArc not like", value, "authzarc");
            return (Criteria) this;
        }

        public Criteria andAuthzarcIn(List<String> values) {
            addCriterion("authzArc in", values, "authzarc");
            return (Criteria) this;
        }

        public Criteria andAuthzarcNotIn(List<String> values) {
            addCriterion("authzArc not in", values, "authzarc");
            return (Criteria) this;
        }

        public Criteria andAuthzarcBetween(String value1, String value2) {
            addCriterion("authzArc between", value1, value2, "authzarc");
            return (Criteria) this;
        }

        public Criteria andAuthzarcNotBetween(String value1, String value2) {
            addCriterion("authzArc not between", value1, value2, "authzarc");
            return (Criteria) this;
        }

        public Criteria andAuthzbasIsNull() {
            addCriterion("authzBas is null");
            return (Criteria) this;
        }

        public Criteria andAuthzbasIsNotNull() {
            addCriterion("authzBas is not null");
            return (Criteria) this;
        }

        public Criteria andAuthzbasEqualTo(String value) {
            addCriterion("authzBas =", value, "authzbas");
            return (Criteria) this;
        }

        public Criteria andAuthzbasNotEqualTo(String value) {
            addCriterion("authzBas <>", value, "authzbas");
            return (Criteria) this;
        }

        public Criteria andAuthzbasGreaterThan(String value) {
            addCriterion("authzBas >", value, "authzbas");
            return (Criteria) this;
        }

        public Criteria andAuthzbasGreaterThanOrEqualTo(String value) {
            addCriterion("authzBas >=", value, "authzbas");
            return (Criteria) this;
        }

        public Criteria andAuthzbasLessThan(String value) {
            addCriterion("authzBas <", value, "authzbas");
            return (Criteria) this;
        }

        public Criteria andAuthzbasLessThanOrEqualTo(String value) {
            addCriterion("authzBas <=", value, "authzbas");
            return (Criteria) this;
        }

        public Criteria andAuthzbasLike(String value) {
            addCriterion("authzBas like", value, "authzbas");
            return (Criteria) this;
        }

        public Criteria andAuthzbasNotLike(String value) {
            addCriterion("authzBas not like", value, "authzbas");
            return (Criteria) this;
        }

        public Criteria andAuthzbasIn(List<String> values) {
            addCriterion("authzBas in", values, "authzbas");
            return (Criteria) this;
        }

        public Criteria andAuthzbasNotIn(List<String> values) {
            addCriterion("authzBas not in", values, "authzbas");
            return (Criteria) this;
        }

        public Criteria andAuthzbasBetween(String value1, String value2) {
            addCriterion("authzBas between", value1, value2, "authzbas");
            return (Criteria) this;
        }

        public Criteria andAuthzbasNotBetween(String value1, String value2) {
            addCriterion("authzBas not between", value1, value2, "authzbas");
            return (Criteria) this;
        }

        public Criteria andAuthzexpIsNull() {
            addCriterion("authzExp is null");
            return (Criteria) this;
        }

        public Criteria andAuthzexpIsNotNull() {
            addCriterion("authzExp is not null");
            return (Criteria) this;
        }

        public Criteria andAuthzexpEqualTo(String value) {
            addCriterion("authzExp =", value, "authzexp");
            return (Criteria) this;
        }

        public Criteria andAuthzexpNotEqualTo(String value) {
            addCriterion("authzExp <>", value, "authzexp");
            return (Criteria) this;
        }

        public Criteria andAuthzexpGreaterThan(String value) {
            addCriterion("authzExp >", value, "authzexp");
            return (Criteria) this;
        }

        public Criteria andAuthzexpGreaterThanOrEqualTo(String value) {
            addCriterion("authzExp >=", value, "authzexp");
            return (Criteria) this;
        }

        public Criteria andAuthzexpLessThan(String value) {
            addCriterion("authzExp <", value, "authzexp");
            return (Criteria) this;
        }

        public Criteria andAuthzexpLessThanOrEqualTo(String value) {
            addCriterion("authzExp <=", value, "authzexp");
            return (Criteria) this;
        }

        public Criteria andAuthzexpLike(String value) {
            addCriterion("authzExp like", value, "authzexp");
            return (Criteria) this;
        }

        public Criteria andAuthzexpNotLike(String value) {
            addCriterion("authzExp not like", value, "authzexp");
            return (Criteria) this;
        }

        public Criteria andAuthzexpIn(List<String> values) {
            addCriterion("authzExp in", values, "authzexp");
            return (Criteria) this;
        }

        public Criteria andAuthzexpNotIn(List<String> values) {
            addCriterion("authzExp not in", values, "authzexp");
            return (Criteria) this;
        }

        public Criteria andAuthzexpBetween(String value1, String value2) {
            addCriterion("authzExp between", value1, value2, "authzexp");
            return (Criteria) this;
        }

        public Criteria andAuthzexpNotBetween(String value1, String value2) {
            addCriterion("authzExp not between", value1, value2, "authzexp");
            return (Criteria) this;
        }

        public Criteria andAuthzfedIsNull() {
            addCriterion("authzFed is null");
            return (Criteria) this;
        }

        public Criteria andAuthzfedIsNotNull() {
            addCriterion("authzFed is not null");
            return (Criteria) this;
        }

        public Criteria andAuthzfedEqualTo(String value) {
            addCriterion("authzFed =", value, "authzfed");
            return (Criteria) this;
        }

        public Criteria andAuthzfedNotEqualTo(String value) {
            addCriterion("authzFed <>", value, "authzfed");
            return (Criteria) this;
        }

        public Criteria andAuthzfedGreaterThan(String value) {
            addCriterion("authzFed >", value, "authzfed");
            return (Criteria) this;
        }

        public Criteria andAuthzfedGreaterThanOrEqualTo(String value) {
            addCriterion("authzFed >=", value, "authzfed");
            return (Criteria) this;
        }

        public Criteria andAuthzfedLessThan(String value) {
            addCriterion("authzFed <", value, "authzfed");
            return (Criteria) this;
        }

        public Criteria andAuthzfedLessThanOrEqualTo(String value) {
            addCriterion("authzFed <=", value, "authzfed");
            return (Criteria) this;
        }

        public Criteria andAuthzfedLike(String value) {
            addCriterion("authzFed like", value, "authzfed");
            return (Criteria) this;
        }

        public Criteria andAuthzfedNotLike(String value) {
            addCriterion("authzFed not like", value, "authzfed");
            return (Criteria) this;
        }

        public Criteria andAuthzfedIn(List<String> values) {
            addCriterion("authzFed in", values, "authzfed");
            return (Criteria) this;
        }

        public Criteria andAuthzfedNotIn(List<String> values) {
            addCriterion("authzFed not in", values, "authzfed");
            return (Criteria) this;
        }

        public Criteria andAuthzfedBetween(String value1, String value2) {
            addCriterion("authzFed between", value1, value2, "authzfed");
            return (Criteria) this;
        }

        public Criteria andAuthzfedNotBetween(String value1, String value2) {
            addCriterion("authzFed not between", value1, value2, "authzfed");
            return (Criteria) this;
        }

        public Criteria andAuthzbreIsNull() {
            addCriterion("authzBre is null");
            return (Criteria) this;
        }

        public Criteria andAuthzbreIsNotNull() {
            addCriterion("authzBre is not null");
            return (Criteria) this;
        }

        public Criteria andAuthzbreEqualTo(String value) {
            addCriterion("authzBre =", value, "authzbre");
            return (Criteria) this;
        }

        public Criteria andAuthzbreNotEqualTo(String value) {
            addCriterion("authzBre <>", value, "authzbre");
            return (Criteria) this;
        }

        public Criteria andAuthzbreGreaterThan(String value) {
            addCriterion("authzBre >", value, "authzbre");
            return (Criteria) this;
        }

        public Criteria andAuthzbreGreaterThanOrEqualTo(String value) {
            addCriterion("authzBre >=", value, "authzbre");
            return (Criteria) this;
        }

        public Criteria andAuthzbreLessThan(String value) {
            addCriterion("authzBre <", value, "authzbre");
            return (Criteria) this;
        }

        public Criteria andAuthzbreLessThanOrEqualTo(String value) {
            addCriterion("authzBre <=", value, "authzbre");
            return (Criteria) this;
        }

        public Criteria andAuthzbreLike(String value) {
            addCriterion("authzBre like", value, "authzbre");
            return (Criteria) this;
        }

        public Criteria andAuthzbreNotLike(String value) {
            addCriterion("authzBre not like", value, "authzbre");
            return (Criteria) this;
        }

        public Criteria andAuthzbreIn(List<String> values) {
            addCriterion("authzBre in", values, "authzbre");
            return (Criteria) this;
        }

        public Criteria andAuthzbreNotIn(List<String> values) {
            addCriterion("authzBre not in", values, "authzbre");
            return (Criteria) this;
        }

        public Criteria andAuthzbreBetween(String value1, String value2) {
            addCriterion("authzBre between", value1, value2, "authzbre");
            return (Criteria) this;
        }

        public Criteria andAuthzbreNotBetween(String value1, String value2) {
            addCriterion("authzBre not between", value1, value2, "authzbre");
            return (Criteria) this;
        }

        public Criteria andAuthzheaIsNull() {
            addCriterion("authzHea is null");
            return (Criteria) this;
        }

        public Criteria andAuthzheaIsNotNull() {
            addCriterion("authzHea is not null");
            return (Criteria) this;
        }

        public Criteria andAuthzheaEqualTo(String value) {
            addCriterion("authzHea =", value, "authzhea");
            return (Criteria) this;
        }

        public Criteria andAuthzheaNotEqualTo(String value) {
            addCriterion("authzHea <>", value, "authzhea");
            return (Criteria) this;
        }

        public Criteria andAuthzheaGreaterThan(String value) {
            addCriterion("authzHea >", value, "authzhea");
            return (Criteria) this;
        }

        public Criteria andAuthzheaGreaterThanOrEqualTo(String value) {
            addCriterion("authzHea >=", value, "authzhea");
            return (Criteria) this;
        }

        public Criteria andAuthzheaLessThan(String value) {
            addCriterion("authzHea <", value, "authzhea");
            return (Criteria) this;
        }

        public Criteria andAuthzheaLessThanOrEqualTo(String value) {
            addCriterion("authzHea <=", value, "authzhea");
            return (Criteria) this;
        }

        public Criteria andAuthzheaLike(String value) {
            addCriterion("authzHea like", value, "authzhea");
            return (Criteria) this;
        }

        public Criteria andAuthzheaNotLike(String value) {
            addCriterion("authzHea not like", value, "authzhea");
            return (Criteria) this;
        }

        public Criteria andAuthzheaIn(List<String> values) {
            addCriterion("authzHea in", values, "authzhea");
            return (Criteria) this;
        }

        public Criteria andAuthzheaNotIn(List<String> values) {
            addCriterion("authzHea not in", values, "authzhea");
            return (Criteria) this;
        }

        public Criteria andAuthzheaBetween(String value1, String value2) {
            addCriterion("authzHea between", value1, value2, "authzhea");
            return (Criteria) this;
        }

        public Criteria andAuthzheaNotBetween(String value1, String value2) {
            addCriterion("authzHea not between", value1, value2, "authzhea");
            return (Criteria) this;
        }

        public Criteria andAuthzauthzmanageIsNull() {
            addCriterion("authzAuthzManage is null");
            return (Criteria) this;
        }

        public Criteria andAuthzauthzmanageIsNotNull() {
            addCriterion("authzAuthzManage is not null");
            return (Criteria) this;
        }

        public Criteria andAuthzauthzmanageEqualTo(String value) {
            addCriterion("authzAuthzManage =", value, "authzauthzmanage");
            return (Criteria) this;
        }

        public Criteria andAuthzauthzmanageNotEqualTo(String value) {
            addCriterion("authzAuthzManage <>", value, "authzauthzmanage");
            return (Criteria) this;
        }

        public Criteria andAuthzauthzmanageGreaterThan(String value) {
            addCriterion("authzAuthzManage >", value, "authzauthzmanage");
            return (Criteria) this;
        }

        public Criteria andAuthzauthzmanageGreaterThanOrEqualTo(String value) {
            addCriterion("authzAuthzManage >=", value, "authzauthzmanage");
            return (Criteria) this;
        }

        public Criteria andAuthzauthzmanageLessThan(String value) {
            addCriterion("authzAuthzManage <", value, "authzauthzmanage");
            return (Criteria) this;
        }

        public Criteria andAuthzauthzmanageLessThanOrEqualTo(String value) {
            addCriterion("authzAuthzManage <=", value, "authzauthzmanage");
            return (Criteria) this;
        }

        public Criteria andAuthzauthzmanageLike(String value) {
            addCriterion("authzAuthzManage like", value, "authzauthzmanage");
            return (Criteria) this;
        }

        public Criteria andAuthzauthzmanageNotLike(String value) {
            addCriterion("authzAuthzManage not like", value, "authzauthzmanage");
            return (Criteria) this;
        }

        public Criteria andAuthzauthzmanageIn(List<String> values) {
            addCriterion("authzAuthzManage in", values, "authzauthzmanage");
            return (Criteria) this;
        }

        public Criteria andAuthzauthzmanageNotIn(List<String> values) {
            addCriterion("authzAuthzManage not in", values, "authzauthzmanage");
            return (Criteria) this;
        }

        public Criteria andAuthzauthzmanageBetween(String value1, String value2) {
            addCriterion("authzAuthzManage between", value1, value2, "authzauthzmanage");
            return (Criteria) this;
        }

        public Criteria andAuthzauthzmanageNotBetween(String value1, String value2) {
            addCriterion("authzAuthzManage not between", value1, value2, "authzauthzmanage");
            return (Criteria) this;
        }

        public Criteria andAuthzadvertsmanageIsNull() {
            addCriterion("authzAdvertsManage is null");
            return (Criteria) this;
        }

        public Criteria andAuthzadvertsmanageIsNotNull() {
            addCriterion("authzAdvertsManage is not null");
            return (Criteria) this;
        }

        public Criteria andAuthzadvertsmanageEqualTo(String value) {
            addCriterion("authzAdvertsManage =", value, "authzadvertsmanage");
            return (Criteria) this;
        }

        public Criteria andAuthzadvertsmanageNotEqualTo(String value) {
            addCriterion("authzAdvertsManage <>", value, "authzadvertsmanage");
            return (Criteria) this;
        }

        public Criteria andAuthzadvertsmanageGreaterThan(String value) {
            addCriterion("authzAdvertsManage >", value, "authzadvertsmanage");
            return (Criteria) this;
        }

        public Criteria andAuthzadvertsmanageGreaterThanOrEqualTo(String value) {
            addCriterion("authzAdvertsManage >=", value, "authzadvertsmanage");
            return (Criteria) this;
        }

        public Criteria andAuthzadvertsmanageLessThan(String value) {
            addCriterion("authzAdvertsManage <", value, "authzadvertsmanage");
            return (Criteria) this;
        }

        public Criteria andAuthzadvertsmanageLessThanOrEqualTo(String value) {
            addCriterion("authzAdvertsManage <=", value, "authzadvertsmanage");
            return (Criteria) this;
        }

        public Criteria andAuthzadvertsmanageLike(String value) {
            addCriterion("authzAdvertsManage like", value, "authzadvertsmanage");
            return (Criteria) this;
        }

        public Criteria andAuthzadvertsmanageNotLike(String value) {
            addCriterion("authzAdvertsManage not like", value, "authzadvertsmanage");
            return (Criteria) this;
        }

        public Criteria andAuthzadvertsmanageIn(List<String> values) {
            addCriterion("authzAdvertsManage in", values, "authzadvertsmanage");
            return (Criteria) this;
        }

        public Criteria andAuthzadvertsmanageNotIn(List<String> values) {
            addCriterion("authzAdvertsManage not in", values, "authzadvertsmanage");
            return (Criteria) this;
        }

        public Criteria andAuthzadvertsmanageBetween(String value1, String value2) {
            addCriterion("authzAdvertsManage between", value1, value2, "authzadvertsmanage");
            return (Criteria) this;
        }

        public Criteria andAuthzadvertsmanageNotBetween(String value1, String value2) {
            addCriterion("authzAdvertsManage not between", value1, value2, "authzadvertsmanage");
            return (Criteria) this;
        }

        public Criteria andBuyarcIsNull() {
            addCriterion("buyArc is null");
            return (Criteria) this;
        }

        public Criteria andBuyarcIsNotNull() {
            addCriterion("buyArc is not null");
            return (Criteria) this;
        }

        public Criteria andBuyarcEqualTo(String value) {
            addCriterion("buyArc =", value, "buyarc");
            return (Criteria) this;
        }

        public Criteria andBuyarcNotEqualTo(String value) {
            addCriterion("buyArc <>", value, "buyarc");
            return (Criteria) this;
        }

        public Criteria andBuyarcGreaterThan(String value) {
            addCriterion("buyArc >", value, "buyarc");
            return (Criteria) this;
        }

        public Criteria andBuyarcGreaterThanOrEqualTo(String value) {
            addCriterion("buyArc >=", value, "buyarc");
            return (Criteria) this;
        }

        public Criteria andBuyarcLessThan(String value) {
            addCriterion("buyArc <", value, "buyarc");
            return (Criteria) this;
        }

        public Criteria andBuyarcLessThanOrEqualTo(String value) {
            addCriterion("buyArc <=", value, "buyarc");
            return (Criteria) this;
        }

        public Criteria andBuyarcLike(String value) {
            addCriterion("buyArc like", value, "buyarc");
            return (Criteria) this;
        }

        public Criteria andBuyarcNotLike(String value) {
            addCriterion("buyArc not like", value, "buyarc");
            return (Criteria) this;
        }

        public Criteria andBuyarcIn(List<String> values) {
            addCriterion("buyArc in", values, "buyarc");
            return (Criteria) this;
        }

        public Criteria andBuyarcNotIn(List<String> values) {
            addCriterion("buyArc not in", values, "buyarc");
            return (Criteria) this;
        }

        public Criteria andBuyarcBetween(String value1, String value2) {
            addCriterion("buyArc between", value1, value2, "buyarc");
            return (Criteria) this;
        }

        public Criteria andBuyarcNotBetween(String value1, String value2) {
            addCriterion("buyArc not between", value1, value2, "buyarc");
            return (Criteria) this;
        }

        public Criteria andBelarcIsNull() {
            addCriterion("belArc is null");
            return (Criteria) this;
        }

        public Criteria andBelarcIsNotNull() {
            addCriterion("belArc is not null");
            return (Criteria) this;
        }

        public Criteria andBelarcEqualTo(String value) {
            addCriterion("belArc =", value, "belarc");
            return (Criteria) this;
        }

        public Criteria andBelarcNotEqualTo(String value) {
            addCriterion("belArc <>", value, "belarc");
            return (Criteria) this;
        }

        public Criteria andBelarcGreaterThan(String value) {
            addCriterion("belArc >", value, "belarc");
            return (Criteria) this;
        }

        public Criteria andBelarcGreaterThanOrEqualTo(String value) {
            addCriterion("belArc >=", value, "belarc");
            return (Criteria) this;
        }

        public Criteria andBelarcLessThan(String value) {
            addCriterion("belArc <", value, "belarc");
            return (Criteria) this;
        }

        public Criteria andBelarcLessThanOrEqualTo(String value) {
            addCriterion("belArc <=", value, "belarc");
            return (Criteria) this;
        }

        public Criteria andBelarcLike(String value) {
            addCriterion("belArc like", value, "belarc");
            return (Criteria) this;
        }

        public Criteria andBelarcNotLike(String value) {
            addCriterion("belArc not like", value, "belarc");
            return (Criteria) this;
        }

        public Criteria andBelarcIn(List<String> values) {
            addCriterion("belArc in", values, "belarc");
            return (Criteria) this;
        }

        public Criteria andBelarcNotIn(List<String> values) {
            addCriterion("belArc not in", values, "belarc");
            return (Criteria) this;
        }

        public Criteria andBelarcBetween(String value1, String value2) {
            addCriterion("belArc between", value1, value2, "belarc");
            return (Criteria) this;
        }

        public Criteria andBelarcNotBetween(String value1, String value2) {
            addCriterion("belArc not between", value1, value2, "belarc");
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