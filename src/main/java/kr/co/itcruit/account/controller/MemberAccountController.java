package kr.co.itcruit.account.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


import kr.co.itcruit.ServiceResult;
import kr.co.itcruit.account.service.IMemberAccountService;
import kr.co.itcruit.alarm.service.IAlarmService;
import kr.co.itcruit.vo.AccountVO;
import kr.co.itcruit.vo.AlarmVO;
import kr.co.itcruit.vo.CustomUser;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/account/member")
public class MemberAccountController {

	@Inject
	private IMemberAccountService memAccountService;
	
	@Inject
	private IAlarmService alarmService;
	
	// sms 확인
	@RequestMapping(value = "/phoneCheck.do", method = RequestMethod.POST)
	public ResponseEntity<String> sendSMS(@RequestBody Map<String, String> map,
			Model model){
		
		String phone = map.get("accountTell");
		log.info("asdfasdfasdf   컨트롤러" + phone);
		int randomNum = (int) ((Math.random()*(99999 - 10000 + 1)) + 10000);
		memAccountService.phoneandnumber(phone, randomNum); // 번호와 인증번호 서비스로 전달
		log.info("asdfasdfasdf   randomNum컨트롤러" + randomNum);
		String random = Integer.toString(randomNum);
		log.info("asdfasdfasdf   random컨트롤러" + random);
		return new ResponseEntity<String>(random, HttpStatus.OK);
		
	}
	
	
	// 회원가입
	@RequestMapping(value="/signup.do")
	public String memberSignup(HttpServletRequest req, AccountVO accountVO,
			Model model, RedirectAttributes ra){
		
		String goPage = "";
		Map<String, String> errors = new HashMap<String, String>();
		if(StringUtils.isBlank(accountVO.getAccountNm())) {
			errors.put("accuntNm", "아이디 입력");
		}
		if(StringUtils.isBlank(accountVO.getAccountPswd())) {
			errors.put("accuntPswd", "비밀번호 입력");
		}
		
		// 에러발생
		if(errors.size() > 0) {
			model.addAttribute("errors", errors);
			model.addAttribute("accountVO", accountVO);
			goPage = "conn/registerForm";
		}else {
			// 정상데이터
			ServiceResult result = memAccountService.signup(req, accountVO);
			if(result.equals(ServiceResult.OK)) { // 가입 성공
				ra.addFlashAttribute("message", "회원가입 완료");
				goPage = "redirect:/main/loginForm.do";
			}else {	// 가입하기 실패
				model.addAttribute("message", "서버에러, 재시도!");
				model.addAttribute("account", accountVO);
				goPage = "conn/registerForm";
			}
		}
		
		return goPage;
	}
	
	//로그인
	@RequestMapping(value="/signin.do")
	public String memberSignin(HttpSession session, AccountVO accountVO, 
			Model model, RedirectAttributes ra){
		
		String goPage = "";
//		Map<String, String> errors = new HashMap<String, String>();
//		if(StringUtils.isBlank(accountVO.getAccountId())) {
//			errors.put("accuntNm", "아이디 입력");
//		}
//		if(StringUtils.isBlank(accountVO.getAccountPswd())) {
//			errors.put("accuntPswd", "비밀번호 입력");
//		}
//		
//		if(errors.size() > 0) {
//			log.info("에얼에러에러");
//			model.addAttribute("errors", errors);
//			model.addAttribute("account", accountVO);
//			goPage = "conn/loginForm";
//		}else {
//			AccountVO account = memAccountService.memberSignin(accountVO);
			CustomUser user = (CustomUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
			log.info("일반user {} ", user);
			AccountVO account = user.getAccount();
			log.info("일반account {} ", account);
			
			
			
			if(account != null) {
				
				String accountSttsCmmncd = account.getAccountSttsCmmncd();
				
				if(accountSttsCmmncd.equals("STTS0102")) {
					log.info("정지된계정입니다");
//					ra.addFlashAttribute("message", "정지된계정입니다.");
					ra.addFlashAttribute("stop", "정지된계정입니다.");
					goPage = "redirect:/main/loginForm.do";
				}else {
					String auth = account.getAuthCmmncd();
					String accountId = account.getAccountId();
					if(auth.equals("AUTH102")) {
						log.info("성공");
						
						
						
						session.setAttribute("SessionInfo", account);
						goPage = "redirect:/main/index";
					}else {
						model.addAttribute("message", "개인회원로그인창입니다.");
						goPage = "conn/loginForm";
					}
				}
				
				
			}else {
				log.info("실패");
				model.addAttribute("message", "로그인 실패, 재입력");
				model.addAttribute("account", account);
				goPage = "conn/loginForm";
			}
			
//		}
		
		return goPage;
		
	}
	
	// 아이디 비교
	@RequestMapping(value="/checkId.do", method = RequestMethod.POST)
	public ResponseEntity<String> checkId(@RequestBody AccountVO accountVO){
		
		String id = memAccountService.checkId(accountVO);
		
		return new ResponseEntity<String>(id, HttpStatus.OK);
		
	}
	
	// 아이디찾기
	@RequestMapping(value="/searchId.do", method = RequestMethod.POST)
	public ResponseEntity<AccountVO> memberSearchId(@RequestBody AccountVO accountVO,
			Model model){
		
		AccountVO account = memAccountService.searchId(accountVO);
		
		return new ResponseEntity<AccountVO>(account, HttpStatus.OK);
		
	}
//	public String memberSearchIdByMail(HttpServletRequest req, AccountVO accountVO,
//			Model model){
//		return "";
//	}
	
	
	// 비밀번호 찾기
	@RequestMapping(value="/searchPw.do", method = RequestMethod.POST)
	public ResponseEntity<AccountVO> memberSearchPw(@RequestBody AccountVO accountVO,
			Model model){
		
		AccountVO account = memAccountService.searchPw(accountVO);
		
		return new ResponseEntity<AccountVO>(account, HttpStatus.OK);
		
	}
//	public String memberSearchPwByMail(){
//		return "";
//	}
	
	// 카카오 로그인
	@RequestMapping(value = "/kakaoLogin.do", method = RequestMethod.POST)
	public ResponseEntity<String> kakaoLogin(@RequestBody AccountVO accountVO,
			Model model, HttpSession session){
		System.out.println("!!!!!! " + accountVO);
		String loginYn = "";
		
		ServiceResult result = memAccountService.kakaoSignup(accountVO);
		if(result.equals(ServiceResult.OK)) {
			log.info("등록 성공");
			model.addAttribute("account", accountVO);
			session.setAttribute("SessionInfo", accountVO);
			loginYn = "y";
		}else {
			log.info("등록 실패");
			loginYn = "n";
		}
		
		return new ResponseEntity<String>(loginYn,HttpStatus.OK);
		
	}

	// 카카오로그인 후 화면이동
	@RequestMapping(value = "/kakaoInfo.do")
	public String kakaoInfo(HttpSession session, Model model) {
		
		AccountVO accountVO = (AccountVO) session.getAttribute("SessionInfo");
		model.addAttribute("account", accountVO);
		
		return "conn/kakaoInfoUpdate";
		
	}
	
	// 카카오 추가정보 입력
	@RequestMapping(value = "/kakaoInfoUpdate.do")
	public String kakaoInfoUpdate(HttpServletRequest req,
			AccountVO accountVO, Model model, RedirectAttributes ra
			,HttpSession session) {
		
		log.info("session에서 가져온거 " + session.getAttribute("SessionInfo"));
		log.info("jsp에서 넘어온거 " + accountVO.getToken());
		AccountVO account = (AccountVO) session.getAttribute("SessionInfo");
		String goPage = "";
		
		if(account.getToken().equals(accountVO.getToken())) {
			
			accountVO.setKakaoId(account.getKakaoId());
			
			ServiceResult result = memAccountService.kakaoInfoUpdate(req, accountVO);
			
			System.out.println("!!!!!!!!!!!!!!!  == " + accountVO);
			
			if(result.equals(ServiceResult.OK)) {
				ra.addAttribute("message", "카카오 정보추가");
				goPage = "main/main";
			}else {
				model.addAttribute("account", accountVO);
				model.addAttribute("message", "서버에러, 재시도");
				goPage = "login/kakaoInfoUpdate";
			}
		}
		
		return goPage;
		
	}
	
}
