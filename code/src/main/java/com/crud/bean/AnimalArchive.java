package com.crud.bean;

import java.math.BigDecimal;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class AnimalArchive {
    private Integer archivenumber;

    private Integer eartagnumber;
    
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date initialdate;
    
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date enddate;

    private String initialpeople;

    private String responsiblepeople;

    private String belongpeople;

    private String archivedescription;

    private String archivekey;

    private String releasestatus;

    private Date releasedate;

    private BigDecimal price;

    private String canapplyauthz;

    private String authzstate;

    private String canapplyadverts;

    private String advertsstate;
    
    private User user; // 增加用户，用于查询时显示姓名
    
    private AnimalBasicInfo animalbasic;//用于在推荐档案页面查看动物品种显示图片
    
    private User iuser; // 初始化人员信息 获取姓名使用
    private User ruser; // 责任人信息 获取姓名使用
    private String kwd1;// keywords 用户多关键字段查询 不影响其他操作
    private String kwd2;
    private String kwd3;
    

    /***
     * 构造函数
     * @return
     */
    public AnimalArchive() {
		super();
	}
    
    public AnimalArchive(Integer archivenumber, Integer eartagnumber, Date initialdate, String initialpeople,
			String responsiblepeople, String belongpeople, String archivedescription, String archivekey) {
		super();
		this.archivenumber = archivenumber;
		this.eartagnumber = eartagnumber;
		this.initialdate = initialdate;
		this.initialpeople = initialpeople;
		this.responsiblepeople = responsiblepeople;
		this.belongpeople = belongpeople;
		this.archivedescription = archivedescription;
		this.archivekey = archivekey;
	}
    
	public Integer getArchivenumber() {
        return archivenumber;
    }

	public void setArchivenumber(Integer archivenumber) {
        this.archivenumber = archivenumber;
    }

    public Integer getEartagnumber() {
        return eartagnumber;
    }

    public void setEartagnumber(Integer eartagnumber) {
        this.eartagnumber = eartagnumber;
    }

    public Date getInitialdate() {
        return initialdate;
    }

    public void setInitialdate(Date initialdate) {
        this.initialdate = initialdate;
    }
    
    public Date getEnddate() {
        return enddate;
    }

    public void setEnddate(Date enddate) {
        this.enddate = enddate;
    }

    public String getInitialpeople() {
        return initialpeople;
    }

    public void setInitialpeople(String initialpeople) {
        this.initialpeople = initialpeople == null ? null : initialpeople.trim();
    }

    public String getResponsiblepeople() {
        return responsiblepeople;
    }

    public void setResponsiblepeople(String responsiblepeople) {
        this.responsiblepeople = responsiblepeople == null ? null : responsiblepeople.trim();
    }

    public String getBelongpeople() {
        return belongpeople;
    }

    public void setBelongpeople(String belongpeople) {
        this.belongpeople = belongpeople == null ? null : belongpeople.trim();
    }

    public String getArchivedescription() {
        return archivedescription;
    }

    public void setArchivedescription(String archivedescription) {
        this.archivedescription = archivedescription == null ? null : archivedescription.trim();
    }

    public String getArchivekey() {
        return archivekey;
    }

    public void setArchivekey(String archivekey) {
        this.archivekey = archivekey == null ? null : archivekey.trim();
    }

    public String getReleasestatus() {
        return releasestatus;
    }

    public void setReleasestatus(String releasestatus) {
        this.releasestatus = releasestatus == null ? null : releasestatus.trim();
    }

    public Date getReleasedate() {
        return releasedate;
    }

    public void setReleasedate(Date releasedate) {
        this.releasedate = releasedate;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public String getCanapplyauthz() {
        return canapplyauthz;
    }

    public void setCanapplyauthz(String canapplyauthz) {
        this.canapplyauthz = canapplyauthz == null ? null : canapplyauthz.trim();
    }

    public String getAuthzstate() {
        return authzstate;
    }

    public void setAuthzstate(String authzstate) {
        this.authzstate = authzstate == null ? null : authzstate.trim();
    }

    public String getCanapplyadverts() {
        return canapplyadverts;
    }

    public void setCanapplyadverts(String canapplyadverts) {
        this.canapplyadverts = canapplyadverts == null ? null : canapplyadverts.trim();
    }

    public String getAdvertsstate() {
        return advertsstate;
    }

    public void setAdvertsstate(String advertsstate) {
        this.advertsstate = advertsstate == null ? null : advertsstate.trim();
    }

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public User getIuser() {
		return iuser;
	}

	public void setIuser(User iuser) {
		this.iuser = iuser;
	}

	public User getRuser() {
		return ruser;
	}

	public void setRuser(User ruser) {
		this.ruser = ruser;
	}

	public String getKwd1() {
		return kwd1;
	}

	public void setKwd1(String kwd1) {
		this.kwd1 = kwd1;
	}

	public String getKwd2() {
		return kwd2;
	}

	public void setKwd2(String kwd2) {
		this.kwd2 = kwd2;
	}

	public String getKwd3() {
		return kwd3;
	}

	public void setKwd3(String kwd3) {
		this.kwd3 = kwd3;
	}

	public AnimalBasicInfo getAnimalbasic() {
		return animalbasic;
	}

	public void setAnimalbasic(AnimalBasicInfo animalbasic) {
		this.animalbasic = animalbasic;
	}

}