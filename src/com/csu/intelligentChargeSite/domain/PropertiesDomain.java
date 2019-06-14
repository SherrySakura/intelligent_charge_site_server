package com.csu.intelligentChargeSite.domain;

public class PropertiesDomain {
    private String driverClassName;
    private String url;
    private String dataBase;
    private String userTable;
    private String username;
    private String password;

    @Override
    public String toString() {
        return "PropertiesDomain{" +
                "driverClassName='" + driverClassName + '\'' +
                ", url='" + url + '\'' +
                ", dataBase='" + dataBase + '\'' +
                ", userTable='" + userTable + '\'' +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                '}';
    }

    public String getDriverClassName() {
        return driverClassName;
    }

    public void setDriverClassName(String driverClassName) {
        this.driverClassName = driverClassName;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getDataBase() {
        return dataBase;
    }

    public void setDataBase(String dataBase) {
        this.dataBase = dataBase;
    }

    public String getUserTable() {
        return userTable;
    }

    public void setUserTable(String userTable) {
        this.userTable = userTable;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
