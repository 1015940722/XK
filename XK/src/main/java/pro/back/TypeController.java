package pro.back;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import pro.inter.TypeMapper;
import pro.inter.VedioMapper;
import pro.model.Type;

@Controller("typeController")
@RequestMapping("/back/typeManager")
public class TypeController {
	@Resource(name="typeMapper")
	private TypeMapper manager;
	@Resource(name="vedioMapper")
	private VedioMapper vmanager;
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
	@RequestMapping("/findtype")
	public String findtype(ModelMap map,Integer startpage){
		if(startpage==null||startpage<=0){startpage=1;}
		int pageCount = this.getPageCount();
		if(startpage>pageCount){startpage=pageCount;}
		int startline = this.getStartRow(startpage);
		List<Type> type = manager.findtype(startline,pagesize);
		map.put("type", type);
		map.put("cz",1);
		map.put("pagecount",pageCount);
		map.put("page",startpage);
		return "typelist";
	}
	@RequestMapping("typeadd")
	public String typeadd(){
		return "typeadd";
	}
	@RequestMapping("/addtype")
	public String addtype(ModelMap map,String tName){
		Type type = new Type();
		type.settName(tName);
		manager.insert(type);
		map.put("cz",123);
		return "redirect:/back/findtype.html";
	}
	@RequestMapping("/deletet")
	public String deletet(ModelMap map,Integer tId){
		manager.deleteByPrimaryKey(tId);
		map.put("cz", 123);
		return "redirect:/back/findtype.html";
	}
}
