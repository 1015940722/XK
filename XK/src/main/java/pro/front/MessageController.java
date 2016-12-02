package pro.front;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import pro.inter.MessageMapper;
import pro.inter.VedioMapper;
import pro.model.Message;

@Controller("QMessageController")
@RequestMapping("/front/qmessageManager")
public class MessageController {

	@Resource(name="messageMapper")
	private MessageMapper manager;
	
	@RequestMapping("/additPost")
	public String additm(String content){
		Message message = new Message();
		message.setmContent(content);
		manager.insert(message);
		return "redirect:index.htm";
	}
}
