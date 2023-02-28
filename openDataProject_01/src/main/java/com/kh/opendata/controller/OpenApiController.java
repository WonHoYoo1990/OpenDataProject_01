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

	public static final String SERVICEKEY = "dcg8Wgf1maRr%2Bgle3cHYHEcdecll%2BVyBBx5BtVh2HzVZcgufBC8hW%2F1ej%2FjxKwxOVlF6yquM99%2BRojUfu9W4Ug%3D%3D";

	// 메인페이지 이동
	@RequestMapping(value = "mainPage.do")
	public String mainPage() {
		return "main";
	}

	// 측정소별 대기정보 페이지 이동 (MsrstnAcctoRltmMesureDnsty)
	@RequestMapping(value = "info10Page.do")
	public String info10Page() {
		return "AirKoreaInfo/AirKorea01/info10";
	}

	// 시군구별 대기정보 페이지 이동
	@RequestMapping(value = "info20Page.do")
	public String info20Page() {
		return "AirKoreaInfo/AirKorea02//info20";
	}

	// 시도별 실시간 측정정보 페이지 이동(CtprvnRltmMesureDnsty) - 초미세먼지
	@RequestMapping(value = "info30Page.do")
	public String info30Page() {
		return "AirKoreaInfo/AirKorea03//info30";
	}

	// 시도별 실시간 측정정보 페이지 이동(CtprvnRltmMesureDnsty) - 미세먼지
	@RequestMapping(value = "info31Page.do")
	public String info31Page() {
		return "AirKoreaInfo/AirKorea03/info31";
	}

	// 시도별 실시간 측정정보 페이지 이동(CtprvnRltmMesureDnsty) - 오존
	@RequestMapping(value = "info32Page.do")
	public String info32Page() {
		return "AirKoreaInfo/AirKorea03/info32";
	}

	// 시도별 실시간 측정정보 페이지 이동(CtprvnRltmMesureDnsty) - 이산화질소
	@RequestMapping(value = "info33Page.do")
	public String info33Page() {
		return "AirKoreaInfo/AirKorea03/info33";
	}

	// 시도별 실시간 측정정보 페이지 이동(CtprvnRltmMesureDnsty) - 일산화탄소
	@RequestMapping(value = "info34Page.do")
	public String info34Page() {
		return "AirKoreaInfo/AirKorea03/info34";
	}

	// 시도별 실시간 측정정보 페이지 이동(CtprvnRltmMesureDnsty) - 아황산가스
	@RequestMapping(value = "info35Page.do")
	public String info35Page() {
		return "AirKoreaInfo/AirKorea03/info35";
	}

	// 시군구별 대기정보 페이지 이동
	// JSON 형식으로 OPEN API 활용
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

	@ResponseBody
	@RequestMapping(value = "info30.do", produces = "application/json; charset=UTF-8")
	// 시도별 실시간 측정정보 페이지 이동(CtprvnRltmMesureDnsty) - 초미세먼지
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
