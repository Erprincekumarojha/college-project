package com.dts.aoc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;

import com.dts.aoc.dto.MarketDTO;
import com.dts.core.db.DbInterface;
import com.dts.core.util.DataObject;

public class MarketDAO extends DataObject {

	static Connection con;
	public DbInterface db;
	private boolean flag;

	public MarketDAO() {
		con = getConnection();
	}
	public boolean deleteMarketInfo(int marketid) {
		try {
			con = getConnection();
			con.setAutoCommit(false);
			PreparedStatement pst = null;
			int i = 0;
			pst = con.prepareStatement("delete from MARKET_NAME_TAB where MARKET_ID=?");

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
	
	public HashMap<Integer, MarketDTO> getAllMarketNameByMarketID() {
		HashMap<Integer, MarketDTO> hm = new HashMap<Integer, MarketDTO>();
		try {
			PreparedStatement ps = con.prepareStatement("select * FROM MARKET_NAME_TAB order by MARKET_ID");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				MarketDTO dto = new MarketDTO();				
				dto.setMarketID(rs.getInt(1));
				dto.setMarketName(rs.getString(2));
				dto.setMarketAdd(rs.getString(3));
				dto.setSu(rs.getInt(4));
				dto.setMo(rs.getInt(5));
				dto.setTu(rs.getInt(6));
				dto.setWe(rs.getInt(7));
				dto.setTh(rs.getInt(8));
				dto.setFr(rs.getInt(9));
				dto.setSa(rs.getInt(10));
				hm.put(rs.getInt(1), dto);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return hm;
	}
	public HashMap<Integer, MarketDTO> getMarketInfo() {
		HashMap<Integer, MarketDTO> hm = new HashMap<Integer, MarketDTO>();
		int i = 0;
		try {
			PreparedStatement ps = con.prepareStatement("select * FROM MARKET_NAME_TAB");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				MarketDTO dto = new MarketDTO();				
				dto.setMarketID(rs.getInt(1));
				dto.setMarketName(rs.getString(2));
				dto.setMarketAdd(rs.getString(3));
				dto.setSu(rs.getInt(4));
				dto.setMo(rs.getInt(5));
				dto.setTu(rs.getInt(6));
				dto.setWe(rs.getInt(7));
				dto.setTh(rs.getInt(8));
				dto.setFr(rs.getInt(9));
				dto.setSa(rs.getInt(10));
				i = i + 1;
				hm.put(i, dto);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return hm;
	}

	public boolean addMarketInfo(MarketDTO obj) {
		try {
			con = getConnection();
			con.setAutoCommit(false);
			PreparedStatement pst = null;
			int i = 0;
			pst = con
					.prepareStatement("insert into MARKET_NAME_TAB values((select nvl(max(MARKET_ID),250000)+1 from MARKET_NAME_TAB),?,?,?,?,?,?,?,?,?,?)");

			pst.setString(1, obj.getMarketName());
			pst.setString(2, obj.getMarketAdd());
			pst.setInt(3, obj.getSu());
			pst.setInt(4, obj.getMo());
			pst.setInt(5, obj.getTu());
			pst.setInt(6, obj.getWe());
			pst.setInt(7, obj.getTh());
			pst.setInt(8, obj.getFr());
			pst.setInt(9, obj.getSa());
			pst.setString(10, obj.getLoginID());
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
