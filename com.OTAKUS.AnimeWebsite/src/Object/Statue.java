package Object;

public enum Statue {
comingSoon(1,"Coming Soon"),
onGoing(2,"On Going"),
complete(3,"Complete");
	private int statueId;
	private String statue;
	
	private Statue() {
	}
	
	private Statue(int statueId,String statue) {
		this.statueId=statueId;
		this.statue=statue;
	}
	
	public int getStatueId() {
		return statueId;
	}
	
	public void setStatueId(int statueId) {
		this.statueId = statueId;
	}
	
	public String getStatue() {
		return statue;
	}
	
	public void setStatue(String statue) {
		this.statue = statue;
	}
	
}