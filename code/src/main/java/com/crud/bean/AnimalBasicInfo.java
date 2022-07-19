package com.crud.bean;

import java.text.SimpleDateFormat;

public class AnimalBasicInfo {
    //动物档案编号
	private Integer basicnumber;
    
    //体重
    private String animalweight;
    
    //体长
    private String animallengh;
    
    
    private String animalweight_most;

    private String animallengh_most;

    private String animalbloodtype;
    
    //来源
    private String animalorigin;
    
    //描述
    private String animaldescription;
    
    //品种
    private String animalspecies;
    
    //性别
    private String animalsex;
    
    public AnimalBasicInfo() {
		super();
	}

	public AnimalBasicInfo(String animalweight, String animallengh, String animalbloodtype, String animalorigin,
			String animaldescription, String animalspecies, String animalsex) {
		super();
		this.animalweight = animalweight;
		this.animallengh = animallengh;
		this.animalbloodtype = animalbloodtype;
		this.animalorigin = animalorigin;
		this.animaldescription = animaldescription;
		this.animalspecies = animalspecies;
		this.animalsex = animalsex;
	}

	public Integer getBasicnumber() {
        return basicnumber;
    }

    public void setBasicnumber(Integer basicnumber) {
        this.basicnumber = basicnumber;
    }

    public String getAnimalweight() {
        return animalweight;
    }

    public void setAnimalweight(String animalweight) {
        this.animalweight = animalweight == null ? null : animalweight.trim();
    }
    
    public String getAnimalweight_most() {
        return animalweight_most;
    }

    public void setAnimalweight_most(String animalweight_most) {
        this.animalweight_most = animalweight_most == null ? null : animalweight_most.trim();
    }

    public String getAnimallengh() {
        return animallengh;
    }

    public void setAnimallengh(String animallengh) {
        this.animallengh = animallengh == null ? null : animallengh.trim();
    }
    
    public String getAnimallengh_most() {
        return animallengh_most;
    }

    public void setAnimallengh_most(String animallengh_most) {
        this.animallengh_most = animallengh_most == null ? null : animallengh_most.trim();
    }

    public String getAnimalbloodtype() {
        return animalbloodtype;
    }

    public void setAnimalbloodtype(String animalbloodtype) {
        this.animalbloodtype = animalbloodtype == null ? null : animalbloodtype.trim();
    }

    public String getAnimalorigin() {
        return animalorigin;
    }

    public void setAnimalorigin(String animalorigin) {
        this.animalorigin = animalorigin == null ? null : animalorigin.trim();
    }

    public String getAnimaldescription() {
        return animaldescription;
    }

    public void setAnimaldescription(String animaldescription) {
        this.animaldescription = animaldescription == null ? null : animaldescription.trim();
    }

    public String getAnimalspecies() {
        return animalspecies;
    }

    public void setAnimalspecies(String animalspecies) {
        this.animalspecies = animalspecies == null ? null : animalspecies.trim();
    }

    public String getAnimalsex() {
        return animalsex;
    }

    public void setAnimalsex(String animalsex) {
        this.animalsex = animalsex == null ? null : animalsex.trim();
    }
    
    @Override
	public String toString() {
		return "AnimalBasicInfo [basicnumber=" + basicnumber + ", animalspecies=" + animalspecies + ", animaldescription=" + animaldescription + ", animalsex=" + animalsex + "]";
	}
}