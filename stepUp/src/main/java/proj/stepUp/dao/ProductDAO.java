package proj.stepUp.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import proj.stepUp.vo.ProductVO;

@Repository
public class ProductDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	public int insertProduct(ProductVO vo) {
		return sqlSession.insert("proj.stepUp.mapper.productMapper.insertProduct", vo);
	}
	
	public ProductVO selectProductIndex(int prdIndex) {
		return sqlSession.selectOne("proj.stepUp.mapper.productMapper.selectProductIndex", prdIndex);
	}
	
	public List<ProductVO> selectProductByDate(int maxPrd) {
		return sqlSession.selectList("proj.stepUp.mapper.productMapper.selectProductByDate", maxPrd);
	}
}
