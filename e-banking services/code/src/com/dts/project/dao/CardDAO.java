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
import com.dts.project.model.AccountModel;
import com.dts.project.model.CardModel;
import com.dts.project.model.LoanModel;

public class CardDAO extends AbstractDataAccessObject {
	public boolean flag=false;
	public Connection con=null;
public boolean addCardTypes(CardModel am){
		
		
		
		CallableStatement cstmt=null;
		  try 
		    {
			 
	        	
	        	con=getConnection();		       
		        cstmt=con.prepareCall("{ call ADD_CART_TYPES_MSTR(?,?)}");
                cstmt.setString(1, am.getCardtypename());       
                cstmt.setDouble(2, am.getMinbal());         
         
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
	
public boolean ModifyPerticularCardTypes(CardModel am){
	
	
	
	CallableStatement cstmt=null;
	  try 
	    {
		 
        	
        	con=getConnection();		       
	        cstmt=con.prepareCall("{ call CHANGE_CART_TYPES_MSTR(?,?,?)}");
            cstmt.setInt(1, am.getCardtypeid());       
            cstmt.setDouble(2, am.getMinbal());         
            cstmt.setString(3, am.getStatus()); 
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


public boolean CustApplyForNewCardTypes(CardModel am){
	
	
	
	CallableStatement cstmt=null;
	  try 
	    {
		 
        	
        	con=getConnection();		       
	        cstmt=con.prepareCall("{ call ADD_CUST_CARD_REQUEST(?,?,?,?)}");
	        cstmt.setInt(1, am.getCustid());
	        cstmt.setInt(2, am.getCustaccno());
	        cstmt.setInt(3, am.getCardtypeid());               
            cstmt.setString(4,DateWrapper.parseDate(am.getApplydate())); 
            
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


public boolean AcceptCustCardRequestDetails(int custid){
	
	
	CallableStatement cstmt=null;
	  try 
	    {
		  
        	
        	con=getConnection();		       
	        cstmt=con.prepareCall("{ call ACCPT_CUST_CARD_REQUEST(?)}");
     
               cstmt.setInt(1,custid);   
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




public CoreHash getAllCardTypesDetails(){
	
	CoreHash aCoreHash=new CoreHash();
	aCoreHash.clear();
	System.out.println("aCoreHash--"+aCoreHash.isEmpty());
	
	
	int sno=1;	
	ResultSet rs=null;
	CardModel um=null;
	Statement st=null;
        try
        {
        	con=getConnection();     	
        	st=con.createStatement();
       	String sql="select *from CARDMSTR where upper(status)=upper('active')";
			
			rs=st.executeQuery(sql);
			while(rs.next()){
				
			um=new CardModel();		
			
			int ctid=rs.getInt(1);			
			um.setCardtypeid(ctid);
			um.setCardtypename(rs.getString(2));
			um.setMinbal(rs.getDouble(3));			
			um.setStatus(rs.getString(4));
					
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

public CoreHash getAllCustCardRequests(){
	
	CoreHash aCoreHash=new CoreHash();
	aCoreHash.clear();
	System.out.println("aCoreHash--"+aCoreHash.isEmpty());
	
	
	int sno=1;	
	ResultSet rs=null;
	CardModel  um=null;
	Statement st=null;
        try
        {
        	con=getConnection();     	
        	st=con.createStatement();
       	String sql="SELECT  CD.CARDNO, CD.CUSTID, C.CFSTNAME, CD.CUSTACCNO, CD.CARDTYPEID, CM.CARDTYPENAME, CD.PINNO, TO_CHAR(CD.APLIEDDATE,'DD-MM-YYYY')   FROM CARDDTLS  CD,CARDMSTR  CM,CUSTOMER C WHERE  (C.CUSTID=CD.CUSTID)AND (CD.CARDTYPEID=CM.CARDTYPEID)  AND CM.STATUS=UPPER('ACTIVE') AND (CD.STATUS=UPPER('DEACTIVE'))";
			
			rs=st.executeQuery(sql);
			while(rs.next()){
				
			um=new CardModel();		
			um.setCardno(rs.getLong(1));
			um.setCustid(rs.getInt(2));
			um.setCustname(rs.getString(3));
			um.setCustaccno(rs.getInt(4));
			um.setCardtypeid(rs.getInt(5));
			um.setCardtypename(rs.getString(6));
			um.setPinno(rs.getInt(7));
			um.setApplydate(rs.getString(8));	
			
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




public CoreHash getPerticularCustCardStatusDetails(int custid){
	
	CoreHash aCoreHash=new CoreHash();
	aCoreHash.clear();
	System.out.println("aCoreHash--"+aCoreHash.isEmpty());
	
	
	int sno=1;	
	ResultSet rs=null;
	CardModel  um=null;
	Statement st=null;
        try
        {
        	con=getConnection();     	
        	st=con.createStatement();
       	String sql="SELECT  CD.CARDNO, CD.CUSTID, C.CFSTNAME, CD.CUSTACCNO, CD.CARDTYPEID, CM.CARDTYPENAME, CD.PINNO, TO_CHAR(CD.APLIEDDATE,'DD-MM-YYYY'),TO_CHAR(CD.ISUEDATE,'DD-MM-YYYY')   FROM CARDDTLS  CD,CARDMSTR  CM,CUSTOMER C WHERE  (C.CUSTID=CD.CUSTID)AND (CD.CARDTYPEID=CM.CARDTYPEID)  AND CM.STATUS=UPPER('ACTIVE') AND (CD.STATUS=UPPER('ACTIVE')) AND CD.CUSTID="+custid;
			
			rs=st.executeQuery(sql);
			while(rs.next()){
				
			um=new CardModel();		
			um.setCardno(rs.getLong(1));
			um.setCustid(rs.getInt(2));
			um.setCustname(rs.getString(3));
			um.setCustaccno(rs.getInt(4));
			um.setCardtypeid(rs.getInt(5));
			um.setCardtypename(rs.getString(6));
			um.setPinno(rs.getInt(7));
			um.setApplydate(rs.getString(8));	
			um.setIssuedate(rs.getString(9));
			
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

public CardModel getPerticularCardTypesDetails(int cardid){
	
	CoreHash aCoreHash=new CoreHash();
	aCoreHash.clear();
	System.out.println("aCoreHash--"+aCoreHash.isEmpty());
	
	
	int sno=1;	
	ResultSet rs=null;
	CardModel um=null;
	Statement st=null;
        try
        {
        	con=getConnection();     	
        	st=con.createStatement();
       	String sql="select *from CARDMSTR where upper(status)=upper('active') and CARDTYPEID="+cardid;
			
			rs=st.executeQuery(sql);
			while(rs.next()){
				
			um=new CardModel();		
			
			int ctid=rs.getInt(1);			
			um.setCardtypeid(ctid);
			um.setCardtypename(rs.getString(2));
			um.setMinbal(rs.getDouble(3));			
			um.setStatus(rs.getString(4));
					
			// aCoreHash.put(new Integer(sno),um);
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
	 catch(Exception e){e.printStackTrace();}
	}
	return um;
}

}
