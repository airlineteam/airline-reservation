package com.landers.airline.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.landers.airline.dto.QnaComment;
import com.landers.airline.dto.QnaDto;
import com.landers.airline.dto.QnaParam;
import com.landers.airline.service.QnaService;

@Controller
public class QnaController {

	@Autowired
	QnaService service;
	
	@GetMapping("qnalist.do")
	public String faqlist(Model model, QnaParam param) {
		System.out.println("QnaController qnalist " + new Date());
		System.out.println(param.toString());
				
		// 글목록
		List<QnaDto> list = service.qnalist(param);	
		
		// 글의 총수
		int count = service.allqna(param);	// 23		
		// 페이지 계산
		int pageQna = count / 10;	// 2
		if((count % 10) > 0) {
			pageQna = pageQna + 1;	// 2 + 1
		}		
		
		model.addAttribute("list", list);
		model.addAttribute("pageQna", pageQna);
		model.addAttribute("param", param);
		model.addAttribute("main", "qna/qnalist");
		
		return "customercenter/main";
	}
	
	@GetMapping("qnawrite.do")
	public String qnawrite(Model model) {
		System.out.println("QnaController qnawrite " + new Date());

		model.addAttribute("main", "qna/qnawrite");
		
		return "customercenter/main";
	}
	
	@PostMapping("qnawriteAf.do")
	public String qnawriteAf(QnaDto dto, Model model) {
		System.out.println("QnaController qnawriteAf " + new Date());
		
		boolean isS = service.qnawrite(dto);
		String qnawriteMsg = "QNAWRITE_SUCCESS";
		if(isS == false) {
			qnawriteMsg = "QNAWRITE_FAIL";
		}
		model.addAttribute("qnawriteMsg", qnawriteMsg);
		
		return "message";
	}
	
	@GetMapping("qnadetail.do")
	public String qnadetail(int seq, Model model) {
		System.out.println("QnaController qnadetail " + new Date());
		
		
		QnaDto dto = service.qnadetail(seq);
		boolean isS = service.qnareadcount(seq);
		model.addAttribute("dto", dto);
		model.addAttribute("main","qna/qnadetail");
		
		return "customercenter/main";
	}


	@ResponseBody
	@PostMapping("qnaCommentWriteAf.do")
	public String qnaCommentWriteAf(QnaComment com) {
		System.out.println("QnaController qnaCommentWriteAf() " + new Date());
		
		boolean isS = service.commentWrite(com);
	/*	if(isS) {
			System.out.println("댓글작성 성공!");
		}else {
			System.out.println("댓글작성 실패");
		}
		
		return "redirect:/qnadetail.do?seq=" + com.getSeq();	*/
		
		if(isS) {
			return "OK";
		}else {
			return "NO";
		}		
	}
	
	@ResponseBody
	@GetMapping("commentList.do")
	public List<QnaComment> commentList(int seq){
		System.out.println("QnaController commentList " + new Date());
		
		List<QnaComment> list = service.commentList(seq);
		return list;
	}
	
	@ResponseBody
	@GetMapping("commentDelete.do")
	public String commentDelete(int seq) {
		System.out.println("QnaController commentDelete() " + new Date());
		
		boolean isS = service.commentDelete(seq);
		if(isS) {
			System.out.println("글삭제 성공!");
		}else {
			System.out.println("글삭제 실패");
		}
		
		return "redirect:/qnalist.do";	
	}
	
	
	@GetMapping("qnaanswer.do")
	public String qnaanswer(int seq, Model model) {
		System.out.println("QnaController qnaanswer() " + new Date());
		
		QnaDto dto = service.qnadetail(seq);		
		model.addAttribute("qnadto", dto);
		model.addAttribute("main", "qna/qnaanswer");
		
		return "customercenter/main";
	}
	
	@PostMapping("qnaanswerAf.do")
	public String qnaanswerAf(QnaDto dto, Model model) {
		System.out.println("QnaController qnaanswerAf() " + new Date());
		
		boolean isS = service.QnaAnswer(dto);
		String answerMsg = "ANSWER_SUCCESS";
		if(isS == false) {
			answerMsg = "ANSWER_FAIL";
		}
		model.addAttribute("qnaanswerMsg", answerMsg);
		model.addAttribute("seq", dto.getSeq());
		
		return "message";
	}
	
	@GetMapping("qnaupdate.do")
	public String qnaupdate(int seq, Model model) {
		System.out.println("QnaController qnaupdate() " + new Date());
		
		QnaDto dto = service.qnadetail(seq);		
		model.addAttribute("dto", dto);
		model.addAttribute("main", "qna/qnaupdate");
		
		return "customercenter/main";
	}
	
	@GetMapping("qnaupdateAf.do")
	public String qnaupdateAf(QnaDto dto, Model model) {
		System.out.println("QnaController qnaupdateAf() " + new Date());
		
		boolean isS = service.qnaupdate(dto);
		String qnaupdateMsg = "UPDATE_SUCCESS";
		if(!isS) {
			qnaupdateMsg = "UPDATE_FAIL";
		}
		model.addAttribute("qnaupdateMsg", qnaupdateMsg);
		model.addAttribute("seq", dto.getSeq());
		
		return "message";
	}
	
	@GetMapping("qnacomplete.do")
	public String qnacomplete(int seq, Model model) {
		System.out.println("QnaController qnacomplete() " + new Date());
		
		boolean isS = service.qnacomplete(seq);
		String qnaupdateMsg = "COMPLETE_SUCCESS";
		if(!isS) {
			qnaupdateMsg = "COMPLETE_FAIL";
		}
		model.addAttribute("qnacompleteMsg", qnaupdateMsg);
		model.addAttribute("seq", seq);
		
		return "message";
	}
	
	@GetMapping("qnadelete.do")
	public String qnadelete(int seq) {
		System.out.println("QnaController qnadelete() " + new Date());
		
		boolean isS = service.qnadelete(seq);
		if(isS) {
			System.out.println("글삭제 성공!");
		}else {
			System.out.println("글삭제 실패");
		}
		
		return "redirect:/qnalist.do";	
	}
	
}







