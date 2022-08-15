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

import com.dts.core.dao.AbstractDataAccessObject;
import com.dts.core.util.CoreHash;
import com.dts.core.util.DateWrapper;
import com.dts.core.util.LoggerManager;
import com.dts.pro.bean.OrderShipModel;
import com.dts.project.model.AccountModel;
import com.dts.project.model.CustomerModel;
public class CustomerDAO extends AbstractDataAccessObject {
	public boolean flag=false;
	public Connection con=null;
	public CustomerDAO() {
		// TODO Auto-generated constructor stub
	}

	
	
public CustomerModel addCustomerProfile(CustomerModel addcust,AccountModel  am) {
		
		String photo=addcust.getCustphoto();
		String adrsprof=addcust.getAdrsprof();
		CustomerModel cm=null;
		CallableStatement cstmt=null;
		  try 
		    {
			  System.out.println("photo="+photo);
	        	java.io.File f=new File(photo);
	        	FileInputStream fis=new FileInputStream(f); 
		    	
	        	java.io.File f1=new File(adrsprof);
	        	FileInputStream fis1=new FileInputStream(f1);
	        	
	        	cm=new CustomerModel();
	        	con=getConnection();	
	        	System.out.println("---------CustomerDAO--------------------------------"+con);
		        cstmt=con.prepareCall("{ call ADD_CUSTOMER(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)}");
         cstmt.setString(1, addcust.getCustfname());
         System.out.println("--addcust.getCustfname()--"+addcust.getCustfname());
         cstmt.setString(2, addcust.getCustmname());
         System.out.println("--addcust.getCustmname()--"+addcust.getCustmname());
         cstmt.setString(3, addcust.getCustlname());
         System.out.println("--addcust.getCustlname()--"+addcust.getCustlname());
         cstmt.setString(4, DateWrapper.parseDate(addcust.getDob()));
         System.out.println("--addcust.getDob()--"+addcust.getDob());
         cstmt.setString(5, DateWrapper.parseDate(addcust.getDoj()));
         System.out.println("--addcust.getDoj()--"+addcust.getDoj());
         cstmt.setString(6, addcust.getPhno());
         System.out.println("--addcust.getPhno()--"+addcust.getPhno());
         cstmt.setString(7, addcust.getEmailid());
         System.out.println("--addcust.getEmailid()--"+addcust.getEmailid());
         cstmt.setString(8, addcust.getAddress());
         System.out.println("--addcust.getAddress()--"+addcust.getAddress());
         cstmt.setString(9, addcust.getGender());
         System.out.println("--addcust.getGender()--"+addcust.getGender());
         cstmt.setString(10,addcust.getMstatus());
         System.out.println("--addcust.getMstatus()--"+addcust.getMstatus());
         cstmt.setBinaryStream(11,fis,(int)f.length());
         System.out.println("--f.length()--"+f.length());
         cstmt.setInt(12, addcust.getQualid());
         System.out.println("--addcust.getQualid()--"+addcust.getQualid());
         cstmt.setInt(13, addcust.getDeptid());
         System.out.println("--addcust.getDeptid()--"+addcust.getDeptid());
         cstmt.setInt(14, addcust.getDesigid());
         System.out.println("--addcust.getDesigid()--"+addcust.getDesigid());
         cstmt.setBinaryStream(15,fis1,(int)f1.length());
         System.out.println("--f1.length()--"+f1.length());
         
         cstmt.setInt(16, am.getAcountypeid());
         System.out.println("------am.getAcountypeid()-------"+am.getAcountypeid());
         cstmt.setString(17, DateWrapper.parseDate(am.getApplydate()));
         System.out.println("---------am.getApplydate()------------"+am.getApplydate());
         cstmt.setString(18, am.getNomineename());
         System.out.println("-----am.getNomineename()------"+am.getNomineename());
         cstmt.registerOutParameter(19,Types.INTEGER);
         cstmt.registerOutParameter(20,Types.VARCHAR);
         cstmt.registerOutParameter(21,Types.VARCHAR);
        // System.out.println("----cstmt.getInt(19)---------------------------"+cstmt.getInt(19));
        // System.out.println("----cstmt.getString(20)-------------------------"+cstmt.getString(20));
        // System.out.println("----cstmt.getString(21)------------------------"+cstmt.getString(21));
         
           
         
         flag=cstmt.execute();
         System.out.println("----------flag------------"+flag);
		         if(!flag)
		         {
		          //flag=true;
		         // con.commit();
		         
		        	 cm.setAccno(cstmt.getInt(19));
		             cm.setCustuname(cstmt.getString(20));
		             cm.setCustpass(cstmt.getString(21));  
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
		    return cm;
		
	}
	




public boolean UpdateCustomerProfile(CustomerModel updatecust){
	
	String photo=updatecust.getCustphoto();
	String adprf=updatecust.getAdrsprof();
	CallableStatement cstmt=null;
	  try 
	    {
		  System.out.println("photo="+photo);
        	java.io.File f=new File(photo);
        	FileInputStream fis=new FileInputStream(f); 
	    	
        	
        	java.io.File f1=new File(adprf);
        	FileInputStream fis1=new FileInputStream(f1); 
        	
        	
        	con=getConnection();		       
	        cstmt=con.prepareCall("{ call UPDATE_CUSTOMER(?,?,?,?,?,?,?)}");
     
	   cstmt.setInt(1, updatecust.getCustid());	           
	   cstmt.setString(2, updatecust.getPhno());
	   cstmt.setString(3, updatecust.getEmailid());
	   cstmt.setString(4, updatecust.getAddress());
	   cstmt.setString(5, updatecust.getMstatus());
	   cstmt.setBinaryStream(6,fis,(int)f.length());
	   cstmt.setBinaryStream(7,fis1,(int)f1.length());
     
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




public boolean addCustOreders(OrderShipModel ordrshipmodel){
	
	
	CallableStatement cstmt=null;
	  try 
	    {
		  
        	
        	con=getConnection();		       
	        cstmt=con.prepareCall("{ call ADD_CUST_ORDR(?,?,?,?,?,?)}");
     cstmt.setString(1, ordrshipmodel.getOrdertype());
     cstmt.setInt(2, ordrshipmodel.getCustid());
     cstmt.setInt(3, ordrshipmodel.getProductid());    
     cstmt.setInt(4, ordrshipmodel.getQuantity());
     cstmt.setInt(5, ordrshipmodel.getHotelid());
     cstmt.setString(6, DateWrapper.parseDate(ordrshipmodel.getOrderdate()));
    
    
     
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



public boolean AcceptCustomersRequestDetails(int custid){
	
	
	CallableStatement cstmt=null;
	  try 
	    {
		  
        	
        	con=getConnection();		       
	        cstmt=con.prepareCall("{ call CHANGE_CUST_REQUEST(?)}");
     
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


public CoreHash getAllCustProfile(String image,String addressprofs){
	
	CoreHash aCoreHash=new CoreHash();
	aCoreHash.clear();
	System.out.println("aCoreHash--"+aCoreHash.isEmpty());
	
	
	int sno=1;
	
	ResultSet rs=null;
	CustomerModel um=null;
	Statement st=null;
        try
        {
        	con=getConnection();     	
        	st=con.createStatement();
      
		String sql="SELECT CUSTID,CFSTNAME,TO_CHAR(DOB,'DD-MM-YYYY'),TO_CHAR(DOR,'DD-MM-YYYY'),CONTACTNO,EMAILID,ADRESS,MSTATUS,PHOTO,USERNAME,PASSWORD,ARDSPROOF FROM CUSTOMER WHERE  STATUS=upper('ACTIVE')";	
			rs=st.executeQuery(sql);
			while(rs.next()){
				
			um=new CustomerModel();		
			
			int cid=rs.getInt(1);
			
			um.setCustid(cid);			
			um.setCustfname(rs.getString(2));
			
			um.setDob(rs.getString(3));
			um.setDoj(rs.getString(4));			
			um.setPhno(rs.getString(5));
			um.setEmailid(rs.getString(6));
			um.setAddress(rs.getString(7));			
			um.setMstatus(rs.getString(8));			
			Blob bb =rs.getBlob(9);
			byte bb1[]=bb.getBytes(1,(int)bb.length());
			OutputStream fout=new FileOutputStream(image+"/"+cid+".gif");
			fout.write(bb1);			
			um.setCustphoto(cid+".gif");
			
			um.setCustuname(rs.getString(10));
			um.setCustpass(rs.getString(11));	
			
			Blob bbb =rs.getBlob(12);
			byte bbb1[]=bb.getBytes(1,(int)bbb.length());
			OutputStream fout1=new FileOutputStream(addressprofs+"/"+cid+".gif");
			fout1.write(bbb1);			
			um.setCustphoto(cid+".gif");
			
			
			
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
	

public CoreHash getAllCustNames(){
	
	CoreHash aCoreHash=new CoreHash();
	aCoreHash.clear();
	System.out.println("aCoreHash--"+aCoreHash.isEmpty());
	
	
	int sno=1;
	
	ResultSet rs=null;
	CustomerModel um=null;
	Statement st=null;
        try
        {
        	con=getConnection();     	
        	st=con.createStatement();
       	String sql="SELECT CUSTID,CFSTNAME from CUSTOMER";
			
			rs=st.executeQuery(sql);
			while(rs.next()){
				
			um=new CustomerModel();		
			
			int cid=rs.getInt(1);
			
			um.setCustid(cid);
			um.setCustfname(rs.getString(2));			
			
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
	
public CoreHash getAllNewRequestedCustomersDetails(String image,String addressprofs,String username){
	
	CoreHash aCoreHash=new CoreHash();
	aCoreHash.clear();
	System.out.println("aCoreHash--"+aCoreHash.isEmpty());
	
	
	int sno=1;
	
	ResultSet rs=null;
	CustomerModel um=null;
	Statement st=null;
        try
        {
        	con=getConnection();     	
        	st=con.createStatement();
        	System.out.println("-----username-------------------------->"+username);
       	String sql="SELECT CUSTID,CFSTNAME,CMIDNAME,CLSTNAME,TO_CHAR(DOB,'DD-MM-YYYY'),TO_CHAR(DOR,'DD-MM-YYYY'),CONTACTNO,EMAILID,ADRESS,GENDER,MSTATUS,PHOTO,USERNAME,PASSWORD,LOGINTYPE,ARDSPROOF FROM CUSTOMER WHERE upper(status)=upper('deactive')";
			
			rs=st.executeQuery(sql);
			while(rs.next()){
				
			um=new CustomerModel();		
			
			int cid=rs.getInt(1);			
			um.setCustid(cid);
			um.setCustfname(rs.getString(2));
			um.setCustmname(rs.getString(3));
			um.setCustlname(rs.getString(4));
			um.setDob(rs.getString(5));
			um.setDoj(rs.getString(6));			
			um.setPhno(rs.getString(7));
			um.setEmailid(rs.getString(8));
			um.setAddress(rs.getString(9));
			um.setGender(rs.getString(10));
			um.setMstatus(rs.getString(11));
			
			Blob bb =rs.getBlob(12);
			byte bb1[]=bb.getBytes(1,(int)bb.length());
			OutputStream fout1=new FileOutputStream(image+"/"+cid+".gif");
			fout1.write(bb1);			
			um.setCustphoto(cid+".gif");
			
			um.setCustuname(rs.getString(13));
			um.setCustpass(rs.getString(14));			
			um.setLogintype(rs.getString(15));
			
			int cid1=rs.getInt(1);
			
			Blob bb2 =rs.getBlob(16);
			byte bb12[]=bb.getBytes(1,(int)bb2.length());
			OutputStream fout2=new FileOutputStream(addressprofs+"/"+cid1+".gif");
			fout2.write(bb12);			
			um.setAdrsprof(cid1+".gif");
			
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





public CustomerModel getPerticularCustProfile(String image,String addressprofs,int cstid){
	
int sno=1;
	
	ResultSet rs=null;
	CustomerModel um=null;
	Statement st=null;
        try
        {
        	con=getConnection();     	
        	st=con.createStatement();
        	//System.out.println("-----username-------------------------->"+username);
       	String sql="SELECT CUSTID,CFSTNAME,CMIDNAME,CLSTNAME,TO_CHAR(DOB,'DD-MM-YYYY'),TO_CHAR(DOR,'DD-MM-YYYY'),CONTACTNO,EMAILID,ADRESS,GENDER,MSTATUS,PHOTO,USERNAME,PASSWORD,LOGINTYPE,ARDSPROOF FROM CUSTOMER WHERE CUSTID="+cstid+")";
			
			rs=st.executeQuery(sql);
			while(rs.next()){
				
			um=new CustomerModel();		
			
			int cid=rs.getInt(1);			
			um.setCustid(cid);
			um.setCustfname(rs.getString(2));
			um.setCustmname(rs.getString(3));
			um.setCustlname(rs.getString(4));
			um.setDob(rs.getString(5));
			um.setDoj(rs.getString(6));			
			um.setPhno(rs.getString(7));
			um.setEmailid(rs.getString(8));
			um.setAddress(rs.getString(9));
			um.setGender(rs.getString(10));
			um.setMstatus(rs.getString(11));
			
			Blob bb =rs.getBlob(12);
			byte bb1[]=bb.getBytes(1,(int)bb.length());
			OutputStream fout1=new FileOutputStream(image+"/"+cid+".gif");
			fout1.write(bb1);			
			um.setCustphoto(cid+".gif");
			
			um.setCustuname(rs.getString(13));
			um.setCustpass(rs.getString(14));			
			um.setLogintype(rs.getString(15));
			
			int cid1=rs.getInt(1);
			
			Blob bb2 =rs.getBlob(16);
			byte bb12[]=bb.getBytes(1,(int)bb2.length());
			OutputStream fout2=new FileOutputStream(addressprofs+"/"+cid1+".gif");
			fout2.write(bb12);			
			um.setAdrsprof(cid1+".gif");
						
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
			
			
		 
	


public CustomerModel getCustProfile(String image,String addressprofs,String username){
	
	int sno=1;
	
	ResultSet rs=null;
	CustomerModel um=null;
	Statement st=null;
        try
        {
        	con=getConnection();     	
        	st=con.createStatement();
        	System.out.println("-----username-------------------------->"+username);
       	String sql="SELECT CUSTID,CFSTNAME,CMIDNAME,CLSTNAME,TO_CHAR(DOB,'DD-MM-YYYY'),TO_CHAR(DOR,'DD-MM-YYYY'),CONTACTNO,EMAILID,ADRESS,GENDER,MSTATUS,PHOTO,USERNAME,PASSWORD,LOGINTYPE,ARDSPROOF FROM CUSTOMER WHERE upper(USERNAME)=upper('"+username+"')";
			
			rs=st.executeQuery(sql);
			while(rs.next()){
				
			um=new CustomerModel();		
			
			int cid=rs.getInt(1);			
			um.setCustid(cid);
			um.setCustfname(rs.getString(2));
			um.setCustmname(rs.getString(3));
			um.setCustlname(rs.getString(4));
			um.setDob(rs.getString(5));
			um.setDoj(rs.getString(6));			
			um.setPhno(rs.getString(7));
			um.setEmailid(rs.getString(8));
			um.setAddress(rs.getString(9));
			um.setGender(rs.getString(10));
			um.setMstatus(rs.getString(11));
			
			Blob bb =rs.getBlob(12);
			byte bb1[]=bb.getBytes(1,(int)bb.length());
			OutputStream fout1=new FileOutputStream(image+"/"+cid+".gif");
			fout1.write(bb1);			
			um.setCustphoto(cid+".gif");
			
			um.setCustuname(rs.getString(13));
			um.setCustpass(rs.getString(14));			
			um.setLogintype(rs.getString(15));
			
			int cid1=rs.getInt(1);
			
			Blob bb2 =rs.getBlob(16);
			byte bb12[]=bb.getBytes(1,(int)bb2.length());
			OutputStream fout2=new FileOutputStream(addressprofs+"/"+cid1+".gif");
			fout2.write(bb12);			
			um.setAdrsprof(cid1+".gif");
						
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













public CustomerModel getPerCustIDBYName(String username){
	
	int sno=1;
	
	ResultSet rs=null;
	CustomerModel um=null;
	Statement st=null;
        try
        {
        	con=getConnection();     	
        	st=con.createStatement();
        	
       	String sql="SELECT CUSTID,CFSTNAME,USERNAME FROM CUSTOMER WHERE upper(USERNAME)=upper('"+username+"')";
			
			rs=st.executeQuery(sql);
			while(rs.next()){				
			um=new CustomerModel();				
			int cid=rs.getInt(1);			
			um.setCustid(cid);
			um.setCustfname(rs.getString(2));			
			um.setCustuname(rs.getString(3));
					
									
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
