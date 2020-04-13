package dao;

import java.util.List;

import vo.MapVo;

public interface MapDao {
	
	// 해당 지점 위도 경도 구하기
	public MapVo map_one_branch(String info_branch);


}
