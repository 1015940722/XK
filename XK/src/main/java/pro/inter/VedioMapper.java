package pro.inter;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import pro.model.Vedio;

public interface VedioMapper {
    int deleteByPrimaryKey(Integer vId);

    int insert(Vedio record);

    int insertSelective(Vedio record);

    Vedio selectByPrimaryKey(@Param("id")Integer id);

    int updateByPrimaryKeySelective(Vedio record);

    int updateByPrimaryKeyWithBLOBs(Vedio record);

    int updateByPrimaryKey(Vedio record);
    
    int getCount();
    
    List<Vedio> findvedio(@Param("startline")Integer startline,@Param("pagesize")Integer pagesize);
    
    List<Vedio> findtype(@Param("lei")String lei);
    
    List<Vedio> findv(@Param("content")String content);
}