package safeseattle.model;


public class OffenseCodeDetails {
	protected String OffenseCode;
	protected String OffenseDescription;
	protected String OffenseParentGroup;
	protected CrimeAgainstCategory crimeAgainstCategory;
	
	public enum CrimeAgainstCategory {
		SOCIETY, PROPERTY, PERSON, NOT_A_CRIME
	}
	
	
	public OffenseCodeDetails(String offenseCode, String offenseDescription, String offenseParentGroup,
			CrimeAgainstCategory crimeAgainstCategory) {
		super();
		OffenseCode = offenseCode;
		OffenseDescription = offenseDescription;
		OffenseParentGroup = offenseParentGroup;
		this.crimeAgainstCategory = crimeAgainstCategory;
	}


	public OffenseCodeDetails(String offenseDescription, String offenseParentGroup,
			CrimeAgainstCategory crimeAgainstCategory) {
		super();
		OffenseDescription = offenseDescription;
		OffenseParentGroup = offenseParentGroup;
		this.crimeAgainstCategory = crimeAgainstCategory;
	}


	public String getOffenseCode() {
		return OffenseCode;
	}


	public void setOffenseCode(String offenseCode) {
		OffenseCode = offenseCode;
	}


	public String getOffenseDescription() {
		return OffenseDescription;
	}


	public void setOffenseDescription(String offenseDescription) {
		OffenseDescription = offenseDescription;
	}


	public String getOffenseParentGroup() {
		return OffenseParentGroup;
	}


	public void setOffenseParentGroup(String offenseParentGroup) {
		OffenseParentGroup = offenseParentGroup;
	}


	public CrimeAgainstCategory getCrimeAgainstCategory() {
		return crimeAgainstCategory;
	}


	public void setCrimeAgainstCategory(CrimeAgainstCategory crimeAgainstCategory) {
		this.crimeAgainstCategory = crimeAgainstCategory;
	}
	
	
	
	
	
	
	
}