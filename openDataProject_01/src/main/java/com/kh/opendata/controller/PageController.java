package com.kh.opendata.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PageController {

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

}
