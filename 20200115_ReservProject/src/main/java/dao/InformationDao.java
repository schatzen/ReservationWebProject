package dao;

import java.util.List;

import vo.InformationVo;

public interface InformationDao {
	
	// 지점 information 정보 구하기
	public List<InformationVo> info_list();
	
	// 해당 조건 지점 information 정보 구하기
	public InformationVo info_one_branch(String info_branch);

	

}
