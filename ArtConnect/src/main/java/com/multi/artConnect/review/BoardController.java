package com.multi.artConnect.review;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;


@Controller
public class BoardController {
	
	@Autowired
	BoardDAO dao;
	
	@RequestMapping("review/boardList")
    public String boardList(Model model,
                            @RequestParam(name = "page", defaultValue = "1") int page,
                            @RequestParam(name = "size", defaultValue = "10") int size) {
        int totalCount = dao.getTotalCount();

        // 페이징 처리를 위한 정보 설정
        PageVO pageVO = new PageVO(page, size, totalCount);
        int start = pageVO.getStart();
        int end = pageVO.getSize();

        List<BoardVO> list = dao.selectWithPaging(start, end);
        model.addAttribute("list", list);
        model.addAttribute("pageVO", pageVO);

        return "review/boardList";
    }
	
	@RequestMapping("review/boardPost")
	public String boardPost() {
		return "review/boardPost";
	}
	
	@RequestMapping("review/boardPostOk")
	public String boardPostOk(BoardVO vo, MultipartFile file) {
		
		 // 파일 업로드 처리
        if (file != null && !file.isEmpty()) {
            try {
                // 실제 파일을 저장하는 로직 구현 (파일 업로드 경로, 파일명 등 설정)
                String filePath = "C:\\artconnectFile" + File.separator + file.getOriginalFilename();
                file.transferTo(new File(filePath));

                // BoardVO에 파일 정보 설정
                vo.setFile(file);
                vo.setFilePath(filePath);
            } catch (IOException e) {
                // 파일 업로드 중 오류 처리
                e.printStackTrace();
                // 오류 발생 시 어떻게 처리할지에 대한 로직 추가
            }
        }


		
		dao.boardPostOk(vo);
		return "redirect:boardList";
	}
	

	@RequestMapping("review/boardOne")
	public void boardOne(int reviewNO, Model model) {
		//먼저 조회수 증가시킴
		dao.increaseHit(reviewNO);
		
		//그 후에 글 가져옴
		BoardVO one = dao.one(reviewNO);
		//모델에 추
		model.addAttribute("board", one);
	}
	
	
	@RequestMapping("review/boardDel")
	public String boardDel(int reviewNO) {
		dao.del(reviewNO);
		return "redirect:/review/boardList";
	}
	
	@RequestMapping("review/boardModify")  // 수정 폼으로 이동
    public String boardModify(int reviewNO, Model model) {
        BoardVO one = dao.one(reviewNO);
        model.addAttribute("board", one);
        return "review/boardModify";
    }

    @RequestMapping("review/boardModifyOk")  // 수정 처리
    public String boardModifyOk(BoardVO vo) {
        dao.boardModifyOk(vo);
        return "redirect:boardOne?reviewNO=" + vo.getReviewNO();
    }
	
	
}