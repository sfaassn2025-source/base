<div class="bg-success" style="ol { counter-reset: item } li { display: block } li:before { content: counters（item, ">
</div>


### 專案介紹
臺灣社政領域之服務實作指引(TW Social Service Base IG)採用HL7® FHIR® standard（Fast Healthcare Interoperability Resources）IG建置方法，在FHIR R4.0.1之標準基礎上，繼承TW Core IG V 0.3.2 (2024-12-12)，進一步定義適用於「臺灣社政領域之服務實作指引(以下簡稱本專案)」資料需求的Resources（類似資料表）、其中的資料項目（意即欄位）、基數（意即0..1、0..*、1..1或1..*）及資料類型（文字、日期時間、代碼等）等。

### 專案背景

衛生福利部自107年起推動強化社會安全網計畫，以全人觀點致力於為弱勢家庭和個人提供多元支持和福利服務，對象涵蓋兒少、婦女、老年人、身障者及脆弱家庭等。強化社會安全網計畫係「以家庭為中心，以社區為基礎」之核心精神，結合政府各部門的力量，期建構綿密的社會褔利服務輸送與社會安全網絡體系，發揮「一主責、多協力」的服務模式，強調網絡合作的重要性。
社會安全網服務對象經常涵蓋多重議題，例如一個家庭中可能同時有家庭暴力、兒少保護、精神障礙或藥癮個案等問題，由不同領域及專長之服務提供者開案協助，然而實務面卻發現，跨單位的個案服務系統缺乏互通與串連，第一線人員無從得知案家於其他網絡單位的完整服務歷程，使得協力網絡之間如同資訊孤島，無法充分實踐「一主責、多協力」的加乘效益。
為強化網絡單位共享服務資訊，落實資料治理，各系統之間需建立資料標準化格式，辦理社會安全網服務系統資料標準化作業，以提升整體社會安全網之服務品質與效能。


### 如何閱讀這個實作指引(IG)
<div  style="padding-left: 10px;"> 
<p>本IG之網站架構圖如下圖所示。各功能說明如下：</p>

<img class="figure-img img-responsive img-rounded center-block" src="structure.png" alt="IG架構圖" style="display: block;margin-left: auto;margin-right: auto;width: 90%;"/>
<div style="clear:both;"></div>

<ul>
	<li><strong><a href="index.html">應用說明</a></strong>：本IG介紹及背景說明。</li>
	<li><strong><a href="vision.html">視覺化邏輯模型</a></strong>：本IG邏輯模型架構視覺化圖。</li>
	<li><strong><a href="artifacts.html">規範文件</a></strong>
	<ul>
		<li><strong><a href="capabilitystatements.html">能力聲明</a>
			</strong>：應用本IG於建置業務目的使用的FHIR Server時，該FHIR Server必須及建議應該支援的資料存取功能。
		</li>
		<li><strong><a href="models.html">邏輯模型</a>
			</strong>：本IG的所有邏輯模型(Logical Models)，邏輯模型會定義相應情境下使用的所有資料欄位。為了便於實作者快速理解，資料欄位會使用易於理解的命名，實作者再透過邏輯模型中的功能頁籤「Mappings」瞭解各資料欄位實際使用本IG的哪個Profiles的哪個資料項目(element)。
		</li>
    	<li><strong><a href="profiles-and-extensions.html">FHIR Profiles</a></strong>：
        	<ul>
          		<li>本IG的所有Profiles之定義與範例。</li>
          		<li>各資料項目不同實作強制程度的Terminology。</li>
        	</ul>
      	</li>
		<li><strong><a href="terminologies.html">專門術語</a>
			</strong>：本IG所使用的專門術語，包括代碼系統（Code Systems）及值集（Value Sets）。
		</li>
	</ul>
	</li>
	<li><strong><a href="examples.html">範例</a></strong>：本IG所定義Profiles之範例檔。</li>
	<li><strong><a href="downloads.html">定義與範例檔下載</a></strong>：實作者若不偏好使用FHIR RESTful API驗證資料是否符合Profiles，可直接下載所需的格式驗證檔，包括XML、JSON及Turtle三種格式，亦可於此下載完整範例檔。</li>
	<li><strong><a href="security.html">安全性</a></strong>：主要說明採用本IG網站進行實作時，有關資料存取授權的作法。</li>
	<li><strong><a href="history.html">版本異動</a></strong>：若本IG網站的版本有所異動，皆可透過<a href="history.html">異動說明頁</a>得以瞭解版本間的異動差異。</li>
</ul>
</div>

### 作者與貢獻者

<div class="table-responsive">
<table class="table table-striped table-bordered">
  <thead>
    <tr>
      <th>角色</th>
      <th>機構</th>
      <th>姓名</th>
      <th>所屬單位</th>
      <th>聯絡方式</th>
      <th>原因</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>作者</td>
      <td>詠鋐智能股份有限公司</td>
      <td>林伃瑤（Yu-Yao Lin）</td>
      <td>國立臺北護理健康大學－健康事業管理系<br />(Department of Health Care Management, National Taipei University of Nursing and Health Sciences)</td>
      <td><a href="mailto:a28485251@gmail.com">a28485251@gmail.com</a></td>
      <td>製作 IG 的主要人</td>
    </tr>
    <tr>
      <td>貢獻者</td>
      <td>衛生福利部社會家庭與福利署</td>
      <td>王齡儀</td>
      <td>社會安全網小組</td>
      <td>—</td>
      <td>本案主責單位</td>
    </tr>
    <tr>
      <td>貢獻者</td>
      <td>衛生福利部社會家庭與福利署</td>
      <td>陳佩琪</td>
      <td>社會安全網小組</td>
      <td>—</td>
      <td>本案主責單位</td>
    </tr>
    <tr>
      <td>貢獻者</td>
      <td>衛生福利部社會家庭與福利署</td>
      <td>詹慶恩</td>
      <td>社會安全網小組</td>
      <td>—</td>
      <td>本案主責單位</td>
    </tr>
    <tr>
      <td>貢獻者</td>
      <td>詠鋐智能股份有限公司</td>
      <td>謝宗震</td>
      <td>—</td>
      <td>—</td>
      <td>本案工作團隊</td>
    </tr>
    <tr>
      <td>貢獻者</td>
      <td>國立臺北護理健康大學</td>
      <td>李麗惠（Li-Hui Lee）</td>
      <td>健康事業管理系<br />(Department of Health Care Management, National Taipei University of Nursing and Health Sciences)</td>
      <td><a href="mailto:cclhlee@gmail.com">cclhlee@gmail.com</a><br /><a href="mailto:cclhlee@ntunhs.edu.tw">cclhlee@ntunhs.edu.tw</a></td>
      <td>本案工作團隊</td>
    </tr>
    <tr>
      <td>貢獻者</td>
      <td>—</td>
      <td>李承恩</td>
      <td>—</td>
      <td>—</td>
      <td>本案工作團隊</td>
    </tr>
    <tr>
      <td>貢獻者</td>
      <td>—</td>
      <td>謝佩穎</td>
      <td>—</td>
      <td>—</td>
      <td>本案工作團隊</td>
    </tr>
    <tr>
      <td>貢獻者</td>
      <td>—</td>
      <td>蘇怡嘉</td>
      <td>—</td>
      <td>—</td>
      <td>本案工作團隊</td>
    </tr>
    <tr>
      <td>貢獻者</td>
      <td>—</td>
      <td>郭超望</td>
      <td>—</td>
      <td>—</td>
      <td>本案工作團隊</td>
    </tr>
    <tr>
      <td>貢獻者</td>
      <td>—</td>
      <td>黃存宇</td>
      <td>—</td>
      <td>—</td>
      <td>本案工作團隊</td>
    </tr>
    <tr>
      <td>貢獻者</td>
      <td>—</td>
      <td>謝芝庭</td>
      <td>—</td>
      <td>—</td>
      <td>本案工作團隊</td>
    </tr>
    <tr>
      <td>貢獻者</td>
      <td>—</td>
      <td>陳藝方</td>
      <td>—</td>
      <td>—</td>
      <td>本案工作團隊</td>
    </tr>
    <tr>
      <td>貢獻者</td>
      <td>—</td>
      <td>鄭嘉儀</td>
      <td>—</td>
      <td>—</td>
      <td>本案工作團隊</td>
    </tr>
    <tr>
      <td>貢獻者</td>
      <td>—</td>
      <td>李嘉珉</td>
      <td>—</td>
      <td>—</td>
      <td>本案工作團隊</td>
    </tr>
    <tr>
      <td>貢獻者</td>
      <td>—</td>
      <td>楊宜蓁</td>
      <td>—</td>
      <td>—</td>
      <td>本案工作團隊</td>
    </tr>
    <tr>
      <td>貢獻者</td>
      <td>—</td>
      <td>黃凱暉</td>
      <td>—</td>
      <td>—</td>
      <td>本案工作團隊</td>
    </tr>
    <tr>
      <td>貢獻者</td>
      <td>—</td>
      <td>陳潔寧</td>
      <td>—</td>
      <td>—</td>
      <td>本案工作團隊</td>
    </tr>
  </tbody>
</table>
</div>
