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

	public static final String SERVICEKEY = "개인 서비스키 입력";

	// realtime_measurement_info
	// JSON 형식으로 OPEN API 활용
	@ResponseBody
	@RequestMapping(value = "air.do", produces = "application/json; charset=UTF-8")
	public String airMethod(String location, int pageNo) throws IOException {

		// URL 작성
		String url = "https://apis.data.go.kr/B552584/ArpltnInforInqireSvc/getCtprvnRltmMesureDnsty";
		url += "?servicekey=" + SERVICEKEY; // 서비스키 추가
		url += "&sidoName=" + URLEncoder.encode(location, "UTF-8"); // 지역명 추가(한글들어가면 인코딩 처리)
		url += "&returnType=json"; // 리턴타입
		url += "&numOfRows=50";// 한 페이지 결과 수
		url += "&pageNo=" + pageNo; // 페이지 번호

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

	// XML형식으로 openApi 활용하기
//	@ResponseBody
//	@RequestMapping(value = "air.do", produces = "text/xml; charset=UTF-8")
//	public String method1(String location) throws IOException {
//
//		String url = "http://apis.data.go.kr/B552584/ArpltnInforInqireSvc/getCtprvnRltmMesureDnsty";
//		url += "?serviceKey=" + SERVICEKEY; // 서비스키 추가
//		url += "&sidoName=" + URLEncoder.encode(location, "UTF-8"); // 지역명 추가(한글이 들어가면 인코딩처리를 해야한다)
//		url += "&returnType=xml"; // 리턴 타입
//		url += "&numOfRows=50"; // 결과 개수
//
//		// 작성된 url정보를 넣어 URL 객체 생성
//		URL requestUrl = new URL(url);
//
//		// 생성된 URL 객체로 urlConnection 생성
//		HttpURLConnection urlConnection = (HttpURLConnection) requestUrl.openConnection();
//		urlConnection.setRequestMethod("GET");
//
//		// 전달받은 응답데이터를 읽어줄 스트림 연결(기반스트림을 얻어와 보조스트림을 생성한다)
//		BufferedReader br = new BufferedReader(new InputStreamReader(urlConnection.getInputStream()));
//
//		String responseText = "";
//		String line;
//		// br로 읽어온 데이터를 line변수에 넣고 더이상 읽을 데이터가 없을때까지 반복시키기
//		while ((line = br.readLine()) != null) {
//			responseText += line;
//		}
//
//		// 자원반납 및 연결 해제
//		br.close();
//		urlConnection.disconnect();
//
//		System.out.println(responseText);
//
//		return responseText;
//
//	}
}
