package XMH.ldyb.chat.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PageJumpController {
	@RequestMapping("/{page}")
	public String jumpPage(@PathVariable String page) {
		return page;
	}
}
