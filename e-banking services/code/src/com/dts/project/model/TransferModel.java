package com.dts.project.model;

public class TransferModel {
private int custid;
private String custname;
private int fromaccno;
private int toaccno;
private double transamt;
private String pinno;
private String txdate;
private String txtype;
private double taxamt;
private int txid;
private String status;

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
public int getFromaccno() {
	return fromaccno;
}
public void setFromaccno(int fromaccno) {
	this.fromaccno = fromaccno;
}
public int getToaccno() {
	return toaccno;
}
public void setToaccno(int toaccno) {
	this.toaccno = toaccno;
}
public double getTransamt() {
	return transamt;
}
public void setTransamt(double transamt) {
	this.transamt = transamt;
}
public String getPinno() {
	return pinno;
}
public void setPinno(String pinno) {
	this.pinno = pinno;
}
public String getTxdate() {
	return txdate;
}
public void setTxdate(String txdate) {
	this.txdate = txdate;
}
public String getTxtype() {
	return txtype;
}
public void setTxtype(String txtype) {
	this.txtype = txtype;
}
public double getTaxamt() {
	return taxamt;
}
public void setTaxamt(double taxamt) {
	this.taxamt = taxamt;
}
public int getTxid() {
	return txid;
}
public void setTxid(int txid) {
	this.txid = txid;
}
public String getStatus() {
	return status;
}
public void setStatus(String status) {
	this.status = status;
}

}
