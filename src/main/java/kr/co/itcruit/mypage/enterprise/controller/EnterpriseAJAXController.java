package kr.co.itcruit.mypage.enterprise.controller;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.nio.file.Files;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Base64;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.ServletContext;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import kr.co.itcruit.ServiceResult;
import kr.co.itcruit.alarm.service.IAlarmService;
import kr.co.itcruit.atch.service.IAtchFileService;
import kr.co.itcruit.codingtest.service.ICodingTestService;
import kr.co.itcruit.common.CommoncodeService;
import kr.co.itcruit.mypage.enterprise.service.IMyEnterpriseService;
import kr.co.itcruit.vo.AccountVO;
import kr.co.itcruit.vo.AlarmVO;
import kr.co.itcruit.vo.ApplicantCareerStatVO;
import kr.co.itcruit.vo.ApplicantEduStatVO;
import kr.co.itcruit.vo.ApplicantGenderStatVO;
import kr.co.itcruit.vo.ApplicantPassStatVO;
import kr.co.itcruit.vo.ApplyProcessListVO;
import kr.co.itcruit.vo.AtchFileVO;
import kr.co.itcruit.vo.AvailLangListVO;
import kr.co.itcruit.vo.CareerVO;
import kr.co.itcruit.vo.CertificateVO;
import kr.co.itcruit.vo.CodingtestVO;
import kr.co.itcruit.vo.CommoncodeVO;
import kr.co.itcruit.vo.CustomPaginationInfoVO;
import kr.co.itcruit.vo.EachProcessApplyPassVO;
import kr.co.itcruit.vo.EntCodingTestQstnDsnctVO;
import kr.co.itcruit.vo.EntCodingtestVO;
import kr.co.itcruit.vo.EntIntroQSTNDSNCTVO;
import kr.co.itcruit.vo.ExperienceVO;
import kr.co.itcruit.vo.LogRecruitTableVO;
import kr.co.itcruit.vo.PortfolioVO;
import kr.co.itcruit.vo.QstnDSNCTVO;
import kr.co.itcruit.vo.RecruitApplicantVO;
import kr.co.itcruit.vo.ResumeVO;
import kr.co.itcruit.vo.StatVO;
import kr.co.itcruit.vo.UpdateApplicantVO;
import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("myPage/enterprise")
@Slf4j
public class EnterpriseAJAXController {
	
	@Autowired
	private CommoncodeService ccService;
	
	@Autowired
	private IAtchFileService atchFileService;
	
	@Autowired
	private IMyEnterpriseService myEntService;
	
	@Autowired
	private ServletContext servletContext;
	
	@Autowired
	private IAlarmService alarmService;
	
	@Inject
	private ICodingTestService codingtestService;
	
	@RequestMapping(value = "/esntLangList")
	public ResponseEntity<List<CommoncodeVO>> esntlLangList(@RequestParam("pstnCmmncdNm") String pstnCmmncdNm){
		
//		log.info("################모집분야 : "+ pstnCmmncdNm);
		
		String cmmncode = "PSTN%";
		
		List<CommoncodeVO> esntlLangList = ccService.commoncodeList(cmmncode, pstnCmmncdNm);
		
//		log.info("################모집분야리스트 : "+esntlLangList);
		
		return new ResponseEntity<List<CommoncodeVO>>(esntlLangList, HttpStatus.OK);
		
	}
	
	@RequestMapping(value = "/getRecruitImage", method = RequestMethod.GET)
	public ResponseEntity<byte[]> sendImage(@RequestParam("recruitNo") String recruitNo){
		
		log.info("#################### recruitNo : "+recruitNo);
		
		String orgnCmmncd = "채용공고";
		AtchFileVO afv = atchFileService.getFileInfo(recruitNo, orgnCmmncd);
		
		String filePath = afv.getFilePath();
		
		File file = new File(filePath);
		
		byte[] imegeByte = null;
		try {
			imegeByte = Files.readAllBytes(file.toPath());
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return new ResponseEntity<byte[]>(imegeByte, HttpStatus.OK);
	}
	
	@RequestMapping(value = "/qstnDSNCTInsert", method = RequestMethod.GET)
	public ResponseEntity<Integer> qstnDSNCTInsert(
			
			@RequestParam("entIntroQstnNo") int entIntroQstnNo, 
			@RequestParam("entIntroQstnInsertCn") String entIntroQstnInsertCn
			)
	{
		
		log.info("######################## entIntroQstnNo : " + entIntroQstnNo );
		log.info("######################## entIntroQstnInsertCn : " + entIntroQstnInsertCn );
		
		QstnDSNCTVO qdv = new QstnDSNCTVO();
		qdv.setEntIntroQstnNo(entIntroQstnNo);
		qdv.setEntIntroQstnCn(entIntroQstnInsertCn);
		
		
		ServiceResult result = myEntService.qstnDSNCTInsert(qdv);
		if(result.equals(ServiceResult.OK)) {
			
			return new ResponseEntity<Integer>(qdv.getEntIntroQstnDsnctSeq(), HttpStatus.OK);
			
		}else {
			
			return new ResponseEntity<Integer>(0, HttpStatus.OK);
			
		}
		
	}
	
	
	@RequestMapping(value = "/qstnDSNCTUpdate", method= RequestMethod.GET)
	public ResponseEntity<String> qstnDSNCTUpdate(
			
			@RequestParam("entIntroQstnSeqNo") int entIntroQstnSeqNo,
			@RequestParam("entIntroQstnUpdateCn") String entIntroQstnUpdateCn)
	
	{
		
//		log.info("######################## entIntroQstnSeqNo : " + entIntroQstnSeqNo );
//		log.info("######################## entIntroQstnCn : " + entIntroQstnUpdateCn );
		
		
		ServiceResult result = myEntService.qstnDSNCTUpdate(entIntroQstnSeqNo, entIntroQstnUpdateCn);
		
		if(result.equals(ServiceResult.OK)) {
			
			return new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
			
		}else {
			
			return new ResponseEntity<String>("FAILURE", HttpStatus.OK);
			
		}
	}
	
	@RequestMapping(value = "/getApplyProcessList", method = RequestMethod.GET)
	public ResponseEntity<List<ApplyProcessListVO>> applyProcessList(@RequestParam("recruitNo")String recruitNo, @RequestParam("pstnCmmncdNm")String pstnCmmncdNm){
		
//		log.info("##################### recruitNo : " + recruitNo);
//		log.info("##################### pstnCmmncdNm : " + pstnCmmncdNm);
		
		List<ApplyProcessListVO> selectApplyProcessList = myEntService.selectApplyProcessList(recruitNo, pstnCmmncdNm);
		
		return new ResponseEntity<List<ApplyProcessListVO>>(selectApplyProcessList, HttpStatus.OK);
	}
	
	
	@RequestMapping(value = "/getOrderList", method = RequestMethod.GET)
	public ResponseEntity<CustomPaginationInfoVO<AccountVO>> orderList(
			
			@RequestParam("recruitNo")String recruitNo,
			@RequestParam("pstnCmmncdNm")String pstnCmmncdNm,
			@RequestParam("orderNumber")int orderNumber,
			@RequestParam(name="page", required = false, defaultValue ="1") int currentPage,
			@RequestParam(required = false, defaultValue = "defaultSort") String searchType,
			@RequestParam(required = false) String searchWord
			
			){
		
		List<AccountVO> dataList;
		log.info("############################## recruitNo : " + recruitNo);
		log.info("############################## pstnCmmcndNm : " + pstnCmmncdNm);
		
		
		CustomPaginationInfoVO<AccountVO> accountList = new CustomPaginationInfoVO<AccountVO>();
		accountList.setCurrentPage(currentPage);	
		accountList.setOrderNumber(orderNumber);
		accountList.setRecruitNo(recruitNo);
		accountList.setPstnCmmncdNm(pstnCmmncdNm);
		
		
		int totalRecord = myEntService.selecetAccountListCount(accountList);
		accountList.setTotalRecord(totalRecord);
		
		//1이면 자소서 조회
		if(orderNumber == 1) {
//			List<AccountVO> dataList = myEntService.selectOrderList(accountList);
			dataList = myEntService.selectOrderList(accountList);
		}
		else {
			//account_id, account_nm, birth_ymd, apply_no, each_process_no
			// process_seq, recruit_no, each_order, pstn_cmmncd_nm, pass_yn,
			// ansrList[ent_codingtest_no, ent_codingtest_no_order, ct_pass_yn]
			dataList = myEntService.selectCodingTesterList(accountList);
			
			for(AccountVO avo : dataList) {
				int correctCount = 0;
				int submitCount = 0;
				
				List<EntCodingtestVO> elist = avo.getAnsrList();
				
				//문제순서대로 안나올 수 있으니 컬랙션의 compare를 이용해 오름차순 정렬
				Collections.sort(elist, new Comparator<EntCodingtestVO>() {
		            public int compare(EntCodingtestVO o1, EntCodingtestVO o2) {
		            	 return Integer.compare(o1.getProcessNoOrder(), o2.getProcessNoOrder());
		            }
		        });
				
				
				for(EntCodingtestVO evo : elist) {
					log.info(">>>>>>>>>>>>>>" + evo);
					if(evo.getCtPassYn() != null ) submitCount++;
					if(evo.getCtPassYn().equals("Y")) correctCount++;
				}
				
				avo.setCorrectCount(correctCount);
				avo.setSubmitCount(submitCount);
			}
		}
		log.info(">>>>>>>>>>>>>>>>>" + dataList);
		
		
		accountList.setDataList(dataList);
		
		return new ResponseEntity<CustomPaginationInfoVO<AccountVO>>(accountList, HttpStatus.OK);
	}
	
	
	
	@RequestMapping(value = "/getQstnDSNCTList", method = RequestMethod.GET)
	public ResponseEntity<List<EntIntroQSTNDSNCTVO>> getQstnDSNCTList(
			@RequestParam("recruitNo") String recruitNo,
			@RequestParam("pstnCmmncdNm") String pstnCmmncdNm,
			@RequestParam("orderNumber") String orderNumber
			
			) {
		
		log.info("############################## recruitNo : " + recruitNo);
		log.info("############################## pstnCmmcndNm : " + pstnCmmncdNm);
		
		List<EntIntroQSTNDSNCTVO>  eiqdList = null;
		
		if(StringUtils.isNotBlank(recruitNo) && StringUtils.isNotBlank(pstnCmmncdNm)) {
			
			eiqdList = myEntService.selectOrderDsnct(recruitNo, pstnCmmncdNm, orderNumber);
			return new ResponseEntity<List<EntIntroQSTNDSNCTVO>>(eiqdList, HttpStatus.OK);
			
		}else {
			
			return new ResponseEntity<List<EntIntroQSTNDSNCTVO>>(eiqdList, HttpStatus.OK);
			
		}
		
	}
	
	@RequestMapping(value = "/getCodingTestList", method = RequestMethod.POST)
	public ResponseEntity<List<EntCodingTestQstnDsnctVO>> getCodingTestDSNCTList(@RequestParam Map<String, String> params){
		log.info("################# params : " + params );
		
		String recruitNo = params.get("recruitNo");
		String pstnCmmncdNm = params.get("pstnCmmncdNm");
		String orderNumber = params.get("orderNumber");
		
		
		List<EntCodingTestQstnDsnctVO> ectqdList = null;
		
		if(StringUtils.isNotBlank(recruitNo) && StringUtils.isNotBlank(pstnCmmncdNm)) {
			
			ectqdList = myEntService.selectCondingTestOrder(recruitNo, pstnCmmncdNm, orderNumber);
			return new ResponseEntity<List<EntCodingTestQstnDsnctVO>>(ectqdList, HttpStatus.OK);
			
		}else{
			
			return new ResponseEntity<List<EntCodingTestQstnDsnctVO>>(ectqdList, HttpStatus.OK);
			
		}
	}
	
	@RequestMapping(value = "/getApplicnatDate", method = RequestMethod.POST)
	public ResponseEntity<ApplyProcessListVO> getApplicnatDate(@RequestParam Map<String, String> params){
		log.info("################# params : " + params );
		
		String recruitNo = params.get("recruitNo");
		String pstnCmmncdNm = params.get("pstnCmmncdNm");
		String orderNumber = params.get("orderNumber");
		
		
		ApplyProcessListVO aplv = myEntService.selectApplicantDate(params);
		
//		List<EntCodingTestQstnDsnctVO> ectqdList = null;
//		
//		if(StringUtils.isNotBlank(recruitNo) && StringUtils.isNotBlank(pstnCmmncdNm)) {
//			
//			ectqdList = myEntService.selectCondingTestOrder(recruitNo, pstnCmmncdNm, orderNumber);
//			return new ResponseEntity<List<EntCodingTestQstnDsnctVO>>(ectqdList, HttpStatus.OK);
//			
//		}else{
//			
//			
//		}
		return new ResponseEntity<ApplyProcessListVO>(aplv, HttpStatus.OK);
		
	}
	
	
	@RequestMapping(value = "/deleteQTSNDSNCT", method = RequestMethod.GET)
	public ResponseEntity<String> deleteQTSNDSNCT(@RequestParam("entIntroQstnSeqNo") int entIntroQstnSeqNo){
		
		log.info("######################## entIntroQstnSeqNo : " + entIntroQstnSeqNo );
		
		ServiceResult result = myEntService.qstnDSNCTDelete(entIntroQstnSeqNo);
		
		
		if(result.equals(ServiceResult.OK)) {
			
			return new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
			
		}else {
			
			return new ResponseEntity<String>("FAILURE", HttpStatus.OK);
			
		}
		
	}
	
	
	@RequestMapping(value = "/updateApplicantPass", method = RequestMethod.POST)
	public ResponseEntity<String> updateApplicantPass(@RequestBody UpdateApplicantVO uav) {
		
		
		
		String recruitNo = uav.getRecruitNo();
		String pstnCmmncdNm = uav.getPstnCmmncdNm();
		String eachProcessSeq = String.valueOf(uav.getEachProcessSeq());
		int orderNumber = uav.getOrderNumber();
		
		
		EachProcessApplyPassVO eachProcessApplyPassVO = new EachProcessApplyPassVO();
		String eachProcessNo = ""; // 기본값 설정
		// 최근 값이 있는지 확인
		String recentEachProcessNo = myEntService.selectEachProcessNo(eachProcessApplyPassVO);
		if (recentEachProcessNo != null && !recentEachProcessNo.isEmpty()) {
		    int recentValue = Integer.parseInt(recentEachProcessNo); // 최근 값 변환
		    recentValue++; // 최근 값에 1 추가
		    eachProcessNo = Integer.toString(recentValue); // 문자열로 변환
		} else {
		    eachProcessNo = "9000000"; // 값이 없으면 기본값 설정
		}
		
		
		uav.setInserteachProcessSeq(eachProcessNo);
//		updateInfo.put("inserteachProcessSeq", eachProcessNo);
			
		List<ApplyProcessListVO> selectApplyProcessList = myEntService.selectApplyProcessList(recruitNo, pstnCmmncdNm);
		
		//기업이 올린 공고 마지막 차수일때(2차 이상)
		if(selectApplyProcessList.size() == orderNumber) {
			ServiceResult result = myEntService.updateFinalApplicantPass(eachProcessSeq);
			if(result.equals(ServiceResult.OK)) {
				return new ResponseEntity<String>("FINAL", HttpStatus.OK);
			}else {
				return new ResponseEntity<String>("FAILED", HttpStatus.NOT_FOUND);
			}
		}else {
			String updateClsNm = selectApplyProcessList.get(orderNumber).getClsNm();
			int updateOrderNumber = orderNumber + 1;
			
			String insertClsNm = selectApplyProcessList.get(orderNumber-1).getClsNm();
			uav.setClsNm(insertClsNm);
//			updateInfo.put("clsNm", insertClsNm);
			
			myEntService.insertApplicantPass(uav);
			
			ServiceResult result = myEntService.updateApplicantPass(eachProcessSeq, updateClsNm, updateOrderNumber);
			
			if(result.equals(ServiceResult.OK)) {
				return new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
			}else {
				return new ResponseEntity<String>("FAILED", HttpStatus.OK);
			}
		}
		
	}
	
	
	@RequestMapping(value = "/getRecruitApply" , method = RequestMethod.GET)
	public ResponseEntity<StatVO> getApplyNumber(String recruitNo, String pstnCmmncdNm){
//		
//		log.info("##### recruitNo : " + recruitNo);
		
		String applyNo = recruitNo + "_" + pstnCmmncdNm;
		List<RecruitApplicantVO> applyDateStat = myEntService.getApplyNumber(applyNo);
		List<LogRecruitTableVO> applyHitStat = myEntService.getApplyHit(recruitNo, pstnCmmncdNm);
		List<ApplicantPassStatVO> applyPassStat = myEntService.getApplyPass(applyNo, "YY");
		List<ApplicantCareerStatVO> applyCareerStat = myEntService.getApplyCareer(applyNo);
		List<ApplicantGenderStatVO> applyGenderStat = myEntService.getApplyGender(applyNo);
		List<ApplicantEduStatVO> applyEduStat = myEntService.getApplyEdu(applyNo);
		
		log.info("############### applyDateStat : " + applyDateStat); //총 지원자 수.
		log.info("############### applyHitStat : " + applyHitStat); 
		log.info("############### applyPassStat : " + applyPassStat); 
		log.info("############### applyCareerStat : " + applyCareerStat); 
		log.info("############### applyGenderStat : " + applyGenderStat); 
		log.info("############### applyEduStat : " + applyEduStat); 
		
		
		
		
		StatVO stat = new StatVO();
		stat.setApplyDateStat(applyDateStat);
		stat.setApplyCareerStat(applyCareerStat);
		stat.setApplyEduStat(applyEduStat);
		stat.setApplyGenderStat(applyGenderStat);
		stat.setApplyHitStat(applyHitStat);
		stat.setApplyPassStat(applyPassStat);
		
		return new ResponseEntity<StatVO>(stat, HttpStatus.OK);
		
	}
	
	
	
	
	@RequestMapping(value = "/saveDate", method = RequestMethod.POST)
	public ResponseEntity<String> saveDate(@RequestBody Map<String, String> dateRange){
		
		log.info("############# dateRange : " + dateRange );
		
		String range = dateRange.get("dateRange");
        String[] dates = range.split(" - ");
        
        if (dates.length == 2) {
        	
        	
        	
        	int updateSeq = Integer.parseInt(dateRange.get("updateSeq"));
        	LocalDateTime startDate = LocalDateTime.parse(dates[0], DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm"));
            LocalDateTime endDate = LocalDateTime.parse(dates[1], DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm"));
	        
	        ServiceResult result =  myEntService.updateProcessDate(updateSeq, startDate, endDate);
	        
	        
	        if(result.equals(ServiceResult.OK)) {
	        	
	        	return new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
	        	
	        }else {
	        	
	        	return new ResponseEntity<String>("FAILURE", HttpStatus.OK);
	        	
	        }
	        
	        
	        
        }else {
        	
        	return new ResponseEntity<String>("DATEOFOUTBOUND", HttpStatus.OK);
        	
        }
		
	}
    @SuppressWarnings("unused")
	@RequestMapping(value = "/codingTestInsert", method = RequestMethod.POST)
    public ResponseEntity<String> codingTestInsert(@RequestBody Map<String, Object> codingTestList) {
    	log.info("################## codingTestInsert : " + codingTestList);
        
    	ServiceResult result = null;
    	
    	Object qstnNoArrayObj = codingTestList.get("qstnNoArray");
    	
    	if (qstnNoArrayObj instanceof List<?>) {
    	    List<?> rawList = (List<?>) qstnNoArrayObj;
    	    List<Integer> qstnNoArray = new ArrayList<>();

    	    for (Object item : rawList) {
    	        if (item instanceof String) {
    	            try {
    	                qstnNoArray.add(Integer.parseInt((String) item));
    	            } catch (NumberFormatException e) {
    	                System.err.println("Error parsing '" + item + "' to integer.");
    	            }
    	        } else {
    	            throw new IllegalArgumentException("List element is not a String as expected");
    	        }
    	    }
    	    
    	    // 이제 'qstnNoArray' 리스트를 사용할 수 있습니다.
//    	    for (Integer getQstnNo : qstnNoArray) {
//        		int qstnNo =  getQstnNo;
//        		int entCodingTestNo = (int) codingTestList.get("entCodingTestNo");
//        		Integer entCodingTestNoOrder = myEntService.selectCodingTestLastNoOrder(entCodingTestNo);
//        		
//        		
//        		if(entCodingTestNoOrder == null) {
//        			
//        			EntCodingTestQstnDsnctVO ectqdv = new EntCodingTestQstnDsnctVO(qstnNo, entCodingTestNo, 1);
//        			result = myEntService.codingTestInsert(ectqdv);
//        			
//        		}else {
//        			
//        			entCodingTestNoOrder += 1;
//        			EntCodingTestQstnDsnctVO ectqdv1 = new EntCodingTestQstnDsnctVO(qstnNo, entCodingTestNo, entCodingTestNoOrder);
//        			result = myEntService.codingTestInsert(ectqdv1);
//        		}
//    	    }
    	    
    	    int entCodingTestNo = (int) codingTestList.get("entCodingTestNo");
    	    int a = 10000;
    	    int entCodingTestNoOrder = 1;
    	    for(int i = 0; i < 4; i++) {
    	    	int num = a+i;
    	    	EntCodingTestQstnDsnctVO ectqdv1 = new EntCodingTestQstnDsnctVO(num, entCodingTestNo, i+1);
    			result = myEntService.codingTestInsert(ectqdv1);
    	    }
    	    
    	}
    	
    	if(result.equals(ServiceResult.OK)) {
    		
    		return new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
    		
    	}else {
    		return new ResponseEntity<String>("FAILURE", HttpStatus.OK);
    		
    	}
    	    
    }
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	@ResponseBody
	@RequestMapping(value = "/idCheck.do" , method = RequestMethod.POST)
	public ResponseEntity<ServiceResult> idCheck(@RequestParam("id") String id){
		
		log.info(id);
		ServiceResult result = myEntService.idCheck(id);
		
		if(result.equals(ServiceResult.EXIST)) {
			return new ResponseEntity<ServiceResult>(result,HttpStatus.OK);
		}else {
			return new ResponseEntity<ServiceResult>(result,HttpStatus.OK);
		}
	}
	
	
	@ResponseBody
	@RequestMapping(value = "/countId.do" , method = RequestMethod.POST)
	public ResponseEntity<Integer> countId(@RequestParam("entNo") int entNo){
		
		int count = myEntService.countId(entNo);
		
		
		
		return new ResponseEntity<Integer>(count,HttpStatus.OK);
		
	}
	
	
	@ResponseBody
	@RequestMapping(value = "/deleteId.do" , method = RequestMethod.POST)
	public ResponseEntity<ServiceResult> deleteId(@RequestParam("accountId") String accountId ){
		
		ServiceResult result = myEntService.deleteId(accountId);
		
		log.info(result + "<<<<<<<<<<<<<<<<<");
		
		if(result.equals(ServiceResult.OK)) {
			return new ResponseEntity<ServiceResult>(result,HttpStatus.OK);
		}else {
			return new ResponseEntity<ServiceResult>(result,HttpStatus.FAILED_DEPENDENCY);
		}
		
	}
	
	
	
	
	
	@RequestMapping(value = "/getQstnAnswer", method = RequestMethod.POST)
	public ResponseEntity<List<Map<String, String>>> getQstnAnswer(@RequestBody Map<String, String> qstnAnswer){
		
		log.info("######### qstnAnswer : " + qstnAnswer);
		
		List<Map<String, String>> answer = myEntService.getQstnAnswer(qstnAnswer);
		
		log.info("######## answer :" + answer);
		
		return new ResponseEntity<List<Map<String, String>>>(answer, HttpStatus.OK);
		
	} 
	
	
	@RequestMapping(value = "/getResumePdf", method = RequestMethod.GET)
	public ResponseEntity<Map<String, Object>> getResumePdf(String rsmNo) throws IOException{
		
		log.info("########### rsmNo : " + rsmNo);
		
		
		//////////////////////
        URL url = servletContext.getResource("/resources/malgun.ttf");
        InputStream is = url.openStream(); 
		ByteArrayOutputStream buffer = new ByteArrayOutputStream(); 
        int nRead;
        byte[] data = new byte[1024];
        while ((nRead = is.read(data, 0, data.length)) != -1) {
            buffer.write(data, 0, nRead);
        }
        buffer.flush();
        byte[] fileData = buffer.toByteArray();
        String base64Font = Base64.getEncoder().encodeToString(fileData);
        
        
        URL urlBold = servletContext.getResource("/resources/malgunbd.ttf");
        InputStream isBold = urlBold.openStream(); 
        ByteArrayOutputStream bufferBold = new ByteArrayOutputStream(); 
        int nReadBold;
        byte[] dataBold = new byte[1024];
        while ((nReadBold = isBold.read(dataBold, 0, dataBold.length)) != -1) {
        	bufferBold.write(dataBold, 0, nReadBold);
        }
        bufferBold.flush();
        byte[] fileDataBold = bufferBold.toByteArray();
        String base64FontBold = Base64.getEncoder().encodeToString(fileDataBold);
        
        
        Map<String, Object> resume = new HashMap<String, Object>();
        
        resume.put("font", base64Font);
        resume.put("fontBold", base64FontBold);
        /////////////////
        
        
        Gson gson = new Gson();
        
        AccountVO resumeVO = myEntService.selecteResumeByRsmNo(rsmNo);  								//개인정보
        ResumeVO educationVO = myEntService.selecteEducationByRsmNo(rsmNo);  						//학력
        List<CareerVO> careerVOs = myEntService.selecteCareerByRsmNo(rsmNo);						//경력
        List<ExperienceVO> experienceVOs = myEntService.selectExperienceByRsmNo(rsmNo);				//경험
        List<CertificateVO> certificateVOs = myEntService.selectCertificateByRsmNo(rsmNo);			//자격증
        List<PortfolioVO> portfolioVOs = myEntService.selectPortfolioByRsmNo(rsmNo);				//포트폴리오
        List<AvailLangListVO> availLangListVOs = myEntService.selectAvailLangListByRsmNo(rsmNo);	//사용언어
        
        
        log.info("######### resumeVO : " + resumeVO);
        log.info("######### educationVO : " + educationVO);
        log.info("######### careerVOs : " + careerVOs);
        log.info("######### experienceVOs : " + experienceVOs);
        log.info("######### certificateVOs : " + certificateVOs);
        log.info("######### certificateVOs : " + certificateVOs);
        log.info("######### portfolioVOs : " + portfolioVOs);
        log.info("######### availLangListVOs : " + availLangListVOs);
        
        String jsonCareerVOs = gson.toJson(careerVOs);
        String jsonExperienceVOs = gson.toJson(experienceVOs);
        String jsonCertificateVOs = gson.toJson(certificateVOs);
        String jsonPortfolioVOs = gson.toJson(portfolioVOs);
        String josnAvailLangListVOs = gson.toJson(availLangListVOs);
        
        resume.put("resume", resumeVO);
        resume.put("education", educationVO);
        resume.put("career", jsonCareerVOs);
        resume.put("experience", jsonExperienceVOs);
        resume.put("certificate", jsonCertificateVOs);
        resume.put("portfolio", jsonPortfolioVOs);
        resume.put("availLang", josnAvailLangListVOs);
        
        
        if(educationVO.getRsmPhotoByte() != null) {
        	byte[] photo = educationVO.getRsmPhotoByte();
        	if(photo != null) {
        		log.info("######### photo : " + photo);
        		String base64Photo = Base64.getEncoder().encodeToString(photo);
        		resume.put("photo", base64Photo);
        	}else {
        		resume.put("photo", "");
        	}
        	
        }
        return new ResponseEntity<Map<String, Object>>(resume, HttpStatus.OK);
	            
	}
	
	
	@RequestMapping(value = "/updateApplicantFail", method = RequestMethod.POST)
	public ResponseEntity<String> updateApplicantFail(@RequestBody Map<String, String> applyinfo){
		
		String eachProcessSeq = applyinfo.get("eachProcessSeq");
		log.info("############ eachProcessSeq " + eachProcessSeq);
		
		ServiceResult result = myEntService.updateApplicantFail(eachProcessSeq);
		
		if(result.equals(ServiceResult.FAILED)) {
			
			return new ResponseEntity<String>("FAILURE", HttpStatus.OK);
			
		}else {
			
			return new ResponseEntity<String>("ERROR", HttpStatus.OK);
			
			
		}
		
		
	}
	
	
	@RequestMapping(value = "/getAlarmListById", method = RequestMethod.GET)
	public ResponseEntity<List<AlarmVO>> getAlarmListById(@RequestParam("accountId") String accountId){
		
		List<AlarmVO> alarmList = alarmService.getAlarmListById(accountId);
		
		return new ResponseEntity<List<AlarmVO>>(alarmList, HttpStatus.OK);
	}
	
	
	
	
	
	@RequestMapping(value = "/getApplicantRtclist", method = RequestMethod.GET)
	public ResponseEntity<CustomPaginationInfoVO<AccountVO>> getApplicantRtclist(@RequestParam("recruitNo")String recruitNo,
		@RequestParam("pstnCmmncdNm")String pstnCmmncdNm,
		@RequestParam("orderNumber")int orderNumber,
		@RequestParam(name="page", required = false, defaultValue ="1") int currentPage,
		@RequestParam(required = false, defaultValue = "defaultSort") String searchType,
		@RequestParam(required = false) String searchWord
	
	){
		
		CustomPaginationInfoVO<AccountVO> accountList = new CustomPaginationInfoVO<AccountVO>();
		accountList.setCurrentPage(currentPage);	
		accountList.setOrderNumber(orderNumber);
		accountList.setRecruitNo(recruitNo);
		accountList.setPstnCmmncdNm(pstnCmmncdNm);
		
		int totalRecord = myEntService.selecetAccountListCount(accountList);
		accountList.setTotalRecord(totalRecord);
		
		
		List<AccountVO> dataList = myEntService.getApplicantRtcList(accountList);
		
		accountList.setDataList(dataList);
		
		
		return new ResponseEntity<CustomPaginationInfoVO<AccountVO>>(accountList, HttpStatus.OK);
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	@RequestMapping(value = "/getCodingTest.do", method = RequestMethod.POST)
	public ResponseEntity<List<EntCodingtestVO>> getCodingTest(
			@RequestBody EntCodingtestVO entcodingtestVO 
			){
		
		log.info("######### entcodingtestVO : " + entcodingtestVO);
		
		List<EntCodingtestVO> entCodingtestList = myEntService.getcodingtestAnswer(entcodingtestVO);
		
		log.info("######## answer :" + entCodingtestList);
		
		return new ResponseEntity<List<EntCodingtestVO>>(entCodingtestList, HttpStatus.OK);
		
	} 
	
	
	@RequestMapping(value = "/codingtestlist")
	public ResponseEntity<List<CodingtestVO>> codeList() {
		
		CodingtestVO codeVO = new CodingtestVO();
		
		List<CodingtestVO> codeList = codingtestService.entSelectList(codeVO);
		
		return new ResponseEntity<List<CodingtestVO>>(codeList, HttpStatus.OK);
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	@RequestMapping(value = "/getTestDetail")
	public ResponseEntity<CodingtestVO> getTestDetail(
			@RequestBody Map<String, Object> qstnInfo
			) {
		
		
		CodingtestVO codeVO = new CodingtestVO();
		
		log.info("getTestDetail>>>>>>>>>>>>>>>>>>>"+ qstnInfo);
		log.info("getTestDetail>>>>>>>>>>>>>>>>>>>"+ qstnInfo.get("qstnNo"));
		
		int qstnNo = (Integer) qstnInfo.get("qstnNo");
		
		log.info("getTestDetail>>>>>>>>>>>>>>>>>>>"+qstnNo);
		
		codeVO = codingtestService.getTestDetail(qstnNo);
		
		return new ResponseEntity<CodingtestVO>(codeVO, HttpStatus.OK);
		
	}
	
	
	
	
	
	
	
	
	
}