package com.dts.project.dao;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.sql.Blob;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Types;

import com.dts.project.model.AccountModel;
import com.dts.core.dao.AbstractDataAccessObject;
import com.dts.core.util.CoreHash;
import com.dts.core.util.DateWrapper;
import com.dts.core.util.LoggerManager;
import com.dts.project.model.CustomerModel;

public class AccountDAO extends AbstractDataAccessObject {
	public boolean flag=false;
	public Connection con=null;
	public AccountDAO() {
		// TODO Auto-generated constructor stub
	}

	
public boolean addAccountTypes(AccountModel am){
		
		
		
		CallableStatement cstmt=null;
		  try 
		    {
			 
	        	
	        	con=getConnection();		       
		        cstmt=con.prepareCall("{ call ADD_ACCOUNTS_TYPES(?,?,?,?)}");
                cstmt.setString(1, am.getAcounttypename());       
                cstmt.setDouble(2, am.getMindeposteamt());        
                cstmt.setInt(3, am.getPeriods());
                cstmt.setDouble(4, am.getIntrestrate()); 
        
         
		       int i= cstmt.executeUpdate();
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
	

public boolean ModifyAccountTypes(AccountModel am){
	
	
	
	CallableStatement cstmt=null;
	  try 
	    {
		 
        	
        	con=getConnection();		       
	        cstmt=con.prepareCall("{ call UPDATE_ACCOUNTS_TYPES_DETAILS(?,?,?,?)}");
            cstmt.setInt(1, am.getAcountypeid());       
            cstmt.setDouble(2, am.getMindeposteamt());        
            cstmt.setInt(3, am.getPeriods());
            cstmt.setDouble(4, am.getIntrestrate()); 
    
     
	       int i= cstmt.executeUpdate();
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




public boolean setAccountTypeIsDeactive(int actypeid){
	
	
	
	CallableStatement cstmt=null;
	  try 
	    {
		 
        	
        	con=getConnection();		       
	        cstmt=con.prepareCall("{ call SET_ACCOUNTS_TYPE_DEACTIVE(?,?)}");
            cstmt.setInt(1,actypeid);  
            cstmt.registerOutParameter(2,Types.INTEGER);
	       boolean f=cstmt.execute();
	      int val1=cstmt.getInt(2);
	       if(f && (val1==1)) {          
	            flag=true;
	            con.commit();
	          
	           }
	           else{
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


public boolean setAccountTypeIsActive(int actypeid){
	
	
	
	CallableStatement cstmt=null;
	  try 
	    {
		 
        	
        	con=getConnection();		       
	        cstmt=con.prepareCall("{ call SET_ACCOUNTS_TYPE_ACTIVE(?,?)}");
            cstmt.setInt(1,actypeid);  
            cstmt.registerOutParameter(2,Types.INTEGER);
	       boolean f=cstmt.execute();
	      int val=cstmt.getInt(2);
	       if(f && (val==1)) {          
	            flag=true;
	            con.commit();
	          
	           }
	           else{
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



public CoreHash getAllAccountTypes(){
	
	CoreHash aCoreHash=new CoreHash();
	aCoreHash.clear();
	System.out.println("aCoreHash--"+aCoreHash.isEmpty());
	
	
	int sno=1;
	
	ResultSet rs=null;
	AccountModel  um=null;
	Statement st=null;
        try
        {
        	con=getConnection();     	
        	st=con.createStatement();
       	String sql="select *from ACOUNT_TYPE_MSTR where upper(status)=upper('active')";
			
			rs=st.executeQuery(sql);
			while(rs.next()){
				
			um=new AccountModel();		
			
			int actid=rs.getInt(1);			
			um.setAcountypeid(actid);
			um.setAcounttypename(rs.getString(2));			
			um.setMindeposteamt(rs.getDouble(3));
			um.setPeriods(rs.getInt(4));
			um.setIntrestrate(rs.getDouble(5));
			um.setStatus(rs.getString(6));
			
			
			
			
			 aCoreHash.put(new Integer(sno),um);
			    sno++;
		  
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
	


public AccountModel getCustAccountDetails(int custid){
	
	//CoreHash aCoreHash=new CoreHash();
	//aCoreHash.clear();
	//System.out.println("aCoreHash--"+aCoreHash.isEmpty());
	
	
	int sno=1;
	
	ResultSet rs=null;
	AccountModel  um=null;
	Statement st=null;
        try
        {
        	con=getConnection();     	
        	st=con.createStatement();
        	
       	String sql="SELECT  A.ACOUNTNO,A.ACNTTYPEID,AT.ACOUNTTYPENAME,A.CUSTID,C.CFSTNAME,TO_CHAR(A.APLIEDDATE,'DD-MM-YYYY'),TO_CHAR(A.ISSUEDATE,'DD-MM-YYYY'),A.NOMINEENAME,A.STATUS FROM  ACOUNTDTLS  A,CUSTOMER C,ACOUNT_TYPE_MSTR  AT WHERE (A.ACNTTYPEID=AT.ACOUNTYPEID) AND (A.CUSTID=C.CUSTID) AND A.CUSTID="+custid;
			
			rs=st.executeQuery(sql);
			while(rs.next()){				
			um=new AccountModel();			
			um.setAccountno(rs.getInt(1));
			um.setAcountypeid(rs.getInt(2));
			um.setAcounttypename(rs.getString(3));
			um.setCustid(rs.getInt(4));
			um.setCustname(rs.getString(5));
			um.setApplydate(rs.getString(6));
			um.setIssuedate(rs.getString(7));
			um.setNomineename(rs.getString(8));
			um.setStatus(rs.getString(9));			
			// aCoreHash.put(new Integer(sno),um);
			   // sno++;
		  
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
	return um;
}
	



public CoreHash getAllDeactiveAccountTypes(){
	
	CoreHash aCoreHash=new CoreHash();
	aCoreHash.clear();
	System.out.println("aCoreHash--"+aCoreHash.isEmpty());
	
	
	int sno=1;
	
	ResultSet rs=null;
	AccountModel  um=null;
	Statement st=null;
        try
        {
        	con=getConnection();     	
        	st=con.createStatement();
       	String sql="select *from ACOUNT_TYPE_MSTR where upper(status)=upper('deactive')";
			
			rs=st.executeQuery(sql);
			while(rs.next()){
				
			um=new AccountModel();			
			int actid=rs.getInt(1);			
			um.setAcountypeid(actid);
			um.setAcounttypename(rs.getString(2));			
			um.setMindeposteamt(rs.getDouble(3));
			um.setPeriods(rs.getInt(4));
			um.setIntrestrate(rs.getDouble(5));
			um.setStatus(rs.getString(6));			
			 aCoreHash.put(new Integer(sno),um);
			    sno++;
		  
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
	
public AccountModel getPerticularAccountTypes(int actypeid){
	
	
	int sno=1;
	
	ResultSet rs=null;
	AccountModel  um=null;
	Statement st=null;
        try
        {
        	con=getConnection();     	
        	st=con.createStatement();
       	String sql="select *from ACOUNT_TYPE_MSTR where upper(status)=upper('active') and acountypeid="+actypeid;
			
			rs=st.executeQuery(sql);
			while(rs.next()){				
			um=new AccountModel();			
			int actid=rs.getInt(1);			
			um.setAcountypeid(actid);
			um.setAcounttypename(rs.getString(2));			
			um.setMindeposteamt(rs.getDouble(3));
			um.setPeriods(rs.getInt(4));
			um.setIntrestrate(rs.getDouble(5));
			um.setStatus(rs.getString(6));					
		  
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
	return um;
}
	

}
