package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.MapVo;

@Repository("map_dao")
public class MapDaoImpl implements MapDao {

	@Autowired
	SqlSession sqlSession;

	@Override
	public MapVo map_one_branch(String info_branch) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("map.map_one_branch", info_branch);
	}
	
	

	
}
