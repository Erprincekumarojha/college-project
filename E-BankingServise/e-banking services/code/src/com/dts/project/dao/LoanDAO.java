package com.dts.project.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.dts.core.dao.AbstractDataAccessObject;
import com.dts.core.util.CoreHash;
import com.dts.core.util.LoggerManager;

import com.dts.project.model.AccountModel;
import com.dts.project.model.LoanModel;

public class LoanDAO extends AbstractDataAccessObject {
	public boolean flag=false;
	public Connection con=null;
	public LoanDAO() {
		// TODO Auto-generated constructor stub
	}
public boolean addLoanTypes(LoanModel am){
		
		
		
		CallableStatement cstmt=null;
		  try 
		    {
			 	        	
	        	con=getConnection();		       
		        cstmt=con.prepareCall("{ call ADD_LOAN_TYPES(?,?,?,?,?,?)}");
                cstmt.setString(1, am.getLoantypename()); 
                cstmt.setDouble(2, am.getIntrestrate()); 
                cstmt.setInt(3,am.getPeriods());
                cstmt.setDouble(4,am.getInstlamtpermonth());                   
                cstmt.setInt(5,am.getNoterms()); 
                cstmt.setDouble(6, am.getLoanamount());
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
	

public boolean ModifyLoanTypes(LoanModel am){	
	
	CallableStatement cstmt=null;
	  try 
	    {		 	        	
        	con=getConnection();		       
	        cstmt=con.prepareCall("{ call MODIFY_LOAN_TYPES(?,?,?,?,?,?,?)}");
            cstmt.setInt(1, am.getLoantypeid()); 
            cstmt.setDouble(2, am.getIntrestrate()); 
            cstmt.setInt(3,am.getPeriods());
            cstmt.setDouble(4,am.getInstlamtpermonth());                   
            cstmt.setInt(5,am.getNoterms()); 
            cstmt.setString(6,am.getStatus());
            cstmt.setDouble(7, am.getLoanamount());
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



public boolean CustomerRequestForNewLoan(LoanModel am){
	
	
	
	CallableStatement cstmt=null;
	  try 
	    {
		 	        	
        	con=getConnection();		       
	        cstmt=con.prepareCall("{ call APPL_CUST_FR_NEW_LOAN(?,?)}");
	        cstmt.setInt(1,am.getCustid());
	        cstmt.setInt(2, am.getLoantypeid());                              
           
            
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




public CoreHash getAllLoanTypesDetails(){
	
	CoreHash aCoreHash=new CoreHash();
	aCoreHash.clear();
	System.out.println("aCoreHash--"+aCoreHash.isEmpty());
	
	
	int sno=1;	
	ResultSet rs=null;
	LoanModel  um=null;
	Statement st=null;
        try
        {
        	con=getConnection();     	
        	st=con.createStatement();
       	String sql="select *from LOANMASTER where upper(status)=upper('active')";
			
			rs=st.executeQuery(sql);
			while(rs.next()){
				
			um=new LoanModel();		
			
			int actid=rs.getInt(1);			
			um.setLoantypeid(actid);
			um.setLoantypename(rs.getString(2));
			um.setIntrestrate(rs.getDouble(3));
			um.setPeriods(rs.getInt(4));
			um.setInstlamtpermonth(rs.getDouble(5));			
			um.setNoterms(rs.getInt(6));
			um.setStatus(rs.getString(7));
			um.setLoanamount(rs.getDouble(8));			
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
	 catch(Exception e){e.printStackTrace();}
	}
	return aCoreHash;
}

public LoanModel getPerticularLoanTypes(int loantypeid){
	
	CoreHash aCoreHash=new CoreHash();
	aCoreHash.clear();
	System.out.println("aCoreHash--"+aCoreHash.isEmpty());
	
	
	int sno=1;
	
	ResultSet rs=null;
	LoanModel  um=null;
	Statement st=null;
        try
        {
        	con=getConnection();     	
        	st=con.createStatement();
       	String sql="select *from LOANMASTER where upper(status)=upper('active') and LOANTYPEID="+loantypeid;
			
			rs=st.executeQuery(sql);
			while(rs.next()){
				
			um=new LoanModel();		
			
			int actid=rs.getInt(1);			
			um.setLoantypeid(actid);
			um.setLoantypename(rs.getString(2));
			um.setIntrestrate(rs.getDouble(3));
			um.setPeriods(rs.getInt(4));
			um.setInstlamtpermonth(rs.getDouble(5));			
			um.setNoterms(rs.getInt(6));
			um.setStatus(rs.getString(7));
			um.setLoanamount(rs.getDouble(8));				
			 //aCoreHash.put(new Integer(sno),um);
			  //  sno++;
		  
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

public CoreHash getAllCustLoanRequests(){
	
	CoreHash aCoreHash=new CoreHash();
	aCoreHash.clear();
	System.out.println("aCoreHash--"+aCoreHash.isEmpty());
	
	
	int sno=1;	
	ResultSet rs=null;
	LoanModel  um=null;
	Statement st=null;
        try
        {
        	con=getConnection();     	
        	st=con.createStatement();
       	String sql="SELECT CL.CUSTID, C.CFSTNAME, CL.LOANTYPEID, LM.LOANTYPENAME,TO_CHAR(CL.APPLYDATE,'DD-MM-YYYY')  FROM  CUSTLOANDTLS  CL, CUSTOMER C, LOANMASTER  LM  WHERE ( CL.CUSTID=C.CUSTID) AND  (CL.LOANTYPEID=LM.LOANTYPEID) AND CL.STATUS =UPPER('DEACTIVE')";
			
			rs=st.executeQuery(sql);
			while(rs.next()){
				
			um=new LoanModel();		
			
			um.setCustid(rs.getInt(1));
			um.setCustname(rs.getString(2));
			um.setLoantypeid(rs.getInt(3));
			um.setLoantypename(rs.getString(4));
			um.setApplydate(rs.getString(5));		
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
	 catch(Exception e){e.printStackTrace();}
	}
	return aCoreHash;
}

public boolean AcceptCustLoanRequestDetails(int custid){
	
	
	CallableStatement cstmt=null;
	  try 
	    {
		  
        	
        	con=getConnection();		       
	        cstmt=con.prepareCall("{ call ACCPT_CUST_LOAN_REQUEST(?)}");
     
               cstmt.setInt(1, custid);   
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


public boolean RejectCustLoanRequestDetails(int custid){
	
	
	CallableStatement cstmt=null;
	  try 
	    {
		  
        	
        	con=getConnection();		       
	        cstmt=con.prepareCall("{ call REJECT_CUST_LOAN_REQUEST(?)}");
     
               cstmt.setInt(1, custid);   
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

public CoreHash getCustLoanStatusDetails(int custid){
	
	CoreHash aCoreHash=new CoreHash();
	aCoreHash.clear();
	System.out.println("aCoreHash--"+aCoreHash.isEmpty());
	
	
	int sno=1;
	
	ResultSet rs=null;
	LoanModel  um=null;
	Statement st=null;
        try
        {
        	con=getConnection();     	
        	st=con.createStatement();
       	String sql="SELECT CL.CUSTID, C.CFSTNAME, CL.LOANTYPEID, LM.LOANTYPENAME,TO_CHAR(CL.APPLYDATE,'DD-MM-YYYY'),TO_CHAR(CL.ISSUEDATE,'DD-MM-YYYY') FROM  CUSTLOANDTLS  CL, CUSTOMER C, LOANMASTER  LM  WHERE ( CL.CUSTID=C.CUSTID) AND  (CL.LOANTYPEID=LM.LOANTYPEID) AND CL.STATUS =UPPER('ACTIVE') AND CL.CUSTID="+custid;
			
			rs=st.executeQuery(sql);
			while(rs.next()){
				
			um=new LoanModel();		
			
			um.setCustid(rs.getInt(1));
			um.setCustname(rs.getString(2));
			um.setLoantypeid(rs.getInt(3));
			um.setLoantypename(rs.getString(4));
			um.setApplydate(rs.getString(5));
			um.setIssuedate(rs.getString(6));
			
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

}
