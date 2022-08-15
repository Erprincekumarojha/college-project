package com.dts.project.model;

public class LoanModel {

	
	private int     loantypeid;
	private String  loantypename;	
	private double  instlamtpermonth;
	private int     periods;
	private double  intrestrate;
	private String  status;
	private int     noterms;
	private double  loanamount;
	
	
	private int     custid;
	private String  custname;	
	private String  applydate;
	private String  issuedate;
	
	
	public int getLoantypeid() {
		return loantypeid;
	}
	public void setLoantypeid(int loantypeid) {
		this.loantypeid = loantypeid;
	}
	public String getLoantypename() {
		return loantypename;
	}
	public void setLoantypename(String loantypename) {
		this.loantypename = loantypename;
	}
	public double getInstlamtpermonth() {
		return instlamtpermonth;
	}
	public void setInstlamtpermonth(double instlamtpermonth) {
		this.instlamtpermonth = instlamtpermonth;
	}
	public int getPeriods() {
		return periods;
	}
	public void setPeriods(int periods) {
		this.periods = periods;
	}
	public double getIntrestrate() {
		return intrestrate;
	}
	public void setIntrestrate(double intrestrate) {
		this.intrestrate = intrestrate;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public int getNoterms() {
		return noterms;
	}
	public void setNoterms(int noterms) {
		this.noterms = noterms;
	}
	public int getCustid() {
		return custid;
	}
	public void setCustid(int custid) {
		this.custid = custid;
	}
	public String getCustname() {
		return custname;
	}
	public void setCustname(String custname) {
		this.custname = custname;
	}
	public double getLoanamount() {
		return loanamount;
	}
	public void setLoanamount(double loanamount) {
		this.loanamount = loanamount;
	}
	public String getApplydate() {
		return applydate;
	}
	public void setApplydate(String applydate) {
		this.applydate = applydate;
	}
	public String getIssuedate() {
		return issuedate;
	}
	public void setIssuedate(String issuedate) {
		this.issuedate = issuedate;
	}
}
