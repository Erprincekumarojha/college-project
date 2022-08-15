package com.dts.project.model;

public class AccountModel {
	private int acountypeid;
	private String  acounttypename;	
	private double  mindeposteamt;
	private int  periods;
	private double  intrestrate;
	private String  status;
	
	private int accountno;
	private int custid;
	private String  custname;
	private String  applydate;
	private String  issuedate;
	private String  nomineename;
	
	
	public int getAcountypeid() {
		return acountypeid;
	}
	public void setAcountypeid(int acountypeid) {
		this.acountypeid = acountypeid;
	}
	public String getAcounttypename() {
		return acounttypename;
	}
	public void setAcounttypename(String acounttypename) {
		this.acounttypename = acounttypename;
	}
	public double getMindeposteamt() {
		return mindeposteamt;
	}
	public void setMindeposteamt(double mindeposteamt) {
		this.mindeposteamt = mindeposteamt;
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
	public int getAccountno() {
		return accountno;
	}
	public void setAccountno(int accountno) {
		this.accountno = accountno;
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
	public String getNomineename() {
		return nomineename;
	}
	public void setNomineename(String nomineename) {
		this.nomineename = nomineename;
	}

}
