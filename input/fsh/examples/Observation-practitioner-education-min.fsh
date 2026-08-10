Instance: practitioner-education-min
InstanceOf: PractitionerEducationObservationTWSSBase
Usage: #example
Title: "服務人教育經歷範例"
Description: "符合服務人教育經歷 Observation Profile 的範例。"
* status = #final
* code = TWSSObservationType#practitioner-education "服務人教育經歷"
* focus = Reference(prac-min)
* component[enrollmentYear].code = TWSSPractitionerEducationComponent#education-enrollment-year "入學年度"
* component[enrollmentYear].valueInteger = 2014
* component[graduationSchool].code = TWSSPractitionerEducationComponent#education-graduation-school "畢業學校名稱"
* component[graduationSchool].valueString = "示範大學"
* component[educationLevel].code = http://loinc.org#91694-0 "Highest level of education of Personnel"
* component[educationLevel].valueCodeableConcept = TWSSPractitionerEducationLevel#4 "大學"
* component[major].code = TWSSPractitionerEducationComponent#education-major "畢業科系"
* component[major].valueString = "社會工作學系"
* component[socialWelfareRelated].code = TWSSPractitionerEducationComponent#education-social-welfare-related "是否為社福相關學歷"
* component[socialWelfareRelated].valueBoolean = true
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <h3><b>服務人教育經歷</b></h3>
  <p><b>服務人</b>：<a href="Practitioner-prac-min.html">Practitioner/prac-min</a></p>
  <p><b>入學年度</b>：2014</p>
  <p><b>畢業學校名稱</b>：示範大學</p>
  <p><b>最高學歷</b>：大學 <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（<a href="ValueSet-twss-practitioner-education-level-vs.html">服務人最高學歷值集</a>#4）</span></p>
  <p><b>畢業科系</b>：社會工作學系</p>
  <p><b>是否為社福相關學歷</b>：是</p>
</div>
"""
