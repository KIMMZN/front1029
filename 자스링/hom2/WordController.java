package www.silver.hom;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class WordController {
	
	
	private Map<String, String> wordlist;
	
	private WordController() {
		wordlist = new HashMap<>();
		
		wordlist.put("apple","사과");
		wordlist.put("사과","apple");
		wordlist.put("banana", "바나나");
		wordlist.put("바나나", "banana");
		wordlist.put("grape", "포도");
		wordlist.put("포도", "grape");
		wordlist.put("computer", "컴퓨터");
		wordlist.put("컴퓨터", "computer");
		
	};
	
	
	
	@RequestMapping
	public String home2() {
		
		
		return "/word/index";
	}
	
	@RequestMapping(value = "word2", method = RequestMethod.GET)
	public String home3(@RequestParam("search") String search, Model m) {
		//Map선언, 초기화
		///Map<String, String> wordlist = new HashMap<>();
	//	wordlist.put("apple","사과");
		//wordlist.put("banana", "바나나");
		
		String result = wordlist.get(search);
		
		if(result == null) {
			result = "찾는 값이 없음";
		}
		
		
		System.out.println(search);
		m.addAttribute("search", search);
		m.addAttribute("result", result);
		
		
		return "/word/index2";
	}
}
