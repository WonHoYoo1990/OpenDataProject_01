package com.kh.opendata.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@Data
@ToString
//시도별 실시간 측정정보(CtprvnRltmMesureDnsty)
public class CtprvnRltmMesureDnstyVO {
	private String stationName; // 측정소명

	private String pm25Value; // 미세먼지(PM2.5) 농도
	private String pm10Value; // 미세먼지(PM10) 농도
	private String o3Value; // 오존농도
	private String no2Value; // 이산화질소농도
	private String coValue; // 일산화탄소농도
	private String so2Value; // 아황산가스농도

	private String pm25Grade; // 미세먼지(PM2.5) 24시간 등급자료
	private String pm10Grade; // 미세먼지(PM10) 24시간 등급자료
	private String o3Grade; // 오존 지수
	private String no2Grade; // 이산화질소 지수
	private String coGrade; // 일산화탄소 지수
	private String so2Grade; // 아황산가스 지수

	private String khaiValue; // 통합대기환경수치
	private String khaiGrade; // 통합대기환경지수
	private String dataTime; // 측정일시

//	※ 항목별 Grade 값의 의미
//	등급			좋음	보통	나쁨	매우나쁨
//	Grade 값		1	2	 3	 4
}
