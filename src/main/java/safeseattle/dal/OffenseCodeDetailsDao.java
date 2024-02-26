package safeseattle.dal;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


import safeseattle.model.*;
public class OffenseCodeDetailsDao {
        protected ConnectionManager connectionManager;
        
        private static OffenseCodeDetailsDao instance = null;
        
        protected OffenseCodeDetailsDao() {
            connectionManager = new ConnectionManager();
        }
        
        public static OffenseCodeDetailsDao getInstance() {
            if (instance == null) {
                instance = new OffenseCodeDetailsDao();
            }
            return instance;
        }
        
        public OffenseCodeDetails create(OffenseCodeDetails offense) throws SQLException {
            String OffenseCodeDetail = 
                "INSERT INTO OffenseCodeDetails(OffenseCode,OffenseDescription,OffenseParentGroup,crimeAgainstCategory) " +
                "VALUES(?,?,?,?);";
            Connection connection = null;
            PreparedStatement insertStmt = null;
            //ResultSet resultKey = null;
            try {
                connection = connectionManager.getConnection();
                insertStmt = connection.prepareStatement(OffenseCodeDetail, Statement.RETURN_GENERATED_KEYS);
                insertStmt.setString(1, offense.getOffenseCode());
                insertStmt.setString(2, offense.getOffenseDescription());
                insertStmt.setString(3, offense.getOffenseParentGroup());
                insertStmt.setString(4, offense.getCrimeAgainstCategory().name());
                
                insertStmt.executeUpdate();
               
                return offense;
            } catch (SQLException e) {
                e.printStackTrace();
                throw e;
            } finally {
                if (connection != null) {
                    connection.close();
                }
                if (insertStmt != null) {
                    insertStmt.close();
                }
            }
        }
        
        public OffenseCodeDetails getOffenseCodeDetailsByOffenseCode(String code) throws SQLException {
            String selectOffenseDetails = 
                "SELECT OffenseCode,OffenseDescription,OffenseParentGroup,crimeAgainstCategory " +
                "FROM OffenseCodeDetails " +
                "WHERE OffenseCode=?;";
            Connection connection = null;
            PreparedStatement selectStmt = null;
            ResultSet results = null;
            try {
                connection = connectionManager.getConnection();
                selectStmt = connection.prepareStatement(selectOffenseDetails);
                selectStmt.setString(1, code);
                results = selectStmt.executeQuery();
                
                if (results.next()) {
                    
                    String offenseCode = code;
                    String offenseDescription = results.getString("OffenseDescription");
                    String offenseParentGroup = results.getString("OffenseParentGroup");
                    OffenseCodeDetails.CrimeAgainstCategory ctgy = OffenseCodeDetails.CrimeAgainstCategory.valueOf(
						results.getString("crimeAgainstCategory"));
                    
                    
                    OffenseCodeDetails offenseCodeDetails = new OffenseCodeDetails(offenseCode, offenseDescription, offenseParentGroup, ctgy);

                    return offenseCodeDetails;
                }
            } catch (SQLException e) {
                e.printStackTrace();
                throw e;
            } finally {
                if (connection != null) {
                    connection.close();
                }
                if (selectStmt != null) {
                    selectStmt.close();
                }
            }
            return null;
        }
        
       
        
        
        public OffenseCodeDetails delete(OffenseCodeDetails offenseCodeDetails) throws SQLException {
            String deleteOffenseD = "DELETE FROM OffenseCodeDetails WHERE OffenseCode=?;";
            Connection connection = null;
            PreparedStatement deleteStmt = null;
            try {
                connection = connectionManager.getConnection();
                deleteStmt = connection.prepareStatement(deleteOffenseD);
                deleteStmt.setString(1, offenseCodeDetails.getOffenseCode());
                deleteStmt.executeUpdate();
                return null;
            } catch (SQLException e) {
                e.printStackTrace();
                throw e;
            } finally {
                if (connection != null) {
                    connection.close();
                }
                if (deleteStmt != null) {
                    deleteStmt.close();
                }
            }
        }
        
    }