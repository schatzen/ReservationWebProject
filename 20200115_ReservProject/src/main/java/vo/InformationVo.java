package vo;

public class InformationVo {

	int info_idx;
	String info_branch;
	int info_room_cnt;
	String info_addr;
	String info_business_nr;
	String info_tel;

	public InformationVo() {
		// TODO Auto-generated constructor stub
	}

	public InformationVo(String info_branch, String info_addr, String info_tel) {
		super();
		this.info_branch = info_branch;
		this.info_addr = info_addr;
		this.info_tel = info_tel;
	}

	public int getInfo_idx() {
		return info_idx;
	}

	public void setInfo_idx(int info_idx) {
		this.info_idx = info_idx;
	}

	public String getInfo_branch() {
		return info_branch;
	}

	public void setInfo_branch(String info_branch) {
		this.info_branch = info_branch;
	}

	public int getInfo_room_cnt() {
		return info_room_cnt;
	}

	public void setInfo_room_cnt(int info_room_cnt) {
		this.info_room_cnt = info_room_cnt;
	}

	public String getInfo_addr() {
		return info_addr;
	}

	public void setInfo_addr(String info_addr) {
		this.info_addr = info_addr;
	}

	public String getInfo_business_nr() {
		return info_business_nr;
	}

	public void setInfo_business_nr(String info_business_nr) {
		this.info_business_nr = info_business_nr;
	}

	public String getInfo_tel() {
		return info_tel;
	}

	public void setInfo_tel(String info_tel) {
		this.info_tel = info_tel;
	}
	
}
