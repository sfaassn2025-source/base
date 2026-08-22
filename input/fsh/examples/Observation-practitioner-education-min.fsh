Instance: practitioner-education-min
InstanceOf: PractitionerEducationObservationTWSSBase
Usage: #example
Title: "服務人教育經歷範例"
Description: "符合服務人教育經歷 Observation Profile 的範例。"
* status = #final
* code = TWSSObservationType#education-information "教育資訊"
* focus = Reference(prac-min)
* component[enrollmentYear].code = TWSSEducationComponent#enrollment-year "入學年度"
* component[enrollmentYear].valueInteger = 2014
* component[schoolName].code = TWSSEducationComponent#school-name "就讀學校名稱"
* component[schoolName].valueString = "示範大學"
* component[educationLevel].code = TWSSEducationComponent#education-level "教育程度"
* component[educationLevel].valueCodeableConcept = TWSSEducationLevel#6 "大學"
* component[major].code = TWSSEducationComponent#major "就讀或畢業科系"
* component[major].valueString = "社會工作學系"
* component[graduated].code = TWSSEducationComponent#graduated "是否畢業"
* component[graduated].valueBoolean = true
* component[graduationYear].code = TWSSEducationComponent#graduation-year "畢業年度"
* component[graduationYear].valueQuantity.value = 2018
* component[relatedMajorGraduate].code = TWSSEducationComponent#related-major-graduate "是否為相關科系畢業"
* component[relatedMajorGraduate].valueBoolean = true
* component[socialWelfareRelated].code = TWSSEducationComponent#social-welfare-related "是否為社福相關學歷"
* component[socialWelfareRelated].valueBoolean = true
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <h3><b>服務人教育經歷</b></h3>
  <p><b>服務人</b>：<a href="Practitioner-prac-min.html">Practitioner/prac-min</a></p>
  <p><b>入學年度</b>：2014</p>
  <p><b>服務人就讀學校名稱</b>：示範大學</p>
  <p><b>服務人教育程度</b>：大學 <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（<a href="ValueSet-twss-education-level-vs.html">TWSS-教育程度值集</a>#6）</span></p>
  <p><b>畢業科系</b>：社會工作學系</p>
  <p><b>是否為社福相關學歷</b>：是</p>
</div>
"""
