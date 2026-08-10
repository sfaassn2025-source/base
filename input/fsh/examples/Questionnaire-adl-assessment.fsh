Instance: twss-adl-assessment
InstanceOf: QuestionnaireADLAssessmentTWSSBase
Usage: #definition
Title: "日常生活功能（ADL）評估問卷"
Description: "TWSS Base 日常生活功能評估問卷。"
* url = "https://sfaa.gov.tw/base/Questionnaire/twss-adl-assessment"
* version = "0.0.1"
* status = #active
* subjectType[0] = #Patient
* item[adl].text = "日常生活功能（ADL）"
* item[adl].item[selfCare].text = "生活自理"
* item[adl].item[mobility].text = "肢體行動"
* item[adl].item[walkingAbility].text = "四處走動"
* item[adl].item[householdActivity].text = "居家活動"
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <h3><b>日常生活功能（ADL）評估問卷</b></h3>
  <p>本問卷定義生活自理、肢體行動、四處走動與居家活動之評估題目。</p>
</div>
"""
