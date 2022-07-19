package com.crud.bean;

public class ArchiveOperateLog {
    private Integer id;

    private String opcode;

    private String operator;

    private String operatordept;

    private String operatereason;

    private String operateremark;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getOpcode() {
        return opcode;
    }

    public void setOpcode(String opcode) {
        this.opcode = opcode == null ? null : opcode.trim();
    }

    public String getOperator() {
        return operator;
    }

    public void setOperator(String operator) {
        this.operator = operator == null ? null : operator.trim();
    }

    public String getOperatordept() {
        return operatordept;
    }

    public void setOperatordept(String operatordept) {
        this.operatordept = operatordept == null ? null : operatordept.trim();
    }

    public String getOperatereason() {
        return operatereason;
    }

    public void setOperatereason(String operatereason) {
        this.operatereason = operatereason == null ? null : operatereason.trim();
    }

    public String getOperateremark() {
        return operateremark;
    }

    public void setOperateremark(String operateremark) {
        this.operateremark = operateremark == null ? null : operateremark.trim();
    }
}