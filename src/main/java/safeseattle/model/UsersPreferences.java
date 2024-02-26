package safeseattle.model;

public class UsersPreferences {
	protected int UserId;
	protected String Neighborhood;
	protected boolean Notifications;
	
	public UsersPreferences(int userId, String neighborhood, boolean notifications) {
		
		UserId = userId;
		Neighborhood = neighborhood;
		Notifications = notifications;
	}
	
	
	public UsersPreferences(String neighborhood, boolean notifications) {
		
		Neighborhood = neighborhood;
		Notifications = notifications;
	}

	public int getUserId() {
		return UserId;
	}

	public void setUserId(int userId) {
		UserId = userId;
	}

	public String getNeighborhood() {
		return Neighborhood;
	}

	public void setNeighborhood(String neighborhood) {
		Neighborhood = neighborhood;
	}

	public boolean isNotifications() {
		return Notifications;
	}

	public void setNotifications(boolean notifications) {
		Notifications = notifications;
	}
	
	
}