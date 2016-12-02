package pro.back;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import pro.inter.UserMapper;
import pro.model.User;


@Controller("UserController")
@RequestMapping("/back/userManager")
public class UserController {
	@Resource(name="userMapper")
	private UserMapper manager;
	private int pagesize = 10;
	public int getPageCount(){
		int a = manager.getCount();
		if(a%pagesize!=0){
			return a/pagesize+1;
		}else{
			return a/pagesize;
		}
	}
	public int getStartRow(int startPage){
		if(startPage<=1){
			startPage=1;
		}else if(startPage>this.getPageCount()){
			startPage=this.getPageCount();
		}
		return pagesize*(startPage-1);
	}
	@RequestMapping("/findstu")
	public String findstu(ModelMap map,Integer startpage){
		if(startpage==null||startpage<=0){startpage=1;}
		int pageCount = this.getPageCount();
		if(startpage>pageCount){startpage=pageCount;}
		int startline = this.getStartRow(startpage);
		List<User> user = manager.findall(startline,pagesize); 
		map.put("stu", user);
		map.put("cz",1);
		map.put("pagecount",pageCount);
		map.put("page",startpage);
		return "stulist";
	}
	@RequestMapping("/deleteu")
	public String delete(ModelMap map,Integer id,Integer rank){
		manager.deleteByPrimaryKey(id);
		String where  = null;
		if(rank==1){where = "stulist";}
		else{where = "tealist";}
		map.put("lv", rank);
		map.put("cz", 123);
		return where;
	}
}
                                                               