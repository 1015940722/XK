package pro.back;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import pro.inter.MessageMapper;
import pro.model.Message;
import pro.model.Type;

@Controller("MessageController")
@RequestMapping("/back/messageManager")
public class MessageController {

	@Resource(name="messageMapper")
	private MessageMapper manager;
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
	@RequestMapping("/findm")
	public String findm(ModelMap map,Integer startpage){
		System.out.println(1);
		if(startpage==null||startpage<=0){startpage=1;}
		int pageCount = this.getPageCount();
		if(startpage>pageCount){startpage=pageCount;}
		int startline = this.getStartRow(startpage);
		List<Message> message = manager.findm(startline,pagesize);
		map.put("message", message);
		map.put("cz",1);
		map.put("pagecount",pageCount);
		map.put("page",startpage);
		return "findm";
	}
	@RequestMapping("/deletem")
	public String deletem(Integer mId){
		manager.deleteByPrimaryKey(mId);
		return "redirect:findm.html";
	}
}
