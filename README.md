# OpenDataProject_01
Spring Framework를 이용한 공공데이터 프로젝트_01

# Project Summary
공공데이터 포털을 이용한 한국환경공단_에어코리아_대기오염정보 를 이용하여 
각 측정소별 대기오염정보를 조회하기 위한 서비스로 기간별, 시도별 대기오염 정보와 통합대기환경지수 나쁨 이상 측정소 내역, 대기질(미세먼지/오존) 예보 통보 내역 등을 조회할 수 있습니다.

# Page Description
jQuery와 Bootstrap을 사용하여 선택한 지역의 대기 오염 데이터를 실시간으로 가져와 표시하는 웹 페이지입니다. 
데이터는 "air.do"이라는 이름의 서버측 스크립트에서 가져옵니다. 
페이지에는 영역을 선택할 수 있는 드롭다운 목록과 선택한 영역에 대한 데이터를 가져오는 버튼이 있습니다. 
가져온 데이터는 테이블에 표시되며, 여러 페이지의 데이터를 볼 수 있는 페이지 지정 기능이 있습니다.

페이지가 로드되면 필요한 jQuery 및 부트스트랩 라이브러리가 포함됩니다. 
또한 가져온 데이터를 표시하기 위한 테이블과 영역을 선택하기 위한 드롭다운 목록을 정의합니다. 
페이지 지정 기능도 정의됩니다.

자바스크립트 코드는 페이지 기능에 대한 버튼 클릭 이벤트와 페이지 클릭 이벤트를 수신합니다. 
이 버튼을 클릭하면 선택한 지역과 페이지 번호를 가져오고 "air.do" 스크립트로 AJAX를 호출하여 선택한 지역과 페이지 번호를 매개 변수로 전달합니다. 
AJAX 호출이 응답을 반환하면 테이블에 데이터가 채워집니다.

페이지 클릭 이벤트가 트리거되면 페이지 번호를 가져오고 다른 AJAX 호출을 수행하여 선택한 영역과 지정된 페이지 번호에 대한 데이터를 가져옵니다. 

마지막으로 가져온 데이터가 테이블에 표시됩니다.

### 1. Initial Screen

<h4>1-1</h4>
<img width="955" alt="image" src="https://user-images.githubusercontent.com/109671963/224656860-54cf1cbb-8875-4005-b03e-8b0d6f9691a9.png">
<h4>1-2</h4>
<img width="959" alt="image" src="https://user-images.githubusercontent.com/109671963/224656904-170738a2-b6d7-4707-b1c3-36e2f5257c1e.png">
<h4>1-3</h4>
<img width="958" alt="image" src="https://user-images.githubusercontent.com/109671963/224657043-e0d5a897-e495-4803-b2e7-21d3e9b9b718.png">


### 2. Click the air pollution button in the area to check the area information.
<h4>2-1</h4>
<img width="958" alt="image" src="https://user-images.githubusercontent.com/109671963/224657384-1a3d95f8-c828-490e-8969-5491bc869a37.png">
<h4>2-2</h4>
<img width="959" alt="image" src="https://user-images.githubusercontent.com/109671963/224657453-4856a3e7-6b74-4ba5-8c9f-e35ab5551cbe.png">
<h4>2-3</h4>
<img width="959" alt="image" src="https://user-images.githubusercontent.com/109671963/224657532-4c311092-eaeb-4ce1-b9f6-ce63ebcdb45a.png">


### 3. Retrieve data through Ajax after paging processing.
<h4>3-1</h4>
<img width="948" alt="image" src="https://user-images.githubusercontent.com/109671963/224658086-26c4e25f-84bb-4169-b35d-98454aa1a28c.png">
<h4>3-2</h4>
<img width="960" alt="image" src="https://user-images.githubusercontent.com/109671963/224658134-7573f66b-6b5c-4354-95a8-5d4188518c7f.png">
<h4>3-3</h4>
<img width="958" alt="image" src="https://user-images.githubusercontent.com/109671963/224658190-b969b41f-6289-4f78-9d36-4664063476ac.png">
