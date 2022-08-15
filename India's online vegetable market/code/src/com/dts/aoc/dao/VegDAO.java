package com.dts.aoc.dao;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;

import com.dts.aoc.dto.VegDTO;
import com.dts.core.db.DbInterface;
import com.dts.core.util.DataObject;

public class VegDAO extends DataObject {

	static Connection con;
	public DbInterface db;
	private boolean flag;

	public VegDAO() {
		con = getConnection();
	}
	public boolean deleteVegInfo(int marketid) {
		try {
			con = getConnection();
			con.setAutoCommit(false);
			PreparedStatement pst = null;
			int i = 0;
			pst = con.prepareStatement("delete from VEG_NAME_TAB where VEG_ID=?");
			pst.setInt(1,marketid);
			i = pst.executeUpdate();
			if (i == 1) {
				flag = true;
				con.commit();
			} else {
				flag = false;
				con.rollback();
			}
		} catch (SQLException ex) {
			ex.printStackTrace();
			flag = false;
			try {
				con.rollback();
			} catch (SQLException sex) {
				sex.printStackTrace();
			}
		} catch (Exception e) {
			e.printStackTrace();
			flag = false;
			try {
				con.rollback();
			} catch (SQLException se) {
				se.printStackTrace();
			}
		}
		return flag;
	}
	
	public HashMap<Integer, VegDTO> getAllVegInfoByVegID(String path2) {
		HashMap<Integer, VegDTO> hm = new HashMap<Integer, VegDTO>();
		try {
			PreparedStatement ps = con
					.prepareStatement("select * FROM VEG_NAME_TAB order by VEG_ID");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				VegDTO dto = new VegDTO();
				dto.setVegID(rs.getInt(1));
				dto.setVegName(rs.getString(2));
				String pidinstring = "" + rs.getInt(1);
				pidinstring = pidinstring.trim();
				Blob b = rs.getBlob(3);
				if (b != null) {
					byte b1[] = b.getBytes(1, (int) b.length());
					//System.out.println(" path is " + path2);
					OutputStream fout = new FileOutputStream(path2 + "/"
							+ pidinstring + rs.getString(4));
					fout.write(b1);

					dto.setVegPic(pidinstring + rs.getString(4));
				//	System.out.println(pidinstring);
				} else {
					dto.setVegPic(pidinstring + rs.getString(4));
				}
				hm.put(rs.getInt(1), dto);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return hm;
	}

	
	
	public HashMap<Integer, VegDTO> getVegInfo(String path2) {
		HashMap<Integer, VegDTO> hm = new HashMap<Integer, VegDTO>();
		int i = 0;
		try {
			PreparedStatement ps = con
					.prepareStatement("select * FROM VEG_NAME_TAB");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				VegDTO dto = new VegDTO();
				dto.setVegID(rs.getInt(1));
				dto.setVegName(rs.getString(2));
				String pidinstring = "" + rs.getInt(1);
				pidinstring = pidinstring.trim();
				Blob b = rs.getBlob(3);
				if (b != null) {
					byte b1[] = b.getBytes(1, (int) b.length());
					//System.out.println(" path is " + path2);
					OutputStream fout = new FileOutputStream(path2 + "/"
							+ pidinstring + rs.getString(4));
					fout.write(b1);

					dto.setVegPic(pidinstring + rs.getString(4));
				//	System.out.println(pidinstring);
				} else {
					dto.setVegPic(pidinstring + rs.getString(4));
				}

				i = i + 1;
				hm.put(i, dto);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return hm;
	}

	public boolean addVegInfo(VegDTO obj) {
		try {
			con = getConnection();
			con.setAutoCommit(false);
			PreparedStatement pst = null;
			int i = 0;
			pst = con
					.prepareStatement("insert into VEG_NAME_TAB values((select nvl(max(VEG_ID),750000)+1 from VEG_NAME_TAB),?,?,?,?)");

			pst.setString(1, obj.getVegName());
			String photo = obj.getVegPic();

			//System.out.println("uploaded photo is=" + photo);
			File f = new File(photo);
			FileInputStream fis = new FileInputStream(f);
			//System.out.println("lenth of image file is===" + f.length());
			pst.setBinaryStream(2, fis, (int) f.length());
			pst.setString(3, photo.substring(photo.lastIndexOf('.'), photo
					.length()));
			pst.setString(4, obj.getLoginID());

			i = pst.executeUpdate();
			if (i == 1) {
				flag = true;
				con.commit();
			} else {
				flag = false;
				con.rollback();
			}
		} catch (SQLException ex) {
			ex.printStackTrace();
			flag = false;
			try {
				con.rollback();
			} catch (SQLException sex) {
				sex.printStackTrace();
			}
		} catch (Exception e) {
			e.printStackTrace();
			flag = false;
			try {
				con.rollback();
			} catch (SQLException se) {
				se.printStackTrace();
			}
		}
		return flag;
	}

}
