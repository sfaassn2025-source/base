Instance: assessment-questionnaire-base-min
InstanceOf: QuestionnaireTWSSBase
Usage: #example
Title: "社福評估表單範例"
Description: "符合社福評估 Questionnaire TWSS Base Profile 的最小範例。"
* url = "https://sfaa.gov.tw/base/Questionnaire/assessment-questionnaire-base-min"
* title = "社福評估表單"
* status = #active
* subjectType[0] = #Patient
* item[0].linkId = "1"
* item[0].text = "評估摘要"
* item[0].type = #text
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <h3><b>社福評估表單</b></h3>
  <p>本範例為社福評估 Questionnaire 的基本定義。</p>
</div>
"""
