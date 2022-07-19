package com.crud.bean;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class AnimalArchiveExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public AnimalArchiveExample() {
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

        public Criteria andEartagnumberIsNull() {
            addCriterion("eartagNumber is null");
            return (Criteria) this;
        }

        public Criteria andEartagnumberIsNotNull() {
            addCriterion("eartagNumber is not null");
            return (Criteria) this;
        }

        public Criteria andEartagnumberEqualTo(Integer value) {
            addCriterion("eartagNumber =", value, "eartagnumber");
            return (Criteria) this;
        }

        public Criteria andEartagnumberNotEqualTo(Integer value) {
            addCriterion("eartagNumber <>", value, "eartagnumber");
            return (Criteria) this;
        }

        public Criteria andEartagnumberGreaterThan(Integer value) {
            addCriterion("eartagNumber >", value, "eartagnumber");
            return (Criteria) this;
        }

        public Criteria andEartagnumberGreaterThanOrEqualTo(Integer value) {
            addCriterion("eartagNumber >=", value, "eartagnumber");
            return (Criteria) this;
        }

        public Criteria andEartagnumberLessThan(Integer value) {
            addCriterion("eartagNumber <", value, "eartagnumber");
            return (Criteria) this;
        }

        public Criteria andEartagnumberLessThanOrEqualTo(Integer value) {
            addCriterion("eartagNumber <=", value, "eartagnumber");
            return (Criteria) this;
        }

        public Criteria andEartagnumberIn(List<Integer> values) {
            addCriterion("eartagNumber in", values, "eartagnumber");
            return (Criteria) this;
        }

        public Criteria andEartagnumberNotIn(List<Integer> values) {
            addCriterion("eartagNumber not in", values, "eartagnumber");
            return (Criteria) this;
        }

        public Criteria andEartagnumberBetween(Integer value1, Integer value2) {
            addCriterion("eartagNumber between", value1, value2, "eartagnumber");
            return (Criteria) this;
        }

        public Criteria andEartagnumberNotBetween(Integer value1, Integer value2) {
            addCriterion("eartagNumber not between", value1, value2, "eartagnumber");
            return (Criteria) this;
        }

        public Criteria andInitialdateIsNull() {
            addCriterion("initialDate is null");
            return (Criteria) this;
        }

        public Criteria andInitialdateIsNotNull() {
            addCriterion("initialDate is not null");
            return (Criteria) this;
        }

        public Criteria andInitialdateEqualTo(Date value) {
            addCriterion("initialDate =", value, "initialdate");
            return (Criteria) this;
        }

        public Criteria andInitialdateNotEqualTo(Date value) {
            addCriterion("initialDate <>", value, "initialdate");
            return (Criteria) this;
        }

        public Criteria andInitialdateGreaterThan(Date value) {
            addCriterion("initialDate >", value, "initialdate");
            return (Criteria) this;
        }

        public Criteria andInitialdateGreaterThanOrEqualTo(Date value) {
            addCriterion("initialDate >=", value, "initialdate");
            return (Criteria) this;
        }

        public Criteria andInitialdateLessThan(Date value) {
            addCriterion("initialDate <", value, "initialdate");
            return (Criteria) this;
        }

        public Criteria andInitialdateLessThanOrEqualTo(Date value) {
            addCriterion("initialDate <=", value, "initialdate");
            return (Criteria) this;
        }

        public Criteria andInitialdateIn(List<Date> values) {
            addCriterion("initialDate in", values, "initialdate");
            return (Criteria) this;
        }

        public Criteria andInitialdateNotIn(List<Date> values) {
            addCriterion("initialDate not in", values, "initialdate");
            return (Criteria) this;
        }

        public Criteria andInitialdateBetween(Date value1, Date value2) {
            addCriterion("initialDate between", value1, value2, "initialdate");
            return (Criteria) this;
        }

        public Criteria andInitialdateNotBetween(Date value1, Date value2) {
            addCriterion("initialDate not between", value1, value2, "initialdate");
            return (Criteria) this;
        }

        public Criteria andInitialpeopleIsNull() {
            addCriterion("initialPeople is null");
            return (Criteria) this;
        }

        public Criteria andInitialpeopleIsNotNull() {
            addCriterion("initialPeople is not null");
            return (Criteria) this;
        }

        public Criteria andInitialpeopleEqualTo(String value) {
            addCriterion("initialPeople =", value, "initialpeople");
            return (Criteria) this;
        }

        public Criteria andInitialpeopleNotEqualTo(String value) {
            addCriterion("initialPeople <>", value, "initialpeople");
            return (Criteria) this;
        }

        public Criteria andInitialpeopleGreaterThan(String value) {
            addCriterion("initialPeople >", value, "initialpeople");
            return (Criteria) this;
        }

        public Criteria andInitialpeopleGreaterThanOrEqualTo(String value) {
            addCriterion("initialPeople >=", value, "initialpeople");
            return (Criteria) this;
        }

        public Criteria andInitialpeopleLessThan(String value) {
            addCriterion("initialPeople <", value, "initialpeople");
            return (Criteria) this;
        }

        public Criteria andInitialpeopleLessThanOrEqualTo(String value) {
            addCriterion("initialPeople <=", value, "initialpeople");
            return (Criteria) this;
        }

        public Criteria andInitialpeopleLike(String value) {
            addCriterion("initialPeople like", value, "initialpeople");
            return (Criteria) this;
        }

        public Criteria andInitialpeopleNotLike(String value) {
            addCriterion("initialPeople not like", value, "initialpeople");
            return (Criteria) this;
        }

        public Criteria andInitialpeopleIn(List<String> values) {
            addCriterion("initialPeople in", values, "initialpeople");
            return (Criteria) this;
        }

        public Criteria andInitialpeopleNotIn(List<String> values) {
            addCriterion("initialPeople not in", values, "initialpeople");
            return (Criteria) this;
        }

        public Criteria andInitialpeopleBetween(String value1, String value2) {
            addCriterion("initialPeople between", value1, value2, "initialpeople");
            return (Criteria) this;
        }

        public Criteria andInitialpeopleNotBetween(String value1, String value2) {
            addCriterion("initialPeople not between", value1, value2, "initialpeople");
            return (Criteria) this;
        }

        public Criteria andResponsiblepeopleIsNull() {
            addCriterion("responsiblePeople is null");
            return (Criteria) this;
        }

        public Criteria andResponsiblepeopleIsNotNull() {
            addCriterion("responsiblePeople is not null");
            return (Criteria) this;
        }

        public Criteria andResponsiblepeopleEqualTo(String value) {
            addCriterion("responsiblePeople =", value, "responsiblepeople");
            return (Criteria) this;
        }

        public Criteria andResponsiblepeopleNotEqualTo(String value) {
            addCriterion("responsiblePeople <>", value, "responsiblepeople");
            return (Criteria) this;
        }

        public Criteria andResponsiblepeopleGreaterThan(String value) {
            addCriterion("responsiblePeople >", value, "responsiblepeople");
            return (Criteria) this;
        }

        public Criteria andResponsiblepeopleGreaterThanOrEqualTo(String value) {
            addCriterion("responsiblePeople >=", value, "responsiblepeople");
            return (Criteria) this;
        }

        public Criteria andResponsiblepeopleLessThan(String value) {
            addCriterion("responsiblePeople <", value, "responsiblepeople");
            return (Criteria) this;
        }

        public Criteria andResponsiblepeopleLessThanOrEqualTo(String value) {
            addCriterion("responsiblePeople <=", value, "responsiblepeople");
            return (Criteria) this;
        }

        public Criteria andResponsiblepeopleLike(String value) {
            addCriterion("responsiblePeople like", value, "responsiblepeople");
            return (Criteria) this;
        }

        public Criteria andResponsiblepeopleNotLike(String value) {
            addCriterion("responsiblePeople not like", value, "responsiblepeople");
            return (Criteria) this;
        }

        public Criteria andResponsiblepeopleIn(List<String> values) {
            addCriterion("responsiblePeople in", values, "responsiblepeople");
            return (Criteria) this;
        }

        public Criteria andResponsiblepeopleNotIn(List<String> values) {
            addCriterion("responsiblePeople not in", values, "responsiblepeople");
            return (Criteria) this;
        }

        public Criteria andResponsiblepeopleBetween(String value1, String value2) {
            addCriterion("responsiblePeople between", value1, value2, "responsiblepeople");
            return (Criteria) this;
        }

        public Criteria andResponsiblepeopleNotBetween(String value1, String value2) {
            addCriterion("responsiblePeople not between", value1, value2, "responsiblepeople");
            return (Criteria) this;
        }

        public Criteria andBelongpeopleIsNull() {
            addCriterion("belongPeople is null");
            return (Criteria) this;
        }

        public Criteria andBelongpeopleIsNotNull() {
            addCriterion("belongPeople is not null");
            return (Criteria) this;
        }

        public Criteria andBelongpeopleEqualTo(String value) {
            addCriterion("belongPeople =", value, "belongpeople");
            return (Criteria) this;
        }

        public Criteria andBelongpeopleNotEqualTo(String value) {
            addCriterion("belongPeople <>", value, "belongpeople");
            return (Criteria) this;
        }

        public Criteria andBelongpeopleGreaterThan(String value) {
            addCriterion("belongPeople >", value, "belongpeople");
            return (Criteria) this;
        }

        public Criteria andBelongpeopleGreaterThanOrEqualTo(String value) {
            addCriterion("belongPeople >=", value, "belongpeople");
            return (Criteria) this;
        }

        public Criteria andBelongpeopleLessThan(String value) {
            addCriterion("belongPeople <", value, "belongpeople");
            return (Criteria) this;
        }

        public Criteria andBelongpeopleLessThanOrEqualTo(String value) {
            addCriterion("belongPeople <=", value, "belongpeople");
            return (Criteria) this;
        }

        public Criteria andBelongpeopleLike(String value) {
            addCriterion("belongPeople like", value, "belongpeople");
            return (Criteria) this;
        }

        public Criteria andBelongpeopleNotLike(String value) {
            addCriterion("belongPeople not like", value, "belongpeople");
            return (Criteria) this;
        }

        public Criteria andBelongpeopleIn(List<String> values) {
            addCriterion("belongPeople in", values, "belongpeople");
            return (Criteria) this;
        }

        public Criteria andBelongpeopleNotIn(List<String> values) {
            addCriterion("belongPeople not in", values, "belongpeople");
            return (Criteria) this;
        }

        public Criteria andBelongpeopleBetween(String value1, String value2) {
            addCriterion("belongPeople between", value1, value2, "belongpeople");
            return (Criteria) this;
        }

        public Criteria andBelongpeopleNotBetween(String value1, String value2) {
            addCriterion("belongPeople not between", value1, value2, "belongpeople");
            return (Criteria) this;
        }

        public Criteria andArchivedescriptionIsNull() {
            addCriterion("archiveDescription is null");
            return (Criteria) this;
        }

        public Criteria andArchivedescriptionIsNotNull() {
            addCriterion("archiveDescription is not null");
            return (Criteria) this;
        }

        public Criteria andArchivedescriptionEqualTo(String value) {
            addCriterion("archiveDescription =", value, "archivedescription");
            return (Criteria) this;
        }

        public Criteria andArchivedescriptionNotEqualTo(String value) {
            addCriterion("archiveDescription <>", value, "archivedescription");
            return (Criteria) this;
        }

        public Criteria andArchivedescriptionGreaterThan(String value) {
            addCriterion("archiveDescription >", value, "archivedescription");
            return (Criteria) this;
        }

        public Criteria andArchivedescriptionGreaterThanOrEqualTo(String value) {
            addCriterion("archiveDescription >=", value, "archivedescription");
            return (Criteria) this;
        }

        public Criteria andArchivedescriptionLessThan(String value) {
            addCriterion("archiveDescription <", value, "archivedescription");
            return (Criteria) this;
        }

        public Criteria andArchivedescriptionLessThanOrEqualTo(String value) {
            addCriterion("archiveDescription <=", value, "archivedescription");
            return (Criteria) this;
        }

        public Criteria andArchivedescriptionLike(String value) {
            addCriterion("archiveDescription like", value, "archivedescription");
            return (Criteria) this;
        }

        public Criteria andArchivedescriptionNotLike(String value) {
            addCriterion("archiveDescription not like", value, "archivedescription");
            return (Criteria) this;
        }

        public Criteria andArchivedescriptionIn(List<String> values) {
            addCriterion("archiveDescription in", values, "archivedescription");
            return (Criteria) this;
        }

        public Criteria andArchivedescriptionNotIn(List<String> values) {
            addCriterion("archiveDescription not in", values, "archivedescription");
            return (Criteria) this;
        }

        public Criteria andArchivedescriptionBetween(String value1, String value2) {
            addCriterion("archiveDescription between", value1, value2, "archivedescription");
            return (Criteria) this;
        }

        public Criteria andArchivedescriptionNotBetween(String value1, String value2) {
            addCriterion("archiveDescription not between", value1, value2, "archivedescription");
            return (Criteria) this;
        }

        public Criteria andArchivekeyIsNull() {
            addCriterion("archiveKey is null");
            return (Criteria) this;
        }

        public Criteria andArchivekeyIsNotNull() {
            addCriterion("archiveKey is not null");
            return (Criteria) this;
        }

        public Criteria andArchivekeyEqualTo(String value) {
            addCriterion("archiveKey =", value, "archivekey");
            return (Criteria) this;
        }

        public Criteria andArchivekeyNotEqualTo(String value) {
            addCriterion("archiveKey <>", value, "archivekey");
            return (Criteria) this;
        }

        public Criteria andArchivekeyGreaterThan(String value) {
            addCriterion("archiveKey >", value, "archivekey");
            return (Criteria) this;
        }

        public Criteria andArchivekeyGreaterThanOrEqualTo(String value) {
            addCriterion("archiveKey >=", value, "archivekey");
            return (Criteria) this;
        }

        public Criteria andArchivekeyLessThan(String value) {
            addCriterion("archiveKey <", value, "archivekey");
            return (Criteria) this;
        }

        public Criteria andArchivekeyLessThanOrEqualTo(String value) {
            addCriterion("archiveKey <=", value, "archivekey");
            return (Criteria) this;
        }

        public Criteria andArchivekeyLike(String value) {
            addCriterion("archiveKey like", value, "archivekey");
            return (Criteria) this;
        }

        public Criteria andArchivekeyNotLike(String value) {
            addCriterion("archiveKey not like", value, "archivekey");
            return (Criteria) this;
        }

        public Criteria andArchivekeyIn(List<String> values) {
            addCriterion("archiveKey in", values, "archivekey");
            return (Criteria) this;
        }

        public Criteria andArchivekeyNotIn(List<String> values) {
            addCriterion("archiveKey not in", values, "archivekey");
            return (Criteria) this;
        }

        public Criteria andArchivekeyBetween(String value1, String value2) {
            addCriterion("archiveKey between", value1, value2, "archivekey");
            return (Criteria) this;
        }

        public Criteria andArchivekeyNotBetween(String value1, String value2) {
            addCriterion("archiveKey not between", value1, value2, "archivekey");
            return (Criteria) this;
        }

        public Criteria andReleasestatusIsNull() {
            addCriterion("releaseStatus is null");
            return (Criteria) this;
        }

        public Criteria andReleasestatusIsNotNull() {
            addCriterion("releaseStatus is not null");
            return (Criteria) this;
        }

        public Criteria andReleasestatusEqualTo(String value) {
            addCriterion("releaseStatus =", value, "releasestatus");
            return (Criteria) this;
        }

        public Criteria andReleasestatusNotEqualTo(String value) {
            addCriterion("releaseStatus <>", value, "releasestatus");
            return (Criteria) this;
        }

        public Criteria andReleasestatusGreaterThan(String value) {
            addCriterion("releaseStatus >", value, "releasestatus");
            return (Criteria) this;
        }

        public Criteria andReleasestatusGreaterThanOrEqualTo(String value) {
            addCriterion("releaseStatus >=", value, "releasestatus");
            return (Criteria) this;
        }

        public Criteria andReleasestatusLessThan(String value) {
            addCriterion("releaseStatus <", value, "releasestatus");
            return (Criteria) this;
        }

        public Criteria andReleasestatusLessThanOrEqualTo(String value) {
            addCriterion("releaseStatus <=", value, "releasestatus");
            return (Criteria) this;
        }

        public Criteria andReleasestatusLike(String value) {
            addCriterion("releaseStatus like", value, "releasestatus");
            return (Criteria) this;
        }

        public Criteria andReleasestatusNotLike(String value) {
            addCriterion("releaseStatus not like", value, "releasestatus");
            return (Criteria) this;
        }

        public Criteria andReleasestatusIn(List<String> values) {
            addCriterion("releaseStatus in", values, "releasestatus");
            return (Criteria) this;
        }

        public Criteria andReleasestatusNotIn(List<String> values) {
            addCriterion("releaseStatus not in", values, "releasestatus");
            return (Criteria) this;
        }

        public Criteria andReleasestatusBetween(String value1, String value2) {
            addCriterion("releaseStatus between", value1, value2, "releasestatus");
            return (Criteria) this;
        }

        public Criteria andReleasestatusNotBetween(String value1, String value2) {
            addCriterion("releaseStatus not between", value1, value2, "releasestatus");
            return (Criteria) this;
        }

        public Criteria andReleasedateIsNull() {
            addCriterion("releaseDate is null");
            return (Criteria) this;
        }

        public Criteria andReleasedateIsNotNull() {
            addCriterion("releaseDate is not null");
            return (Criteria) this;
        }

        public Criteria andReleasedateEqualTo(Date value) {
            addCriterion("releaseDate =", value, "releasedate");
            return (Criteria) this;
        }

        public Criteria andReleasedateNotEqualTo(Date value) {
            addCriterion("releaseDate <>", value, "releasedate");
            return (Criteria) this;
        }

        public Criteria andReleasedateGreaterThan(Date value) {
            addCriterion("releaseDate >", value, "releasedate");
            return (Criteria) this;
        }

        public Criteria andReleasedateGreaterThanOrEqualTo(Date value) {
            addCriterion("releaseDate >=", value, "releasedate");
            return (Criteria) this;
        }

        public Criteria andReleasedateLessThan(Date value) {
            addCriterion("releaseDate <", value, "releasedate");
            return (Criteria) this;
        }

        public Criteria andReleasedateLessThanOrEqualTo(Date value) {
            addCriterion("releaseDate <=", value, "releasedate");
            return (Criteria) this;
        }

        public Criteria andReleasedateIn(List<Date> values) {
            addCriterion("releaseDate in", values, "releasedate");
            return (Criteria) this;
        }

        public Criteria andReleasedateNotIn(List<Date> values) {
            addCriterion("releaseDate not in", values, "releasedate");
            return (Criteria) this;
        }

        public Criteria andReleasedateBetween(Date value1, Date value2) {
            addCriterion("releaseDate between", value1, value2, "releasedate");
            return (Criteria) this;
        }

        public Criteria andReleasedateNotBetween(Date value1, Date value2) {
            addCriterion("releaseDate not between", value1, value2, "releasedate");
            return (Criteria) this;
        }

        public Criteria andPriceIsNull() {
            addCriterion("price is null");
            return (Criteria) this;
        }

        public Criteria andPriceIsNotNull() {
            addCriterion("price is not null");
            return (Criteria) this;
        }

        public Criteria andPriceEqualTo(BigDecimal value) {
            addCriterion("price =", value, "price");
            return (Criteria) this;
        }

        public Criteria andPriceNotEqualTo(BigDecimal value) {
            addCriterion("price <>", value, "price");
            return (Criteria) this;
        }

        public Criteria andPriceGreaterThan(BigDecimal value) {
            addCriterion("price >", value, "price");
            return (Criteria) this;
        }

        public Criteria andPriceGreaterThanOrEqualTo(BigDecimal value) {
            addCriterion("price >=", value, "price");
            return (Criteria) this;
        }

        public Criteria andPriceLessThan(BigDecimal value) {
            addCriterion("price <", value, "price");
            return (Criteria) this;
        }

        public Criteria andPriceLessThanOrEqualTo(BigDecimal value) {
            addCriterion("price <=", value, "price");
            return (Criteria) this;
        }

        public Criteria andPriceIn(List<BigDecimal> values) {
            addCriterion("price in", values, "price");
            return (Criteria) this;
        }

        public Criteria andPriceNotIn(List<BigDecimal> values) {
            addCriterion("price not in", values, "price");
            return (Criteria) this;
        }

        public Criteria andPriceBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("price between", value1, value2, "price");
            return (Criteria) this;
        }

        public Criteria andPriceNotBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("price not between", value1, value2, "price");
            return (Criteria) this;
        }

        public Criteria andCanapplyauthzIsNull() {
            addCriterion("CanApplyAuthz is null");
            return (Criteria) this;
        }

        public Criteria andCanapplyauthzIsNotNull() {
            addCriterion("CanApplyAuthz is not null");
            return (Criteria) this;
        }

        public Criteria andCanapplyauthzEqualTo(String value) {
            addCriterion("CanApplyAuthz =", value, "canapplyauthz");
            return (Criteria) this;
        }

        public Criteria andCanapplyauthzNotEqualTo(String value) {
            addCriterion("CanApplyAuthz <>", value, "canapplyauthz");
            return (Criteria) this;
        }

        public Criteria andCanapplyauthzGreaterThan(String value) {
            addCriterion("CanApplyAuthz >", value, "canapplyauthz");
            return (Criteria) this;
        }

        public Criteria andCanapplyauthzGreaterThanOrEqualTo(String value) {
            addCriterion("CanApplyAuthz >=", value, "canapplyauthz");
            return (Criteria) this;
        }

        public Criteria andCanapplyauthzLessThan(String value) {
            addCriterion("CanApplyAuthz <", value, "canapplyauthz");
            return (Criteria) this;
        }

        public Criteria andCanapplyauthzLessThanOrEqualTo(String value) {
            addCriterion("CanApplyAuthz <=", value, "canapplyauthz");
            return (Criteria) this;
        }

        public Criteria andCanapplyauthzLike(String value) {
            addCriterion("CanApplyAuthz like", value, "canapplyauthz");
            return (Criteria) this;
        }

        public Criteria andCanapplyauthzNotLike(String value) {
            addCriterion("CanApplyAuthz not like", value, "canapplyauthz");
            return (Criteria) this;
        }

        public Criteria andCanapplyauthzIn(List<String> values) {
            addCriterion("CanApplyAuthz in", values, "canapplyauthz");
            return (Criteria) this;
        }

        public Criteria andCanapplyauthzNotIn(List<String> values) {
            addCriterion("CanApplyAuthz not in", values, "canapplyauthz");
            return (Criteria) this;
        }

        public Criteria andCanapplyauthzBetween(String value1, String value2) {
            addCriterion("CanApplyAuthz between", value1, value2, "canapplyauthz");
            return (Criteria) this;
        }

        public Criteria andCanapplyauthzNotBetween(String value1, String value2) {
            addCriterion("CanApplyAuthz not between", value1, value2, "canapplyauthz");
            return (Criteria) this;
        }

        public Criteria andAuthzstateIsNull() {
            addCriterion("AuthzState is null");
            return (Criteria) this;
        }

        public Criteria andAuthzstateIsNotNull() {
            addCriterion("AuthzState is not null");
            return (Criteria) this;
        }

        public Criteria andAuthzstateEqualTo(String value) {
            addCriterion("AuthzState =", value, "authzstate");
            return (Criteria) this;
        }

        public Criteria andAuthzstateNotEqualTo(String value) {
            addCriterion("AuthzState <>", value, "authzstate");
            return (Criteria) this;
        }

        public Criteria andAuthzstateGreaterThan(String value) {
            addCriterion("AuthzState >", value, "authzstate");
            return (Criteria) this;
        }

        public Criteria andAuthzstateGreaterThanOrEqualTo(String value) {
            addCriterion("AuthzState >=", value, "authzstate");
            return (Criteria) this;
        }

        public Criteria andAuthzstateLessThan(String value) {
            addCriterion("AuthzState <", value, "authzstate");
            return (Criteria) this;
        }

        public Criteria andAuthzstateLessThanOrEqualTo(String value) {
            addCriterion("AuthzState <=", value, "authzstate");
            return (Criteria) this;
        }

        public Criteria andAuthzstateLike(String value) {
            addCriterion("AuthzState like", value, "authzstate");
            return (Criteria) this;
        }

        public Criteria andAuthzstateNotLike(String value) {
            addCriterion("AuthzState not like", value, "authzstate");
            return (Criteria) this;
        }

        public Criteria andAuthzstateIn(List<String> values) {
            addCriterion("AuthzState in", values, "authzstate");
            return (Criteria) this;
        }

        public Criteria andAuthzstateNotIn(List<String> values) {
            addCriterion("AuthzState not in", values, "authzstate");
            return (Criteria) this;
        }

        public Criteria andAuthzstateBetween(String value1, String value2) {
            addCriterion("AuthzState between", value1, value2, "authzstate");
            return (Criteria) this;
        }

        public Criteria andAuthzstateNotBetween(String value1, String value2) {
            addCriterion("AuthzState not between", value1, value2, "authzstate");
            return (Criteria) this;
        }

        public Criteria andCanapplyadvertsIsNull() {
            addCriterion("CanApplyAdverts is null");
            return (Criteria) this;
        }

        public Criteria andCanapplyadvertsIsNotNull() {
            addCriterion("CanApplyAdverts is not null");
            return (Criteria) this;
        }

        public Criteria andCanapplyadvertsEqualTo(String value) {
            addCriterion("CanApplyAdverts =", value, "canapplyadverts");
            return (Criteria) this;
        }

        public Criteria andCanapplyadvertsNotEqualTo(String value) {
            addCriterion("CanApplyAdverts <>", value, "canapplyadverts");
            return (Criteria) this;
        }

        public Criteria andCanapplyadvertsGreaterThan(String value) {
            addCriterion("CanApplyAdverts >", value, "canapplyadverts");
            return (Criteria) this;
        }

        public Criteria andCanapplyadvertsGreaterThanOrEqualTo(String value) {
            addCriterion("CanApplyAdverts >=", value, "canapplyadverts");
            return (Criteria) this;
        }

        public Criteria andCanapplyadvertsLessThan(String value) {
            addCriterion("CanApplyAdverts <", value, "canapplyadverts");
            return (Criteria) this;
        }

        public Criteria andCanapplyadvertsLessThanOrEqualTo(String value) {
            addCriterion("CanApplyAdverts <=", value, "canapplyadverts");
            return (Criteria) this;
        }

        public Criteria andCanapplyadvertsLike(String value) {
            addCriterion("CanApplyAdverts like", value, "canapplyadverts");
            return (Criteria) this;
        }

        public Criteria andCanapplyadvertsNotLike(String value) {
            addCriterion("CanApplyAdverts not like", value, "canapplyadverts");
            return (Criteria) this;
        }

        public Criteria andCanapplyadvertsIn(List<String> values) {
            addCriterion("CanApplyAdverts in", values, "canapplyadverts");
            return (Criteria) this;
        }

        public Criteria andCanapplyadvertsNotIn(List<String> values) {
            addCriterion("CanApplyAdverts not in", values, "canapplyadverts");
            return (Criteria) this;
        }

        public Criteria andCanapplyadvertsBetween(String value1, String value2) {
            addCriterion("CanApplyAdverts between", value1, value2, "canapplyadverts");
            return (Criteria) this;
        }

        public Criteria andCanapplyadvertsNotBetween(String value1, String value2) {
            addCriterion("CanApplyAdverts not between", value1, value2, "canapplyadverts");
            return (Criteria) this;
        }

        public Criteria andAdvertsstateIsNull() {
            addCriterion("AdvertsState is null");
            return (Criteria) this;
        }

        public Criteria andAdvertsstateIsNotNull() {
            addCriterion("AdvertsState is not null");
            return (Criteria) this;
        }

        public Criteria andAdvertsstateEqualTo(String value) {
            addCriterion("AdvertsState =", value, "advertsstate");
            return (Criteria) this;
        }

        public Criteria andAdvertsstateNotEqualTo(String value) {
            addCriterion("AdvertsState <>", value, "advertsstate");
            return (Criteria) this;
        }

        public Criteria andAdvertsstateGreaterThan(String value) {
            addCriterion("AdvertsState >", value, "advertsstate");
            return (Criteria) this;
        }

        public Criteria andAdvertsstateGreaterThanOrEqualTo(String value) {
            addCriterion("AdvertsState >=", value, "advertsstate");
            return (Criteria) this;
        }

        public Criteria andAdvertsstateLessThan(String value) {
            addCriterion("AdvertsState <", value, "advertsstate");
            return (Criteria) this;
        }

        public Criteria andAdvertsstateLessThanOrEqualTo(String value) {
            addCriterion("AdvertsState <=", value, "advertsstate");
            return (Criteria) this;
        }

        public Criteria andAdvertsstateLike(String value) {
            addCriterion("AdvertsState like", value, "advertsstate");
            return (Criteria) this;
        }

        public Criteria andAdvertsstateNotLike(String value) {
            addCriterion("AdvertsState not like", value, "advertsstate");
            return (Criteria) this;
        }

        public Criteria andAdvertsstateIn(List<String> values) {
            addCriterion("AdvertsState in", values, "advertsstate");
            return (Criteria) this;
        }

        public Criteria andAdvertsstateNotIn(List<String> values) {
            addCriterion("AdvertsState not in", values, "advertsstate");
            return (Criteria) this;
        }

        public Criteria andAdvertsstateBetween(String value1, String value2) {
            addCriterion("AdvertsState between", value1, value2, "advertsstate");
            return (Criteria) this;
        }

        public Criteria andAdvertsstateNotBetween(String value1, String value2) {
            addCriterion("AdvertsState not between", value1, value2, "advertsstate");
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