package com.kh.opendata.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class OpenApiController {

	public static final String SERVICEKEY = "공공데이터 포털에서 개인용 일반 인증키 입력 구간";

	// 측정소별 대기정보
	@ResponseBody
	@RequestMapping(value = "info10.do", produces = "application/json; charset=UTF-8")
	public String info10(String stationName) throws IOException {

		// URL 작성
		String url = "https://apis.data.go.kr/B552584/ArpltnInforInqireSvc/getMsrstnAcctoRltmMesureDnsty";
		url += "?servicekey=" + SERVICEKEY; // 서비스키 추가
		url += "&stationName=" + URLEncoder.encode(stationName, "UTF-8"); // 지역명 추가(한글들어가면 인코딩 처리)
		url += "&returnType=json"; // 리턴타입
		url += "&pageNo=1"; // 페이지 번호
		url += "&numOfRows=100";// 한 페이지 결과 수
		url += "&dataTerm=DAILY";// 요청 데이터기간(1일: DAILY, 1개월: MONTH, 3개월: 3MONTH)
		url += "&ver=1.4";

		// 작성된 url 정보를 넣어 URL 객체 생성
		URL requestURL = new URL(url);

		// 생성된 URL 객체로 urlConnnection 생성
		HttpURLConnection urlConnection = (HttpURLConnection) requestURL.openConnection();
		urlConnection.setRequestMethod("GET");

		// 전달받은 응답데이터를 읽어줄 스트림 연결(기반 스트림을 얻어와 보조 스트림을 생성)
		BufferedReader bReader = new BufferedReader(new InputStreamReader(urlConnection.getInputStream()));

		String responseText = "";
		String line;

		// bReader로 읽어온 데이터를 line 변수에 넣고 더이상 읽을 데이터가 없을때까지 반복
		while ((line = bReader.readLine()) != null) {
			responseText += line;
		}

		// 자원 반납 및 연결해제
		bReader.close();
		urlConnection.disconnect();

		System.out.println("responseText : " + responseText);

		System.out.println("stationName : " + stationName);

		return responseText;
	}

	// 시군구별 대기정보
	@ResponseBody
	@RequestMapping(value = "info20.do", produces = "application/json; charset=UTF-8")
	public String info20(String location, int pageNo) throws IOException {

		// URL 작성
		String url = "https://apis.data.go.kr/B552584/ArpltnInforInqireSvc/getCtprvnRltmMesureDnsty";
		url += "?servicekey=" + SERVICEKEY; // 서비스키 추가
		url += "&sidoName=" + URLEncoder.encode(location, "UTF-8"); // 지역명 추가(한글들어가면 인코딩 처리)
		url += "&returnType=json"; // 리턴타입
		url += "&numOfRows=100";// 한 페이지 결과 수
		url += "&pageNo=" + pageNo; // 페이지 번호
		url += "&ver=1.3";

		System.out.println(url);

		// 작성된 url 정보를 넣어 URL 객체 생성
		URL requestURL = new URL(url);

		// 생성된 URL 객체로 urlConnnection 생성
		HttpURLConnection urlConnection = (HttpURLConnection) requestURL.openConnection();
		urlConnection.setRequestMethod("GET");

		// 전달받은 응답데이터를 읽어줄 스트림 연결(기반 스트림을 얻어와 보조 스트림을 생성)
		BufferedReader bReader = new BufferedReader(new InputStreamReader(urlConnection.getInputStream()));

		String responseText = "";
		String line;

		// bReader로 읽어온 데이터를 line 변수에 넣고 더이상 읽을 데이터가 없을때까지 반복
		while ((line = bReader.readLine()) != null) {
			responseText += line;
		}

		// 자원 반납 및 연결해제
		bReader.close();
		urlConnection.disconnect();

		System.out.println("responseText : " + responseText);

		System.out.println("location : " + location);
		System.out.println("pageNo : " + pageNo);

		return responseText;
	}

	// 시도별 실시간 측정정보 페이지 이동(CtprvnRltmMesureDnsty) - 초미세먼지
	@ResponseBody
	@RequestMapping(value = "info30.do", produces = "application/json; charset=UTF-8")
	public String info30(String location) throws IOException {

		System.out.println(location);

		// URL 작성
		String url = "https://apis.data.go.kr/B552584/ArpltnInforInqireSvc/getCtprvnRltmMesureDnsty";
		url += "?servicekey=" + SERVICEKEY; // 서비스키 추가
		url += "&sidoName=" + URLEncoder.encode(location, "UTF-8"); // 지역명 추가(한글들어가면 인코딩 처리)
		url += "&returnType=json"; // 리턴타입
		url += "&numOfRows=650";// 한 페이지 결과 수
		url += "&pageNo=1"; // 페이지 번호
		url += "&ver=1.3";

		System.out.println(url);

		// 작성된 url 정보를 넣어 URL 객체 생성
		URL requestURL = new URL(url);

		// 생성된 URL 객체로 urlConnnection 생성
		HttpURLConnection urlConnection = (HttpURLConnection) requestURL.openConnection();
		urlConnection.setRequestMethod("GET");

		// 전달받은 응답데이터를 읽어줄 스트림 연결(기반 스트림을 얻어와 보조 스트림을 생성)
		BufferedReader bReader = new BufferedReader(new InputStreamReader(urlConnection.getInputStream()));

		String responseText = "";
		String line;

		// bReader로 읽어온 데이터를 line 변수에 넣고 더이상 읽을 데이터가 없을때까지 반복
		while ((line = bReader.readLine()) != null) {
			responseText += line;
		}

		// 자원 반납 및 연결해제
		bReader.close();
		urlConnection.disconnect();

		System.out.println("responseText : " + responseText);

		return responseText;

	}

}
