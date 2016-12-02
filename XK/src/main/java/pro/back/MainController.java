package pro.back;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller("MainController")
@RequestMapping("/back/mainManager")
public class MainController {
	@RequestMapping("/index")
	public String index(){
		System.out.println(1);
		return "index";
	}
	@RequestMapping("/zhuye")
	public String zhuye(){
		return "zhuye";
	}
}