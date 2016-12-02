package pro.front;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import pro.inter.UserMapper;
import pro.inter.VedioMapper;
import pro.model.User;
import pro.model.Vedio;


@Controller("QMainController")
@RequestMapping("/front/mainManager")
public class MainController {
	@Resource(name="vedioMapper")
	private VedioMapper vmanager;
	@Resource(name="userMapper")
	private UserMapper umanager;
	@RequestMapping("/index")
	public String index(ModelMap map){
		
		return "index1";
	}
	@RequestMapping("/zhuye")
	public String zhuye(){
		return "zhuye";
	}
}