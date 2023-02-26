package com.kh.opendata.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
//측정소별 실시간 측정정보 조회(MsrstnAcctoRltmMesureDnsty)
public class MsrstnAcctoRltmMesureDnstyVo {
	private String resultCode;// resultCode 결과코드 2 1 00 결과코드
	private String dataTime;// dataTime 측정일 20 1 2020-11-25 13:00 오염도측정 연-월-일 시간: 분
	private String mangName;// mangName 측정망 정보 10 1 도시대기 측정망 정보 (도시대기, 도로변대기, 국가배경농도, 교외대기, 항만)
	private String so2Value;// so2Value 아황산가스 농도 10 1 0.007 아황산가스 농도 (단위 : ppm)
	private String coValue;// coValue 일산화탄소 농도 10 1 0.4 일산화탄소 농도 (단위 : ppm)
	private String o3Value;// o3Value 오존 농도 10 1 0.043 오존 농도 (단위 : ppm)
	private String no2Value;// no2Value 이산화질소 농도 10 1 0.024 이산화질소 농도 (단위 : ppm)
	private String pm10Value;// pm10Value 미세먼지(PM10) 농도 10 1 73 미세먼지(PM10) 농도 (단위 : ㎍/㎥)
	private String pm10Value24;// pm10Value24 미세먼지(PM10) 24시간예측이동농도 10 0 55 미세먼지(PM10) 24시간예측이동농도 (단위 : ㎍/㎥)
	private String pm25Value; // pm25Value 미세먼지(PM2.5) 농도 10 0 44 미세먼지(PM2.5) 농도 (단위 : ㎍/㎥)
	private String pm25Value24;// pm25Value24 미세먼지(PM2.5) 24시간예측이동농도 10 0 31 미세먼지(PM2.5) 24시간예측이동농도 (단위 : ㎍/㎥)
	private String khaiValue;// khaiValue 통합대기환경수치 10 1 75 통합대기환경수치
	private String khaiGrade;// khaiGrade 통합대기환경지수 10 1 2 통합대기환경지수
	private String so2Grade;// so2Grade 아황산가스 지수 10 1 1 아황산가스 지수
	private String coGrade;// coGrade 일산화탄소 지수 10 1 1 일산화탄소 지수
	private String o3Grade;// o3Grade 오존 지수 10 1 2 오존 지수
	private String no2Grade;// no2Grade 이산화질소 지수 10 1 1 이산화질소 지수
	private String pm10Grade;// pm10Grade 미세먼지(PM10) 24시간 등급 10 1 2 미세먼지(PM10) 24시간 등급자료
	private String pm25Grade;// pm25Grade 미세먼지(PM2.5) 24시간 등급 10 0 2 미세먼지(PM2.5) 24시간 등급자료
	private String pm10Grade1h;// pm10Grade1h 미세먼지(PM10) 1시간 등급 10 0 2 미세먼지(PM10) 1시간 등급자료
	private String pm25Grade1h;// pm25Grade1h 미세먼지(PM2.5) 1시간 등급 10 0 2 미세먼지(PM2.5) 1시간 등급자료
	private String so2Flag;// so2Flag 아황산가스 플래그 10 1 점검및교정 측정자료 상태정보(점검및교정,장비점검,자료이상,통신장애)
	private String coFlag;// coFlag 일산화탄소 플래그 10 1 점검및교정 측정자료 상태정보(점검및교정,장비점검,자료이상,통신장애)
	private String o3Flag;// o3Flag 오존 플래그 10 1 점검및교정 측정자료 상태정보(점검및교정,장비점검,자료이상,통신장애)
	private String no2Flag;// no2Flag 이산화질소 플래그 10 1 점검및교정 측정자료 상태정보(점검및교정,장비점검,자료이상,통신장애)
	private String pm10Flag;// pm10Flag 미세먼지(PM10) 플래그 10 1 점검및교정 측정자료 상태정보(점검및교정,장비점검,자료이상,통신장애)
	private String pm25Flag;// pm25Flag 미세먼지(PM2.5) 플래그 10 0 자료이상 측정자료 상태정보(점검및교정,장비점검,자료이상,통신장애)

//	※ 항목별 Grade 값의 의미
//	등급			좋음	보통	나쁨	매우나쁨
//	Grade 값		1	2	 3	 4

}
