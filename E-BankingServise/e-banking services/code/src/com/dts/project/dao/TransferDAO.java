package com.dts.project.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Types;

import com.dts.project.model.TransferModel;
import com.dts.core.dao.AbstractDataAccessObject;
import com.dts.core.util.CoreHash;
import com.dts.project.model.AccountModel;

public class TransferDAO extends AbstractDataAccessObject {
	public boolean flag=false;
	public Connection con=null;
	 int myflag;
	public TransferDAO() {
		// TODO Auto-generated constructor stub
	}

	
	
public boolean addCustDepositeAmount(TransferModel tm){
		
		
		
		CallableStatement cstmt=null;
		  try 
		    {
			 
	        	
	        	con=getConnection();		       
		        cstmt=con.prepareCall("{ call ADD_DEPOSITE(?,?,?)}");
                
		        cstmt.setInt(1,tm.getCustid()); 
                cstmt.setInt(2,tm.getFromaccno()); 
                cstmt.setDouble(3,tm.getTransamt());     
         
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
	
public int withDrawCustAmount(TransferModel tm){
	
	
	
	CallableStatement cstmt=null;
	  try 
	    {
		 
        	
        	con=getConnection();		       
	        cstmt=con.prepareCall("{ call ADD_WITHDRAW(?,?,?,?,?)}");
            
	        cstmt.setInt(1,tm.getCustid()); 
            cstmt.setInt(2,tm.getFromaccno()); 
            cstmt.setDouble(3,tm.getTransamt());
            cstmt.setString(4,tm.getPinno()); 
            cstmt.registerOutParameter(5,Types.INTEGER);
            
	       int i= cstmt.executeUpdate();
	      myflag=cstmt.getInt(5);;
	         if((i==1)&&(myflag==1))
	         {
	          flag=true;
	          con.commit();
	         
	         }
	         else if((i==1)&&(myflag==0))
	         {
	        	 flag=false;
	        	 con.rollback();
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
	    return myflag;
	
}




public int TransAmtFromAcnoToDAcno(TransferModel tm){
	
	
	
	CallableStatement cstmt=null;
	  try 
	    {
		 
        	
        	con=getConnection();		       
	        cstmt=con.prepareCall("{ call TRANSAMT_FRMACNO_TOACNO(?,?,?,?,?,?)}");
            
	        cstmt.setInt(1,tm.getCustid()); 
            cstmt.setInt(2,tm.getFromaccno()); 
            cstmt.setInt(3,tm.getToaccno());
            cstmt.setDouble(4,tm.getTransamt());
            cstmt.setString(5,tm.getPinno()); 
            cstmt.registerOutParameter(6,Types.INTEGER);
            
	       int i= cstmt.executeUpdate();
	      myflag=cstmt.getInt(6);
	         if((i==1)&&(myflag==1))
	         {
	          flag=true;
	          con.commit();
	         
	         }
	         else if((i==1)&&(myflag==0))
	         {
	        	 flag=false;
	        	 con.rollback();
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
	    return myflag;
	
}


public TransferModel getPinCustDetails(TransferModel um1){
	
	
	int sno=1;	
	ResultSet rs=null;
	TransferModel  um=null;
	Statement st=null;
        try
        {
        	con=getConnection();     	
        	st=con.createStatement();
       	String sql="SELECT  PINNO,CUSTID  FROM CARDDTLS  WHERE CUSTID="+um1.getCustid();
			
			rs=st.executeQuery(sql);
			while(rs.next()){
				
			um=new TransferModel();		
			um.setPinno(rs.getString(1));
			System.out.println("----pin in DAO---"+rs.getString(1));
			//um.setFromaccno(rs.getInt(2));
			//System.out.println("-------rs.getInt(2)-----"+rs.getInt(2));
			
             }
	}
	catch(Exception e)
	{e.printStackTrace();
		//LoggerManager.writeLogWarning(e);
	}
	finally
	{
	 try{
		 if(con!=null)
			 con.close();
		 
	 }
	 catch(Exception e){e.printStackTrace();}
	}
	return um;
}


public TransferModel getBalanceDetailsOfCustomer(int custid){
	
	
	int sno=1;	
	ResultSet rs=null;
	TransferModel  um=null;
	Statement st=null;
        try
        {
        	con=getConnection();     	
        	st=con.createStatement();
       	String sql="SELECT T.TAXAMOUNT , T.CUSTID,C.CFSTNAME FROM TRANSFERAMT T,CUSTOMER C WHERE (C.CUSTID=T.CUSTID)  AND T.TXID=(SELECT  MAX(TXID) FROM TRANSFERAMT  WHERE  CUSTID="+custid+")";
			
			rs=st.executeQuery(sql);
			while(rs.next()){
				
			um=new TransferModel();		
			um.setTaxamt(rs.getDouble(1));
			um.setCustid(rs.getInt(2));
			um.setCustname(rs.getString(3));
			System.out.println("----pin in DAO---"+rs.getString(1));
			
			
             }
	}
	catch(Exception e)
	{e.printStackTrace();
		//LoggerManager.writeLogWarning(e);
	}
	finally
	{
	 try{
		 if(con!=null)
			 con.close();
		 
	 }
	 catch(Exception e){e.printStackTrace();}
	}
	return um;
}



public CoreHash getAllTransactionDetails(String ttype,String fdate,String tdate){
	
	CoreHash aCoreHash=new CoreHash();
	aCoreHash.clear();
	System.out.println("aCoreHash--"+aCoreHash.isEmpty());
	
	
	int sno=1;	
	ResultSet rs=null;
	TransferModel  um=null;
	Statement st=null;
        try
        {
        	con=getConnection();     	
        	st=con.createStatement();
       	String sql="SELECT T.CUSTID,C.CFSTNAME,T.FROMACOUNTNO,T.TRANSAMT,TO_CHAR(T.TXDATE,'DD-MM-YYYY'),T.TXTYPE,T.TOACOUNTNO  FROM  TRANSFERAMT T,CUSTOMER C WHERE (C.CUSTID=T.CUSTID)  AND  UPPER(T.TXTYPE)=UPPER('"+ttype+"') AND t.TXDATE  BETWEEN TO_DATE('"+fdate+"','DD-MM-YYYY')  AND  TO_DATE('"+tdate+"' ,'DD-MM-YYYY')";			
			rs=st.executeQuery(sql);
			while(rs.next()){
				
			um=new TransferModel();		
			
			um.setCustid(rs.getInt(1));
			um.setCustname(rs.getString(2));
			um.setFromaccno(rs.getInt(3));
			um.setTaxamt(rs.getDouble(4));
			um.setTxdate(rs.getString(5));
			um.setTxtype(rs.getString(6));
			um.setToaccno(rs.getInt(7));
			System.out.println("----pin in DAO---"+rs.getString(1));

			
			 aCoreHash.put(new Integer(sno),um);
			    sno++;
			
             }
	}
	catch(Exception e)
	{e.printStackTrace();
		//LoggerManager.writeLogWarning(e);
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



public CoreHash getPertCustTxDetails(String ttype,String fdate,String tdate,int custid){
	
	CoreHash aCoreHash=new CoreHash();
	aCoreHash.clear();
	System.out.println("aCoreHash--"+aCoreHash.isEmpty());
	
	
	int sno=1;	
	ResultSet rs=null;
	TransferModel  um=null;
	Statement st=null;
        try
        {
        	con=getConnection();     	
        	st=con.createStatement();
       	//String sql="SELECT T.CUSTID,C.CFSTNAME,T.FROMACOUNTNO,T.TRANSAMT,TO_CHAR(T.TXDATE,'DD-MM-YYYY'),T.TXTYPE,T.TOACOUNTNO  FROM  TRANSFERAMT T,CUSTOMER C WHERE (C.CUSTID=T.CUSTID)  AND  UPPER(T.TXTYPE)=UPPER('"+ttype+"') AND (T.CUSTID="+custid+") AND (t.TXDATE  BETWEEN TO_DATE('"+fdate+"','DD-MM-YYYY')  AND  TO_DATE('"+tdate+"' ,'DD-MM-YYYY'))";			
			
       	String sql="SELECT T.CUSTID,C.CFSTNAME,T.FROMACOUNTNO,T.TRANSAMT,TO_CHAR(T.TXDATE,'DD-MM-YYYY'),T.TXTYPE,T.TOACOUNTNO  FROM  TRANSFERAMT T,CUSTOMER C WHERE (C.CUSTID=T.CUSTID)  AND  UPPER(T.TXTYPE)=UPPER('"+ttype+"') AND (T.CUSTID="+custid+") AND (t.TXDATE  BETWEEN TO_DATE('"+fdate+"','DD-MM-YYYY')  AND  TO_DATE('"+tdate+"' ,'DD-MM-YYYY'))";
       	
       	rs=st.executeQuery(sql);
			while(rs.next()){
				
			um=new TransferModel();		
			
			um.setCustid(rs.getInt(1));
			um.setCustname(rs.getString(2));
			um.setFromaccno(rs.getInt(3));
			um.setTaxamt(rs.getDouble(4));
			um.setTxdate(rs.getString(5));
			um.setTxtype(rs.getString(6));
			um.setToaccno(rs.getInt(7));
			System.out.println("----pin in DAO---"+rs.getString(1));

			
			 aCoreHash.put(new Integer(sno),um);
			    sno++;
			
             }
	}
	catch(Exception e)
	{e.printStackTrace();
		//LoggerManager.writeLogWarning(e);
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
}
