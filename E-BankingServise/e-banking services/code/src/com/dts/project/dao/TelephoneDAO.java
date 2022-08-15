/**
 * 
 */
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

import com.dts.project.model.TelephoneModel;

/**
 * @author JAVAPROJECTS
 *
 */
public class TelephoneDAO extends AbstractDataAccessObject {

	/**
	 * 
	 */
	public boolean flag=false;
	public Connection con=null;
	public TelephoneDAO() {
		// TODO Auto-generated constructor stub
	}
	public boolean addTelTypeDetails(TelephoneModel addttypedtls){
		
		
		CallableStatement  pst=null;
		//PreparedStatement pst=null;
		  try 
		    {
			 
	        	con=getConnection();
	        	
	        	pst=con.prepareCall("{call ADD_TELTYPE_MSTR(?,?,?,?)}");
	      
	       pst.setString(1, addttypedtls.getTeltypename()); 
	       pst.setDouble(2, addttypedtls.getAmt4min());         
	       pst.setDouble(3, addttypedtls.getOthertaxes()); 
	       pst.setString(4, DateWrapper.parseDate(addttypedtls.getTelissuedate()));           
	              
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

public boolean AssignCustTelBillDetails(TelephoneModel addttypedtls){
		
		
		CallableStatement  pst=null;
		//PreparedStatement pst=null;
		  try 
		    {
			 
	        	con=getConnection();
	        	
	        	pst=con.prepareCall("{call ADD_TELBILL_DTLS(?,?,?,?,?,?,?)}");
	      
	       
	        	pst.setInt(1, addttypedtls.getTelphno());
	        	System.out.println("---addttypedtls.getTelphno()---"+addttypedtls.getTelphno());
	        	pst.setInt(2, addttypedtls.getTeltypeid());
	        	System.out.println("-----addttypedtls.getTeltypeid()----"+addttypedtls.getTeltypeid());
	        	pst.setInt(3, addttypedtls.getCustid());
	        	System.out.println("------addttypedtls.getSecurityno()-----"+addttypedtls.getSecurityno());
	        	pst.setInt(4, addttypedtls.getTalktime());
	        	System.out.println("-------------addttypedtls.getTalktime()-------------"+addttypedtls.getTalktime());
	        	pst.setString(5,DateWrapper.parseDate(addttypedtls.getBilisuedate()));
	        	System.out.println("-----addttypedtls.getBilisuedate()----------"+addttypedtls.getBilisuedate());
	        	pst.setDouble(6, addttypedtls.getDueamt());
	        	System.out.println("------addttypedtls.getDueamt()------"+addttypedtls.getDueamt());
	        	pst.setDouble(7, addttypedtls.getAmt2pay());
	        	System.out.println("-------addttypedtls.getAmt2pay()-----"+addttypedtls.getAmt2pay());
	       
	                        
		       int i= pst.executeUpdate();
		       System.out.println("------ii----"+i);
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






public boolean UpdateCustPayingBillDetails(TelephoneModel updacustphndtls){
	
	
	CallableStatement  pst=null;
	//PreparedStatement pst=null;
	  try 
	    {
		 
        	con=getConnection();
        	
        	
        	pst=con.prepareCall("{call UPDAT_CUST_TELBIL_DTLS(?,?,?,?,?,?)}");
            
            
        //	pst.setInt(1, updacustphndtls.getTelphno());
        	//System.out.println("---updacustphndtls.getTelphno()---"+updacustphndtls.getTelphno());
        	//pst.setInt(2, updacustphndtls.getTeltypeid());
        	//System.out.println("-----updacustphndtls.getTeltypeid()----"+updacustphndtls.getTeltypeid());
        	pst.setInt(1, updacustphndtls.getCustid());
        	System.out.println("------updacustphndtls.getSecurityno()-----"+updacustphndtls.getCustid());
        	pst.setInt(2, updacustphndtls.getTalktime());
        	System.out.println("-------------updacustphndtls.getTalktime()-------------"+updacustphndtls.getTalktime());
        	//pst.setString(5,DateWrapper.parseDate(updacustphndtls.getBilisuedate()));
        	//System.out.println("-----updacustphndtls.getBilisuedate()----------"+updacustphndtls.getBilisuedate());
        	pst.setString(3,DateWrapper.parseDate(updacustphndtls.getBilpayeddate()));        	
        	System.out.println("----DateWrapper.parseDate(updacustphndtls.getBilpayeddate())-----"+DateWrapper.parseDate(updacustphndtls.getBilpayeddate()));
        	pst.setDouble(4, updacustphndtls.getDueamt());
        	System.out.println("----updacustphndtls.getDueamt()-----"+updacustphndtls.getDueamt());
        	pst.setDouble(5, updacustphndtls.getPaiedamt());
        	System.out.println("----updacustphndtls.getPaiedamt()-----"+updacustphndtls.getPaiedamt());
        	//pst.setInt(9, updacustphndtls.getTxid());        	
        	pst.setDouble(6, updacustphndtls.getAmt2pay());
        	System.out.println("----updacustphndtls.getAmt2pay()----"+updacustphndtls.getAmt2pay());
                        
	       int i= pst.executeUpdate();
	       System.out.println("------ii----"+i);
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
//	        flag=false;
//	        try 
//	        {
//	            con.rollback();
//	        } 
//	        catch (SQLException se) 
//	        {
//	            se.printStackTrace();
//	        }
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


public CoreHash getTelephoneTypeNames()
{
	
	CoreHash aCoreHash = new CoreHash();
	aCoreHash.clear();
	System.out.println("aCoreHash--"+aCoreHash.isEmpty());
	int no=1;
	Statement st;
	TelephoneModel  emodel=null;
	try {
		 con = getConnection();
		   
       	 st=con.createStatement();
       	 String sql="SELECT TLPHTYPEID,INITCAP(PHNTYPE) FROM TELPHONEMSTR";
       	 ResultSet rs=st.executeQuery(sql);
       	 while(rs.next())
            {
       		emodel=new  TelephoneModel();
         	  
       		emodel.setTeltypeid(rs.getInt(1));
       		emodel.setTeltypename(rs.getString(2));
       		
       		
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




public TelephoneModel getTelTalkTimeAmt(int ttypeid)
{
	
	CoreHash aCoreHash = new CoreHash();
	aCoreHash.clear();
	System.out.println("aCoreHash--"+aCoreHash.isEmpty());
	int no=1;
	Statement st;
	TelephoneModel  emodel=null;
	try {
		 con = getConnection();
		   
       	 st=con.createStatement();
       	 String sql="SELECT TLPHTYPEID,AMTPRMIN,Initcap(PHNTYPE) FROM TELPHONEMSTR where TLPHTYPEID="+ttypeid;
       	 ResultSet rs=st.executeQuery(sql);
       	 while(rs.next())
            {
       		emodel=new  TelephoneModel();
         	  
       		emodel.setTeltypeid(rs.getInt(1));
       		emodel.setAmt4min(rs.getDouble(2));
       		emodel.setTeltypename(rs.getString(3));
       		
       	/// aCoreHash.put(new Integer(no),emodel);
		  //  no++;
	  
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


public TelephoneModel getCustTelDueAmt(int secuno,int typeid,int tno)
{
	
	CoreHash aCoreHash = new CoreHash();
	aCoreHash.clear();
	System.out.println("aCoreHash--"+aCoreHash.isEmpty());
	int no=1;
	Statement st;
	TelephoneModel  emodel=null;
	try {
		 con = getConnection();
		   
       	 st=con.createStatement();
       	 String sql="SELECT DUEAMT  FROM TELPHONEDTLS WHERE CUSTID="+secuno+" AND TLPHTYPEID="+typeid+" AND TLPHNO="+tno;
       	 ResultSet rs=st.executeQuery(sql);
       	 while(rs.next())
            {
       		emodel=new  TelephoneModel();         	  
       		
       		emodel.setDueamt(rs.getDouble(1));
       		
	  
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


public CoreHash getAllPhoneDetailsOfUser(int sno,int ttid)
{
	
	CoreHash aCoreHash = new CoreHash();
	aCoreHash.clear();
	System.out.println("aCoreHash--"+aCoreHash.isEmpty());
	int no=1;
	Statement st;
	TelephoneModel  emodel=null;
	try {
		 con = getConnection();		   
       	 st=con.createStatement();
       	 String sql="SELECT TPD.TLPHNO,TPD.TLPHTYPEID,TPD.CUSTID, TPD.TLKTIME, TO_CHAR(TPD.BILISUDATE,'DD-MM-YYYY'),  TPD.DUEAMT,  TPD.STATUS, TPD.PAYAMT,TM.PHNTYPE,TPD.TXID  FROM TELPHONEDTLS TPD,TELPHONEMSTR TM WHERE TPD.TLPHTYPEID=TM.TLPHTYPEID AND TPD.TLPHTYPEID="+ttid+" AND TPD.CUSTID="+sno+" AND  UPPER(TPD.STATUS)=UPPER('NOTPAID')";
       	 ResultSet rs=st.executeQuery(sql);
       	 while(rs.next())
            {
       		emodel=new  TelephoneModel();
         	  
       		emodel.setTelphno(rs.getInt(1));
       		emodel.setTeltypeid(rs.getInt(2));
       		emodel.setCustid(rs.getInt(3));
       		emodel.setTalktime(rs.getInt(4));
       		emodel.setBilisuedate(rs.getString(5));
       		emodel.setDueamt(rs.getDouble(6));
       		emodel.setStatus(rs.getString(7));
       		emodel.setAmt2pay(rs.getDouble(8));
       		emodel.setTeltypename(rs.getString(9));
       		emodel.setTxid(rs.getInt(10));
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


public TelephoneModel getCustPerBillPayingDetail(int sno,int ttid,int phno)
{
	
	CoreHash aCoreHash = new CoreHash();
	aCoreHash.clear();
	System.out.println("aCoreHash--"+aCoreHash.isEmpty());
	int no=1;
	Statement st;
	TelephoneModel  emodel=null;
	try {
		 con = getConnection();		   
       	 st=con.createStatement();
       	 String sql="SELECT TPD.TLPHNO,TPD.TLPHTYPEID,TPD.CUSTID, TPD.TLKTIME, TO_CHAR(TPD.BILISUDATE,'DD-MM-YYYY'),  TPD.DUEAMT,  TPD.STATUS, TPD.PAYAMT,TM.PHNTYPE ,TPD.TXID FROM TELPHONEDTLS TPD,TELPHONEMSTR TM WHERE TPD.TLPHTYPEID=TM.TLPHTYPEID AND TPD.TLPHTYPEID="+ttid+" AND TPD.CUSTID="+sno+" AND  UPPER(TPD.STATUS)=UPPER('NOTPAID')";
       	 ResultSet rs=st.executeQuery(sql);
       	 while(rs.next())
            {
       		emodel=new  TelephoneModel();
         	  
       		emodel.setTelphno(rs.getInt(1));
       		emodel.setTeltypeid(rs.getInt(2));
       		emodel.setCustid(rs.getInt(3));
       		emodel.setTalktime(rs.getInt(4));
       		emodel.setBilisuedate(rs.getString(5));
       		emodel.setDueamt(rs.getDouble(6));
       		emodel.setStatus(rs.getString(7));
       		emodel.setAmt2pay(rs.getDouble(8));
       		emodel.setTeltypename(rs.getString(9));
       		emodel.setTxid(rs.getInt(10));
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
	return emodel;
}


}
