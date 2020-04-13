package vo;

public class MapVo {

	int map_idx;
	String map_lang;
	String map_long;
	String map_branch;

	public MapVo() {
		// TODO Auto-generated constructor stub
	}
	

	public MapVo(String map_lang, String map_long, String map_branch) {
		super();
		this.map_lang = map_lang;
		this.map_long = map_long;
		this.map_branch = map_branch;
	}


	public int getMap_idx() {
		return map_idx;
	}

	public void setMap_idx(int map_idx) {
		this.map_idx = map_idx;
	}

	public String getMap_lang() {
		return map_lang;
	}

	public void setMap_lang(String map_lang) {
		this.map_lang = map_lang;
	}

	public String getMap_long() {
		return map_long;
	}

	public void setMap_long(String map_long) {
		this.map_long = map_long;
	}

	public String getMap_branch() {
		return map_branch;
	}

	public void setMap_branch(String map_branch) {
		this.map_branch = map_branch;
	}

}
