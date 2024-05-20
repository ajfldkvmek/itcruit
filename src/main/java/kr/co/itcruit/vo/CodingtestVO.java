package kr.co.itcruit.vo;

import java.util.List;

import lombok.Data;

@Data
public class CodingtestVO {
	
	//테스트인지 제출인지 판단위한 flag
	private boolean flag;
	//코딩테스트 문제 관련
	private int qstnNo;
	private String pastQstnCtgryNm;	//문제 카테고리 (기출인지 아닌지)
	private String qstnTtl;
	private String qstnCn;		//문제 내용
	private int qstnGrd;		//
	private int qstnScr;		//문제 점수
	private String qstnExmpl;
	private String qstnRlsYn; 	//공개여부
	private String restriction;	//제약조건
	private String qstnMcode;	//문제메인코드
	
	private String input;
	private String output;
	
	private String passChecked;	//푼문제 체크됐는지 확인용
	
	//언어별로 가져올 입력폼
	private String c;
	private String cpp;
	//C#
	private String cs;
	private String java;
	private String javascript;
	private String python;
	
	private String lang;
	private String code;
	
	//문제유형
	private String qstnSubject;
	
	private int correcRate; //정답률
	//테스트케이스 input, output
//	private String qstnInput;
//	private String qstnOutput;
	
	private int page;
	
	private String passYn;
	
	private int correctRate;
	
	
	private List<String> ctgryList;
	private List<String> qstnSubjectList;
	
	private String accountId; //로그인한 아이디
	private int currentPage; //페이징 처리 위한 currentPage
	
	private List<CodingtestBoardVO> codeBoardList;
	
	
	
	
	
	
	
	
	
	
	
	
	
	//기업코테 문제 번호
	private int orderNo;
	
	
	
	
	
	
	
	
	
	
	
	
	private boolean isEntTest = false;
	
	
	
}
