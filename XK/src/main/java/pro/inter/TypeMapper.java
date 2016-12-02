package pro.inter;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import pro.model.Type;

public interface TypeMapper {
    int deleteByPrimaryKey(Integer tId);

    int insert(Type record);

    int insertSelective(Type record);

    Type selectByPrimaryKey(Integer tId);

    int updateByPrimaryKeySelective(Type record);

    int updateByPrimaryKey(Type record);
    
    int getCount();
    List<Type> findall();
    
    String findtypename(@Param("typeTId")Integer typeTId);
    
    List<Type> findtype(@Param("startline")Integer startline,@Param("pagesize")Integer pagesize);
}