package com.study.domain;

import java.util.List;

public class MyBean122 {
    private String nickName;
    private String classes;
    private String acient;
    private List<String> title;

    private Integer level;

    public MyBean122() {
    }

    public MyBean122(String nickName, String classes, String acient, List<String> title, Integer level) {
        this.nickName = nickName;
        this.classes = classes;
        this.acient = acient;
        this.title = title;
        this.level = level;
    }

    public String getNickName() {
        return nickName;
    }

    public void setNickName(String nickName) {
        this.nickName = nickName;
    }

    public String getClasses() {
        return classes;
    }

    public void setClasses(String classes) {
        this.classes = classes;
    }

    public String getAcient() {
        return acient;
    }

    public void setAcient(String acient) {
        this.acient = acient;
    }

    public List<String> getTitle() {
        return title;
    }

    public void setTitle(List<String> title) {
        this.title = title;
    }

    public Integer getLevel() {
        return level;
    }

    public void setLevel(Integer level) {
        this.level = level;
    }
}
