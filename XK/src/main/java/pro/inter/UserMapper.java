package pro.inter;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import pro.model.User;

public interface UserMapper {
    int deleteByPrimaryKey(Integer uId);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer uId);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKeyWithBLOBs(User record);

    int updateByPrimaryKey(User record);
    
    List<User> findall(@Param("startline")Integer startline,@Param("pagesize")Integer pagesize);
    
    int getCount();
    
    
}