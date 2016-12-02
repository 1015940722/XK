package pro.front;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import pro.inter.TypeMapper;
import pro.inter.VedioMapper;
import pro.model.Type;
import pro.model.Vedio;


@Controller("QVedioController")
@RequestMapping("/front/qvedioManager")
public class VedioController {
	@Resource(name="vedioMapper")
	private VedioMapper manager;
	@Resource(name="typeMapper")
	private TypeMapper tmanager;
	private int pagesize = 12;
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
	@RequestMapping("/index")
	public String findvedio(ModelMap map,Integer startpage){
		if(startpage==null||startpage<=0){startpage=1;}
		int pageCount = this.getPageCount();
		if(startpage>pageCount){startpage=pageCount;}
		int startline = this.getStartRow(startpage);
		List<Vedio> vedio = manager.findvedio(startline,pagesize); 
		List<Type> type = tmanager.findall();
		map.put("type",type);
		map.put("file", vedio);
		map.put("cz",1);
		map.put("pagecount",pageCount);
		map.put("page",startpage);
		return "index1";
	}
	@RequestMapping("/findt")
	public String findtype(ModelMap map,String lei){
		System.out.println(lei);
		List<Vedio> vedio = manager.findtype(lei);
		List<Type> type = tmanager.findall();
		map.put("file", vedio);
		map.put("type",type);
		map.put("pagecount",1);
		map.put("page",1);
		return "index1";
	}
	@RequestMapping("/findv")
	public String findv(ModelMap map,String content){
		List<Vedio> vedio = manager.findv(content);
		List<Type> type = tmanager.findall();
		map.put("file", vedio);
		map.put("type",type);
		map.put("pagecount",1);
		map.put("page",1);
		return "index1";
	}
	@RequestMapping("/play")
	public String play(ModelMap map,Integer id){
		Vedio vedio = manager.selectByPrimaryKey(id);
		List<Type> type = tmanager.findall();
		map.put("vedio", vedio);
		map.put("type",type);
		return "seevedio";
	}
}
