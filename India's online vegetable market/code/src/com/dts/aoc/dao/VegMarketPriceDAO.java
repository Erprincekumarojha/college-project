package com.dts.aoc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;

import com.dts.aoc.dto.VegMarketPriceDTO;
import com.dts.core.db.DbInterface;
import com.dts.core.util.DataObject;

public class VegMarketPriceDAO extends DataObject {

	static Connection con;
	public DbInterface db;
	private boolean flag;

	public VegMarketPriceDAO() {
		con = getConnection();
	}

	public boolean deleteVegPriceInfoByMarketID(int mid) {
		try {
			con = getConnection();
			con.setAutoCommit(false);
			PreparedStatement pst = null;
			int i = 0;
			String sql="delete from VEG_MARKET_PRICE_TAB where MARKET_ID="+mid+"";
			System.out.println(sql);
			pst = con.prepareStatement(sql);
			i = pst.executeUpdate();
			if (i>=1) {
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

	

	public boolean deleteVegPriceInfoByVegID(int vid) {
		try {
			con = getConnection();
			con.setAutoCommit(false);
			PreparedStatement pst = null;
			int i = 0;
			String sql="delete from VEG_MARKET_PRICE_TAB where VEG_ID="+vid+"";
			System.out.println(sql);
			pst = con.prepareStatement(sql);
			i = pst.executeUpdate();
			if (i>= 1) {
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

	
	
	
	public boolean deleteVegPriceInfoByVMPID(int vmpid) {
		try {
			con = getConnection();
			con.setAutoCommit(false);
			PreparedStatement pst = null;
			int i = 0;
			pst = con
					.prepareStatement("delete from VEG_MARKET_PRICE_TAB where VMP_ID=?");

			pst.setInt(1, vmpid);
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

	
	
	public HashMap<Integer, VegMarketPriceDTO> getVegPriceInfoByVegID(String vid) {
		HashMap<Integer, VegMarketPriceDTO> hm = new HashMap<Integer, VegMarketPriceDTO>();
		int i = 0;
		try {
			PreparedStatement ps = con.prepareStatement("select *  FROM VEG_MARKET_PRICE_TAB where VEG_ID=?");
			ps.setInt(1,Integer.parseInt(vid.trim()));
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				VegMarketPriceDTO dto = new VegMarketPriceDTO();
				dto.setVmpID(rs.getInt(1));
				dto.setMarketID(rs.getInt(2));
				dto.setVegID(rs.getInt(3));
				dto.setVegCost(rs.getString(4));
				dto.setVegCostPer(rs.getString(5));
				dto.setVegCostStatus(rs.getString(6));
				dto.setVegAvailable(rs.getString(7));
				dto.setVegCostDate(rs.getString(8));
				dto.setVegCostTime(rs.getString(9));
				i = i + 1;
				hm.put(i, dto);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return hm;
	}
	
	
	
	
	public HashMap<Integer, VegMarketPriceDTO> getVegPriceInfoByMarketID(String mid) {
		HashMap<Integer, VegMarketPriceDTO> hm = new HashMap<Integer, VegMarketPriceDTO>();
		int i = 0;
		try {
			PreparedStatement ps = con.prepareStatement("select *  FROM VEG_MARKET_PRICE_TAB where MARKET_ID=?");
			ps.setInt(1,Integer.parseInt(mid.trim()));
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				VegMarketPriceDTO dto = new VegMarketPriceDTO();
				dto.setVmpID(rs.getInt(1));
				dto.setMarketID(rs.getInt(2));
				dto.setVegID(rs.getInt(3));
				dto.setVegCost(rs.getString(4));
				dto.setVegCostPer(rs.getString(5));
				dto.setVegCostStatus(rs.getString(6));
				dto.setVegAvailable(rs.getString(7));
				dto.setVegCostDate(rs.getString(8));
				dto.setVegCostTime(rs.getString(9));
				i = i + 1;
				hm.put(i, dto);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return hm;
	}
	
	
	
	public HashMap<Integer, VegMarketPriceDTO> getVegPriceInfoByMarketID() {
		HashMap<Integer, VegMarketPriceDTO> hm = new HashMap<Integer, VegMarketPriceDTO>();
		int i = 0;
		try {
			PreparedStatement ps = con
					.prepareStatement("select *  FROM VEG_MARKET_PRICE_TAB order by MARKET_ID");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				VegMarketPriceDTO dto = new VegMarketPriceDTO();
				dto.setVmpID(rs.getInt(1));
				dto.setMarketID(rs.getInt(2));
				dto.setVegID(rs.getInt(3));
				dto.setVegCost(rs.getString(4));
				dto.setVegCostPer(rs.getString(5));
				dto.setVegCostStatus(rs.getString(6));
				dto.setVegAvailable(rs.getString(7));
				dto.setVegCostDate(rs.getString(8));
				dto.setVegCostTime(rs.getString(9));
				i = i + 1;
				hm.put(i, dto);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return hm;
	}

	public boolean updateVegPriceInfoByVMPID(VegMarketPriceDTO obj) {
		try {
			con = getConnection();
			con.setAutoCommit(false);
			PreparedStatement pst = null;
			int i = 0;
			pst = con
					.prepareStatement("Update VEG_MARKET_PRICE_TAB set VEG_COST=?, VEG_COST_PER =?, VEG_COST_STATUS =?, VEG_AVAILABLE =?, VEG_COST_DATE =?, VEG_COST_TIME =? where VMP_ID=?");
			pst.setString(1, obj.getVegCost());
			pst.setString(2, obj.getVegCostPer());
			pst.setString(3, obj.getVegCostStatus());
			pst.setString(4, obj.getVegAvailable());
			pst.setString(5, obj.getVegCostDate());
			pst.setString(6, obj.getVegCostTime());
			pst.setInt(7, obj.getVmpID());

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

	public boolean checkVegPriceByMarketInfoAvali(VegMarketPriceDTO obj) {
		boolean f = false;
		try {
			con = getConnection();
			PreparedStatement ps = con
					.prepareStatement("select * from VEG_MARKET_PRICE_TAB where MARKET_ID=? and VEG_ID=?");
			ps.setInt(1, obj.getMarketID());
			ps.setInt(2, obj.getVegID());
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				f = true;
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return f;
	}

	public boolean addVegPriceInfo(VegMarketPriceDTO obj) {
		try {
			con = getConnection();
			con.setAutoCommit(false);
			PreparedStatement pst = null;
			int i = 0;
			pst = con
					.prepareStatement("insert into VEG_MARKET_PRICE_TAB values((select nvl(max(VMP_ID),7500)+1 from VEG_MARKET_PRICE_TAB),?,?,?,?,?,?,?,?,?)");

			pst.setInt(1, obj.getMarketID());
			pst.setInt(2, obj.getVegID());
			pst.setString(3, obj.getVegCost());
			pst.setString(4, obj.getVegCostPer());
			pst.setString(5, obj.getVegCostStatus());
			pst.setString(6, obj.getVegAvailable());
			pst.setString(7, obj.getVegCostDate());
			pst.setString(8, obj.getVegCostTime());
			pst.setString(9, obj.getLoginID());

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
