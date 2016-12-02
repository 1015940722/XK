package pro.inter;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import pro.model.Admin;

public interface AdminMapper {
    int deleteByPrimaryKey(Integer aId);

    int insert(Admin record);

    int insertSelective(Admin record);

    Admin selectByPrimaryKey(Integer aId);

    int updateByPrimaryKeySelective(Admin record);

    int updateByPrimaryKey(Admin record);
    
    Admin matchAdmin(@Param("aname")String username,@Param("apassword")String password);
    int updatetime(@Param("aid")Integer aid);
    
    List<Admin> findAdmin();
}