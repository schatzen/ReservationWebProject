package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.InformationVo;

@Repository("info_dao")
public class InformationDaoImpl implements InformationDao {

	@Autowired
	SqlSession sqlSession;

	@Override
	public List<InformationVo> info_list() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("information.info_list");
	}

	@Override
	public InformationVo info_one_branch(String info_branch) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("information.info_one_branch",info_branch);
	}

}
