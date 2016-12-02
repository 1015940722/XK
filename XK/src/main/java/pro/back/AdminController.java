package pro.back;

import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import pro.inter.AdminMapper;
import pro.model.Admin;

@Controller("AdminController")
@RequestMapping("/back/adminManager")
public class AdminController {
	@Resource(name="adminMapper")
	private AdminMapper manager;
	@RequestMapping("/adminlist")
	public String index(ModelMap map){
		List<Admin> admins = manager.findAdmin();
		map.put("admin",admins);
		return "adminlist";
	}
	@RequestMapping("/adminadd")
	public String add(){
		return "addAdmin";
	}
	@RequestMapping(value="/additAdmin",method=RequestMethod.POST)
	public String newAdmin(String aName,String aPassword,String aUsername){
		Admin admin = new Admin();
		System.out.println(aUsername);
		admin.setaRank(2);
		admin.setaName(aName);
		admin.setaUsername(aUsername);
		admin.setaPassword(aPassword);
		manager.insert(admin);
		return "redirect:/back/adminlist.html";
	}
	
	@RequestMapping("/deleteitAdmin")
	public String delete(Integer id){
		manager.deleteByPrimaryKey(id);
		return "redirect:/back/adminlist.html";
	}
}