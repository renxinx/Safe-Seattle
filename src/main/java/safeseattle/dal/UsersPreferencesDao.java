package safeseattle.dal;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import safeseattle.model.UsersPreferences;

public class UsersPreferencesDao {
	protected ConnectionManager connectionManager;
	
	private static UsersPreferencesDao instance = null;
	
	protected UsersPreferencesDao() {
		connectionManager = new ConnectionManager();
	}
	
	public static UsersPreferencesDao getinstance() {
		if (instance == null) {
			instance = new UsersPreferencesDao();
		}
		return instance;
	}
	
	
	public UsersPreferences create(UsersPreferences usersPreference) throws SQLException {
		String insertReport =
			"INSERT INTO UsersPreferences(UserId,Neighborhood,Notifications) " +
			"VALUES(?,?,?);";
		Connection connection = null;
		PreparedStatement insertStmt = null;
		try {
			connection = connectionManager.getConnection();
			insertStmt = connection.prepareStatement(insertReport,
				Statement.RETURN_GENERATED_KEYS);
			insertStmt.setInt(1, usersPreference.getUserId());
			insertStmt.setString(2,  usersPreference.getNeighborhood());
			insertStmt.setBoolean(3,  usersPreference.isNotifications());
			insertStmt.executeUpdate();
			
		
			return usersPreference;
			
		} catch (SQLException e) {
			e.printStackTrace();
			throw e;
		} finally {
			if(connection != null) {
				connection.close();
			}
			if(insertStmt != null) {
				insertStmt.close();
			}
		
		}
	}
	
	
	
	public UsersPreferences getUsersPreferenceByUserId(int UserId) throws SQLException {
		String selectComment =
			"SELECT UserId,Neighborhood,Notifications " +
			"FROM UsersPreferences " +
			"WHERE UserId=?;";
		Connection connection = null;
		PreparedStatement selectStmt = null;
		ResultSet results = null;
		try {
			connection = connectionManager.getConnection();
			selectStmt = connection.prepareStatement(selectComment);
			selectStmt.setInt(1, UserId);
			results = selectStmt.executeQuery();
			
			if(results.next()) {
				int resultRId = UserId;
				String neighborHood = results.getString("Neighborhood");
				Boolean notification = results.getBoolean("Notifications");
				
				UsersPreferences usersPreference = new UsersPreferences(resultRId, neighborHood,notification);
				return usersPreference;
			}
		} catch (SQLException e) {
			e.printStackTrace();
			throw e;
		} finally {
			if(connection != null) {
				connection.close();
			}
			if(selectStmt != null) {
				selectStmt.close();
			}
			if(results != null) {
				results.close();
			}
		}
		return null;
	}
	
	

	public UsersPreferences delete(UsersPreferences usersPreference) throws SQLException {
		String deletePeference = "DELETE FROM Reports WHERE UserId=?;";
		Connection connection = null;
		PreparedStatement deleteStmt = null;
		try {
			connection = connectionManager.getConnection();
			deleteStmt = connection.prepareStatement(deletePeference);
			deleteStmt.setInt(1, usersPreference.getUserId());
			deleteStmt.executeUpdate();

			
			return null;
		} catch (SQLException e) {
			e.printStackTrace();
			throw e;
		} finally {
			if(connection != null) {
				connection.close();
			}
			if(deleteStmt != null) {
				deleteStmt.close();
			}
		}
	}
	
}
	
	
	
	
