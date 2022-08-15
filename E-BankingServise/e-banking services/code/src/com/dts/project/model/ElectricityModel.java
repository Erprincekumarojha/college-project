package com.dts.project.model;

public class ElectricityModel {

private int scno;
private int sccurityno;
private int  custid;
private String custname;

private int psnrreading;
private double  costperunit;
private double  amt2pay;
private double  dueamt;
private double  payedamt;
private int  txid;
private String billisuedate;
private String billpaydate;
private String electrictype;
private String status;

public String getStatus() {
	return status;
}
public void setStatus(String status) {
	this.status = status;
}
public int getScno() {
	return scno;
}
public void setScno(int scno) {
	this.scno = scno;
}
public int getSccurityno() {
	return sccurityno;
}
public void setSccurityno(int sccurityno) {
	this.sccurityno = sccurityno;
}
public int getPsnrreading() {
	return psnrreading;
}
public void setPsnrreading(int psnrreading) {
	this.psnrreading = psnrreading;
}
public double getCostperunit() {
	return costperunit;
}
public void setCostperunit(double costperunit) {
	this.costperunit = costperunit;
}
public double getAmt2pay() {
	return amt2pay;
}
public void setAmt2pay(double amt2pay) {
	this.amt2pay = amt2pay;
}
public double getDueamt() {
	return dueamt;
}
public void setDueamt(double dueamt) {
	this.dueamt = dueamt;
}
public double getPayedamt() {
	return payedamt;
}
public void setPayedamt(double payedamt) {
	this.payedamt = payedamt;
}
public int getTxid() {
	return txid;
}
public void setTxid(int txid) {
	this.txid = txid;
}
public String getBillisuedate() {
	return billisuedate;
}
public void setBillisuedate(String billisuedate) {
	this.billisuedate = billisuedate;
}
public String getBillpaydate() {
	return billpaydate;
}
public void setBillpaydate(String billpaydate) {
	this.billpaydate = billpaydate;
}
public String getElectrictype() {
	return electrictype;
}
public void setElectrictype(String electrictype) {
	this.electrictype = electrictype;
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


}
