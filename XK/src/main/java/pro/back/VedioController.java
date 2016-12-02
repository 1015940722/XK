package pro.back;

import java.io.File;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.ServletContextAware;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import pro.inter.TypeMapper;
import pro.inter.VedioMapper;
import pro.model.Type;
import pro.model.Vedio;


@Controller("VedioController")
@RequestMapping("/back/vedioManager")
public class VedioController extends HttpServlet implements ServletContextAware{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Resource(name="vedioMapper")
	private VedioMapper manager;
	@Resource(name="typeMapper")
	private TypeMapper tmanager;
	private int pagesize = 10;
	private ServletContext servletContext;
	@Override
	public void setServletContext(ServletContext context) {
		this.servletContext  = context;
	}
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
	@RequestMapping("/findvedio")
	public String findvedio(ModelMap map,Integer startpage){
		if(startpage==null||startpage<=0){startpage=1;}
		int pageCount = this.getPageCount();
		if(startpage>pageCount){startpage=pageCount;}
		int startline = this.getStartRow(startpage);
		List<Vedio> vedio = manager.findvedio(startline,pagesize); 
		map.put("vedio", vedio);
		map.put("cz",1);
		map.put("pagecount",pageCount);
		map.put("page",startpage);
		return "vediolist";
	}
	@RequestMapping("/upload")
	public String upload(ModelMap map){
		List<Type> type = tmanager.findall();
		System.out.println(1);
		System.out.println(type.get(1).gettName());
		map.put("lei", type);
		return "upload";
	}
	@RequestMapping(value="/up",method=RequestMethod.POST)
	public String shangchuan(String title,String content,String kind,@RequestParam("file")CommonsMultipartFile file)throws Exception{
		String path = this.servletContext.getRealPath("/fileupload/");  //鑾峰彇鏈湴瀛樺偍璺緞
		System.out.println(path);
		String fileName = file.getOriginalFilename();
		String fileType = fileName.substring(fileName.lastIndexOf("."));
		//System.out.println(fileType);
		String temp=new Date().getTime() + fileType;
		File file2 = new File(path,temp); //鏂板缓涓�釜鏂囦欢
		try {
		    file.getFileItem().write(file2); //灏嗕笂浼犵殑鏂囦欢鍐欏叆鏂板缓鐨勬枃浠朵腑
		} catch (Exception e) {
		    e.printStackTrace();
		}
		Vedio vedio = new Vedio();
		vedio.setvContent(content);
		vedio.setvName(title);
		vedio.setvType(kind);
		vedio.setvPath(temp);
		manager.insert(vedio);
		return "redirect:findvedio.html";
	}
	@RequestMapping("/deletev")
	public String delete(ModelMap map,Integer id,Integer rank){
		manager.deleteByPrimaryKey(id);
		map.put("cz", 123);
		return "redirect:findvedio.html";
	}

	@RequestMapping("/main")
	public String index(){
		return "index";
	}
	@RequestMapping("/white")
	public String white(){
		return "white";
	}
}
