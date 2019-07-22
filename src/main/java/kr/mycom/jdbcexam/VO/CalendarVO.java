package main.java.kr.mycom.jdbcexam.VO;

import java.util.Date;

public class CalendarVO {
    private Integer id;
    private String name;
    private String url;
    private Date datetime;
    private Date datetime_end;
    private String status;
    private String dogcount;

    public CalendarVO() {
    }

    public CalendarVO(Integer id, String name,String dogcount, String url, Date datetime, Date datetime_end, String status) {
        this.id = id;
        this.name = name;
        this.url = url;
        this.datetime = datetime;
        this.datetime_end = datetime_end;
        this.status = status;
        this.dogcount = dogcount;

    }

    @Override
    public String toString() {
        return "CalendarVO{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", url='" + url + '\'' +
                ", datetime=" + datetime +
                ", datetime_end=" + datetime_end +
                ", status='" + status + '\'' +
                ", dogcount=" + dogcount +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public Date getDatetime() {
        return datetime;
    }

    public void setDatetime(Date datetime) {
        this.datetime = datetime;
    }

    public Date getDatetime_end() {
        return datetime_end;
    }

    public void setDatetime_end(Date datetime_end) {
        this.datetime_end = datetime_end;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getDogcount() {
        return dogcount;
    }

    public void setDogcount(String dogcount) {
        this.dogcount = dogcount;
    }
}
