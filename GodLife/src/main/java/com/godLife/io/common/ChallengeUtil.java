package com.godLife.io.common;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Scanner;

import com.godLife.io.service.domain.Challenge;

public class ChallengeUtil {
	
	
	public static Challenge certiCycle(Challenge challenge)throws Exception {
			
		int result = 0;

		
		String inputDate = challenge.getEndDate(); // �ŰԺ����� ������
		Date date = new SimpleDateFormat("yyyy-MM-dd").parse(inputDate);
		String day = "";
		Calendar cal = Calendar.getInstance();
		cal.setTime(date);
		// ���� ��¥
		
		String inputDate2= challenge.getStartDate();// �ŰԺ����� ������
		Date date2 =  new SimpleDateFormat("yyyy-MM-dd").parse(inputDate2);
		String day2 = "";
		Calendar cal2 = Calendar.getInstance();
		cal2.setTime(date2);
		//���۳�¥
		
		
		long diffSec = (date.getTime() - date2.getTime()) / 1000; //�� ����
		
		long diffDays = (diffSec / (24*60*60))+1;
		
		int startWeek = cal.get(Calendar.DAY_OF_WEEK);
		int counts = 0;//=> ���� Ƚ���� �ɼ� ����.
		
		Calendar cal3 = Calendar.getInstance();
		
		List<String> certiDate = new ArrayList<String>();
			
for(int i=0; i<challenge.getCertiCycle().size(); i++) {
							
	for (LocalDate date1 = LocalDate.parse(inputDate2); date1.isBefore(LocalDate.parse(inputDate)); date1 = date1.plusDays(1))
			{
				
		
			String start = ""+date1;
			Date dates = new SimpleDateFormat("yyyy-MM-dd").parse(start);
			cal3.setTime(dates);
			int week = cal3.get(Calendar.DAY_OF_WEEK);// �� ��¥�� ������ �� �� ����.
				
			if(week == Integer.parseInt(challenge.getCertiCycle().get(i))) {
					counts++;
					certiDate.add(start);
				}	
					
					
			}
			
		}
	
		int week2 = cal.get(Calendar.DAY_OF_WEEK);// ���ᳯ¥�� ����
		
	for(int i=0; i<challenge.getCertiCycle().size(); i++) {
		
		if(week2 == Integer.parseInt(challenge.getCertiCycle().get(i))) {
			counts++;
			certiDate.add(inputDate);
		}
		
	}
	
	challenge.setTotalCertiCount(counts);
	challenge.setCertiDate(certiDate);
	
	
	List<String> certiCycleName = new ArrayList<String>();
	for(int i=0; i<challenge.getCertiCycle().size(); i++) {
		if(challenge.getCertiCycle().get(i).equals("1")) {
			certiCycleName.add("��");
		}
		if(challenge.getCertiCycle().get(i).equals("2")) {
			certiCycleName.add("��");			
		}
		if(challenge.getCertiCycle().get(i).equals("3")) {
			certiCycleName.add("ȭ");
		}
		if(challenge.getCertiCycle().get(i).equals("4")) {
			certiCycleName.add("��");
		}
		if(challenge.getCertiCycle().get(i).equals("5")) {
			certiCycleName.add("��");
		}
		if(challenge.getCertiCycle().get(i).equals("6")) {
			certiCycleName.add("��");				
		}
		if(challenge.getCertiCycle().get(i).equals("7")) {
			certiCycleName.add("��");
		}
	}
	
	challenge.setCertiCycleName(certiCycleName);
	
		return challenge;
	}
	
	
	public static Challenge setCategName(Challenge challenge) {
		
		if(challenge.getChallengeCategNo() == 1) {
			challenge.setChallengeCategName("�");
		}else if(challenge.getChallengeCategNo() == 2){
			challenge.setChallengeCategName("�Ľ���");
		}else if(challenge.getChallengeCategNo() == 3){
			challenge.setChallengeCategName("����");
		}else if(challenge.getChallengeCategNo() == 4){
			challenge.setChallengeCategName("���");
		}else if(challenge.getChallengeCategNo() == 5){
			challenge.setChallengeCategName("��Ȱ");
		}
		
		
		return challenge;
	}
	
	public List<Challenge> setCategNoList(List<Challenge> list){
		
		List<Challenge> challengeList = new ArrayList<Challenge>();
		
		for(Challenge challenge : list) {
			if(challenge.getChallengeCategNo() == 1) {
				challenge.setChallengeCategName("�");
			}else if(challenge.getChallengeCategNo() == 2){
				challenge.setChallengeCategName("�Ľ���");
			}else if(challenge.getChallengeCategNo() == 3){
				challenge.setChallengeCategName("����");
			}else if(challenge.getChallengeCategNo() == 4){
				challenge.setChallengeCategName("���");
			}else if(challenge.getChallengeCategNo() == 5){
				challenge.setChallengeCategName("��Ȱ");
			}
			challengeList.add(challenge);
		}
		
		return challengeList;
	}
	
}



	
//int[] athentication = new int[7]; //�Ͽ���
//Scanner sc = new Scanner(System.in);
//for(int i=0; i<athentication.length; i++) {
//	System.out.println("1.�� 2.�� 3.ȭ 4.�� 5.�� 6.�� 7.��");
//	System.out.print("�����ֱ� �Է� : ");
//	athentication[i] = sc.nextInt();
//	int vreak = 0;
//	System.out.println("�Է��� �׸� �ΰڽ��ϱ�. 1 (n) 2 (y)");
//	vreak = sc.nextInt();
//	if(vreak == 2) {
//		break;
//	}
//}  �� �κ��� challenge.getCertiCycle

//athentication[i] ���� �ֱ�� List Ÿ������ �����Ͱ� 1,2,3,4... �� ���ð���.



//String[] athenticationDay = new String[7];
//for(int i=0; i<challenge.getCertiCycle().size(); i++) {
//	if(athentication[i]==0) {
//		break;
//	}
//	switch(athentication[i]) {
//	case 1 : athenticationDay[i] = "��";
//	break;                
//	case 2 : athenticationDay[i] = "��";
//	break;                
//	case 3 : athenticationDay[i] = "ȭ";
//	break;                
//	case 4 : athenticationDay[i] = "��";
//	break;                
//	case 5 : athenticationDay[i] = "��";
//	break;                
//	case 6 : athenticationDay[i] = "��";
//	break;                
//	case 7 : athenticationDay[i] = "��";
//	break;
//	}
//	
//}