package com.godLife.io.service.challenge.test;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.godLife.io.common.CertiCycle;
import com.godLife.io.common.Page;
import com.godLife.io.common.Search;
import com.godLife.io.service.challenge.ChallengeService;
import com.godLife.io.service.domain.Challenge;
import com.godLife.io.service.domain.User;
import com.godLife.io.service.user.UserService;


/*
 *	FileName :  UserServiceTest.java
 * ㅇ JUnit4 (Test Framework) 과 Spring Framework 통합 Test( Unit Test)
 * ㅇ Spring 은 JUnit 4를 위한 지원 클래스를 통해 스프링 기반 통합 테스트 코드를 작성 할 수 있다.
 * ㅇ @RunWith : Meta-data 를 통한 wiring(생성,DI) 할 객체 구현체 지정
 * ㅇ @ContextConfiguration : Meta-data location 지정
 * ㅇ @Test : 테스트 실행 소스 지정
 */
@RunWith(SpringJUnit4ClassRunner.class)

//==> Meta-Data 를 다양하게 Wiring 하자...
//@ContextConfiguration(locations = { "classpath:config/context-*.xml" })
@ContextConfiguration	(locations = {	"classpath:config/context-common.xml",
																	"classpath:config/context-aspect.xml",
																	"classpath:config/context-mybatis.xml",
																	"classpath:config/context-transaction.xml" })
//@ContextConfiguration(locations = { "classpath:config/context-common.xml" })
public class ChallengeServiceTest {

	//==>@RunWith,@ContextConfiguration 이용 Wiring, Test 할 instance DI
	@Autowired
	@Qualifier("challengeServiceImpl")
	private ChallengeService challengeService;
	
	@Value("#{commonProperties['pageUnit']}")
	int pageUnit;
	@Value("#{commonProperties['pageSize']}")
	int pageSize;
	
	
	//@Test
	public void addChallenge() throws Exception {
		Challenge challenge = new Challenge();
		
		
		
		List<String> certiCycle = new ArrayList<String>();
		certiCycle.add("1");//일
		certiCycle.add("4");//수
		
		challenge.setHostEmail("user05@io.com");//HostEmail
		challenge.setChallengeTitle("user05 전체 공개"); // 챌린지 제목
		challenge.setChallengeThumbnailImg("전체공개.jpg");//썸네일 이미지
		challenge.setChallengeDetail("전체공개 챌린지입니다.");// 소개
		challenge.setChallengeRule("채크 챌린지."); // 규칙
		challenge.setChallengeCateNo(1); // 관심사 번호 1:운동
		challenge.setStartDate("2022-06-01"); // 시작 날짜
		challenge.setEndDate("2022-06-14"); // 종료 날짜
		challenge.setCertiCycle(certiCycle); // 인증주기
		challenge.setOpenRange("0");//0이면 전체 1이면 친구
		challenge.setJoinPoint(1000);// 입장 포인트
		challenge.setJoinCount(1);//호스트 기본참여자명
		challenge.setChallengeStatus("0");// 0 시작전 1 진행중 2 종료
		challenge = CertiCycle.certiCycle(challenge); // 인증 날짜 및 총 인증 횟수
		
		
		System.out.println(challenge.getTotalCertiCount());
		for(int i=0; i<challenge.getCertiDate().size(); i++) {
			System.out.println("인증 날짜 : "+challenge.getCertiDate().get(i)); //인증 날짜
		}
		
		
		challengeService.addChallenge(challenge);
		
	}
	
	@Test
	public void getChallengeList() {
		Search search = new Search();
		
		search.setCurrentPage(1);
		
		search.setPageSize(pageSize);
		
		//search.setOrderCondition(1); // 1 운동
		search.setSearchCondition("2");//1 신규 2 인기
		search.setSearchKeyword("");
		
		System.out.println(search.getStartRowNum()+"  "+search.getEndRowNum());
		
		
		Map<String,Object> map = new HashMap<String, Object>();
		
		User user = new User();
		
		//비로그인 이라면 아랫줄 주석
		user.setUserEmail("chilee4650@naver.com");
		//////////////////////////////////////////////
		map.put("search", search);
		System.out.println("searchKeyword: "+search.getSearchKeyword());
		map.put("user", user);
		map = challengeService.getChallengeList(map); // 리스트 정보 포함
		Page resultPage = new Page( search.getCurrentPage(), ((Integer)map.get("totalCount")).intValue(), pageUnit, pageSize);
		
		List challengeList = (List)map.get("list");
		
		System.out.println("챌린지 리스트");
		for(Object challenge : challengeList) {
			System.out.println(challenge);
		}
		
		
		
		//Map<String , Object> map=userService.getUserList(search);
	}
	
}	
