package pro.inter;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import pro.model.Message;

public interface MessageMapper {
    int deleteByPrimaryKey(Integer mId);

    int insert(Message record);

    int insertSelective(Message record);

    Message selectByPrimaryKey(Integer mId);

    int updateByPrimaryKeySelective(Message record);

    int updateByPrimaryKeyWithBLOBs(Message record);

    int updateByPrimaryKey(Message record);
    
    int getCount();
    
    List<Message> findm(@Param("startline")Integer startline,@Param("pagesize")Integer pagesize);
}