package com.crud.bean;

public class User {
    private String uid;

    private String pwd;

    private String name;

    private String tel;

    private String dept;

    private String addr;

    private String authzarc;

    private String authzbas;

    private String authzexp;

    private String authzfed;

    private String authzbre;

    private String authzhea;

    private String authzauthzmanage;

    private String authzadvertsmanage;

    private String buyarc;

    private String belarc;

    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid == null ? null : uid.trim();
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd == null ? null : pwd.trim();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel == null ? null : tel.trim();
    }

    public String getDept() {
        return dept;
    }

    public void setDept(String dept) {
        this.dept = dept == null ? null : dept.trim();
    }

    public String getAddr() {
        return addr;
    }

    public void setAddr(String addr) {
        this.addr = addr == null ? null : addr.trim();
    }

    public String getAuthzarc() {
        return authzarc;
    }

    public void setAuthzarc(String authzarc) {
        this.authzarc = authzarc == null ? null : authzarc.trim();
    }

    public String getAuthzbas() {
        return authzbas;
    }

    public void setAuthzbas(String authzbas) {
        this.authzbas = authzbas == null ? null : authzbas.trim();
    }

    public String getAuthzexp() {
        return authzexp;
    }

    public void setAuthzexp(String authzexp) {
        this.authzexp = authzexp == null ? null : authzexp.trim();
    }

    public String getAuthzfed() {
        return authzfed;
    }

    public void setAuthzfed(String authzfed) {
        this.authzfed = authzfed == null ? null : authzfed.trim();
    }

    public String getAuthzbre() {
        return authzbre;
    }

    public void setAuthzbre(String authzbre) {
        this.authzbre = authzbre == null ? null : authzbre.trim();
    }

    public String getAuthzhea() {
        return authzhea;
    }

    public void setAuthzhea(String authzhea) {
        this.authzhea = authzhea == null ? null : authzhea.trim();
    }

    public String getAuthzauthzmanage() {
        return authzauthzmanage;
    }

    public void setAuthzauthzmanage(String authzauthzmanage) {
        this.authzauthzmanage = authzauthzmanage == null ? null : authzauthzmanage.trim();
    }

    public String getAuthzadvertsmanage() {
        return authzadvertsmanage;
    }

    public void setAuthzadvertsmanage(String authzadvertsmanage) {
        this.authzadvertsmanage = authzadvertsmanage == null ? null : authzadvertsmanage.trim();
    }

    public String getBuyarc() {
        return buyarc;
    }

    public void setBuyarc(String buyarc) {
        this.buyarc = buyarc == null ? null : buyarc.trim();
    }

    public String getBelarc() {
        return belarc;
    }

    public void setBelarc(String belarc) {
        this.belarc = belarc == null ? null : belarc.trim();
    }
}