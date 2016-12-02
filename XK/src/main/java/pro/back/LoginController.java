package pro.back;

import javax.annotation.Resource;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;

import pro.inter.AdminMapper;
import pro.model.Admin;
@Controller("LoginController")
@RequestMapping("/back/loginManager")
public class LoginController {
	@Resource(name="adminMapper")
	private AdminMapper manager;
	@RequestMapping("/loginit")
	public String add(String aname,String apassword,HttpServletRequest req){
		Admin admin=manager.matchAdmin(aname,apassword);
		if(admin==null){
			return "login";
		}
		HttpSession session=req.getSession();
		session.setAttribute("adminId",admin.getaId());
		session.setAttribute("adminame", admin.getaName());
		session.setAttribute("adminrank", admin.getaRank());
		int aid = admin.getaId();
		manager.updatetime(aid);
		return "redirect:main.html";
	}
	@RequestMapping("/login")
	public String login(){
		return "login";
	}
	@RequestMapping("/loginout")
	public String loginout(HttpServletRequest req){
		HttpSession session=req.getSession();
		session.setAttribute("adminId",null);
		session.setAttribute("adminame", null);
		session.setAttribute("adminrank", null);
		return "login";
	}

}
