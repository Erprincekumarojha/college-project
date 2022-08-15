package com.dts.project.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.dts.core.dao.AbstractDataAccessObject;
import com.dts.core.util.CoreHash;
import com.dts.core.util.DateWrapper;
import com.dts.core.util.LoggerManager;


import com.dts.project.model.ElectricityModel;

public class ElectricityDAO extends AbstractDataAccessObject {
	public boolean flag=false;
	public Connection con=null;
	public ElectricityDAO() {
		// TODO Auto-generated constructor stub
	}
public boolean addElectricBillDetails(ElectricityModel addbilldtls){
		
		
		CallableStatement  pst=null;
		
		  try 
		    {
			 
	        	con=getConnection();
	        	
	        	pst=con.prepareCall("{call ADD_ELECTRIC(?,?,?,?,?,?,?,?,?,?)}");
	      
	       pst.setInt(1, addbilldtls.getScno());         
	       pst.setInt(2, addbilldtls.getCustid()); 
	       pst.setInt(3, addbilldtls.getPsnrreading());
	       pst.setDouble(4, addbilldtls.getCostperunit());
	       pst.setDouble(5, addbilldtls.getAmt2pay());
	       pst.setDouble(6, addbilldtls.getDueamt());
	       pst.setDouble(7, addbilldtls.getPayedamt());
	       pst.setString(8, DateWrapper.parseDate(addbilldtls.getBillisuedate()));
           pst.setString(9, DateWrapper.parseDate(addbilldtls.getBillpaydate()));         
           pst.setString(10, addbilldtls.getElectrictype());
		       int i= pst.executeUpdate();
		         if(i==1)
		         {
		          flag=true;
		          con.commit();
		         }
		         else
		         {
		        	 flag=false;
		        	 con.rollback();
		         }

		    } 
		    
		    catch (Exception e) 
		    {
		        e.printStackTrace();
		        flag=false;
		        try 
		        {
		            con.rollback();
		        } 
		        catch (SQLException se) 
		        {
		            se.printStackTrace();
		        }
		    }
		    
		    finally
			{
			 try{
				 if(con!=null)
					 con.close();				 
			 }
			 catch(Exception e){}
			}
		    return flag;
		
	}
	

public ElectricityModel getElectricityBillDueAmt(int sno)
{
	
	
	CoreHash aCoreHash = new CoreHash();
	aCoreHash.clear();
	System.out.println("aCoreHash--"+aCoreHash.isEmpty());
	double dueamt=0;
	Statement st;
	ElectricityModel  emodel=null;
	try {
		 con = getConnection();
		   
       	 st=con.createStatement();
       	 String sql="SELECT  (AMOUNT2PAY-PAYEDAMT),PRSNTREADING FROM ELECTRICITY WHERE  TXID=(SELECT MAX(TXID)FROM ELECTRICITY WHERE SCNO="+sno+")";
       	 ResultSet rs=st.executeQuery(sql);
       	 while(rs.next())
            {
       		emodel=new ElectricityModel();
         	  
       		emodel.setDueamt(rs.getDouble(1));
       		emodel.setPsnrreading(rs.getInt(2));
	  
            }
	}
	catch(Exception e)
	{e.printStackTrace();
		LoggerManager.writeLogWarning(e);
	}
	finally
	{
	 try{
		 if(con!=null)
		con.close();
		 
	 }
	 catch(Exception e){}
	}
	return emodel;
}

public CoreHash getAllElectBillOfPertUser(int sno)
{
	
	
	CoreHash aCoreHash = new CoreHash();
	aCoreHash.clear();
	System.out.println("aCoreHash--"+aCoreHash.isEmpty());
	int no=1;
	Statement st;
	ElectricityModel  emodel=null;
	try {
		 con = getConnection();
		   
       	 st=con.createStatement();
       	 String sql="SELECT E.SCNO,E.TXID,E.CUSTID,C.CFSTNAME,E.PRSNTREADING, E.COST4UNIT, E.AMOUNT2PAY, E.PAYEDAMT,E.DUEAMT, to_char(E.BILLISSUEDATE,'dd-mm-yyyy'), E.ELECTRICTYPE,E.STATUS FROM ELECTRICITY  E,CUSTOMER C WHERE (E.CUSTID=C.CUSTID)AND E.CUSTID="+sno;
       	 ResultSet rs=st.executeQuery(sql);
       	 while(rs.next())
            {
       		emodel=new ElectricityModel();
         	  
       		emodel.setScno(rs.getInt(1));
       		emodel.setTxid(rs.getInt(2));
       		emodel.setCustid(rs.getInt(3));
       		emodel.setCustname(rs.getString(4));
       		emodel.setPsnrreading(rs.getInt(5));
       		emodel.setCostperunit(rs.getDouble(6));
       		emodel.setAmt2pay(rs.getDouble(7));
       		emodel.setPayedamt(rs.getDouble(8));
       		emodel.setDueamt(rs.getDouble(9));
       		emodel.setBillisuedate(rs.getString(10));
       		emodel.setElectrictype(rs.getString(11));
       		emodel.setStatus(rs.getString(12));
       	 aCoreHash.put(new Integer(no),emodel);
		    no++;
	  
            }
	}
	catch(Exception e)
	{e.printStackTrace();
		LoggerManager.writeLogWarning(e);
	}
	finally
	{
	 try{
		 if(con!=null)
		con.close();
		 
	 }
	 catch(Exception e){}
	}
	return aCoreHash;
}

}
