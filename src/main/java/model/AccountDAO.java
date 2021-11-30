package model;

import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import db.ConnectionPoolMgr;
import util.HashingUtil;

public class AccountDAO {
	ConnectionPoolMgr pool = new ConnectionPoolMgr();
	
	public boolean insertUser(AccountVO vo) throws SQLException {
		HashingUtil hash = new HashingUtil();
		Connection con = null;
		PreparedStatement ps = null;
		int cnt = 0;
		boolean isSucceed = false;
		
		try {
			con = pool.getConnection();
			con.setAutoCommit(false);

			// -------------- Transaction --------------

			String sql = "insert into account(email, name, nickname, birth, address, tel) "
					+ " values(?,?,?,?,?,?)";
			ps = con.prepareStatement(sql);
			
			ps.setString(1, vo.getEmail());
			ps.setString(2, vo.getName());
			ps.setString(3, vo.getNickname());
			ps.setTimestamp(4, vo.getBirth());
			ps.setString(5, vo.getAddress());
			ps.setString(6, vo.getTel());
			cnt = ps.executeUpdate();

			if (cnt < 1)
				throw new SQLException();

			sql = "insert into hash values(?, ?, ?)";
			ps.close();
			ps = con.prepareStatement(sql);

			String salt = hash.makeNewSalt();
			String digest = hash.hashing(vo.getPw(), salt);
			ps.setString(1, vo.getEmail());
			ps.setString(2, digest);
			ps.setString(3, salt);

			cnt = ps.executeUpdate();
			// -----------------------------------------

			con.commit();
			isSucceed = true;
		} catch (SQLException | NoSuchAlgorithmException e) {
			con.rollback();
			e.printStackTrace();
		} finally {
			con.setAutoCommit(true);
			pool.dbClose(ps, con);
		}

		return isSucceed;
	}

	public boolean signin(AccountVO vo) throws SQLException {
		HashingUtil hash = new HashingUtil();
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;

		try {
			con = pool.getConnection();

			String sql = "select * from account where email = ?";
			ps = con.prepareStatement(sql);
			ps.setString(1, vo.getEmail());
			rs = ps.executeQuery();

			if (!rs.next())
				return false;

			sql = "select digest, salt from hash where email = ?";
			ps.close();
			ps = con.prepareStatement(sql);
			ps.setString(1, vo.getEmail());
			rs.close();
			rs = ps.executeQuery();

			rs.next();
			String dbDigest = rs.getString("digest");
			String salt = rs.getString("salt");
			String inputDigest = hash.hashing(vo.getPw(), salt);
			System.out.println("salt       : " + salt);
			System.out.println("dbDigest   : " + dbDigest);
			System.out.println("inputDigest: " + inputDigest);
			if (!dbDigest.equals(inputDigest))
				return false;

		} catch (SQLException | NoSuchAlgorithmException e) {
			e.printStackTrace();
		} finally {
			pool.dbClose(rs, ps, con);
		}

		return true;
	}
	
	public boolean checkDuplicate(String email) throws SQLException {
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;

		try {
			con = pool.getConnection();

			String sql = "select email from account where email = ?";
			ps = con.prepareStatement(sql);
			ps.setString(1, email);
			rs = ps.executeQuery();

			if (!rs.next())
				return false;

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			pool.dbClose(rs, ps, con);
		}

		return true;
	}
}