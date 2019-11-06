package com.fyl.bean;

public class Goods {

	private Integer id;
	private String ename;
	private String name;
	private String price;
	private String sdate;
	private String stime;
	private String pic;
	private String nian;
	private String qu;
	
	private Integer tid;
	private String tname;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getSdate() {
		return sdate;
	}
	public void setSdate(String sdate) {
		this.sdate = sdate;
	}
	public String getStime() {
		return stime;
	}
	public void setStime(String stime) {
		this.stime = stime;
	}
	public String getPic() {
		return pic;
	}
	public void setPic(String pic) {
		this.pic = pic;
	}
	public String getNian() {
		return nian;
	}
	public void setNian(String nian) {
		this.nian = nian;
	}
	public String getQu() {
		return qu;
	}
	public void setQu(String qu) {
		this.qu = qu;
	}
	public Integer getTid() {
		return tid;
	}
	public void setTid(Integer tid) {
		this.tid = tid;
	}
	public String getTname() {
		return tname;
	}
	public void setTname(String tname) {
		this.tname = tname;
	}
	public Goods(Integer id, String ename, String name, String price, String sdate, String stime, String pic,
			String nian, String qu, Integer tid, String tname) {
		super();
		this.id = id;
		this.ename = ename;
		this.name = name;
		this.price = price;
		this.sdate = sdate;
		this.stime = stime;
		this.pic = pic;
		this.nian = nian;
		this.qu = qu;
		this.tid = tid;
		this.tname = tname;
	}
	public Goods() {
		super();
	}
	@Override
	public String toString() {
		return "Goods [id=" + id + ", ename=" + ename + ", name=" + name + ", price=" + price + ", sdate=" + sdate
				+ ", stime=" + stime + ", pic=" + pic + ", nian=" + nian + ", qu=" + qu + ", tid=" + tid + ", tname="
				+ tname + "]";
	}
	
	
}
