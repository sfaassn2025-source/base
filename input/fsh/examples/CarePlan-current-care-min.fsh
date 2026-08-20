Instance: current-care-min
InstanceOf: CarePlanTWSSBase
Usage: #example
Title: "個案服務規劃範例"
Description: "符合 CarePlan TWSS Base Profile 的個案服務規劃範例。"
* status = #active
* intent = #plan
* subject = Reference(pat-min)
* extension[workflowEpisodeOfCare].valueReference = Reference(episode-base)
* activity[financialSubsidy].detail.status = #scheduled
* activity[financialSubsidy].detail.code = TWSSProvidedFinancialSubsidy#5 "身心障礙者生活補助"
* activity[medicalRehabilitationService].detail.status = #scheduled
* activity[medicalRehabilitationService].detail.code = TWSSMedicalRehabilitationService#A "語言治療"
* activity[medicalAssistance].detail.status = #scheduled
* activity[medicalAssistance].detail.code = TWSSMedicalAssistance#A "鼻胃管"
* activity[welfareService].detail.status = #scheduled
* activity[welfareService].detail.code = TWSSProvidedWelfareService#3 "身體照顧及家務服務"
* activity[employmentService].detail.status = #scheduled
* activity[employmentService].detail.code = TWSSProvidedEmploymentService#13 "就業服務"
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <h3><b>個案服務規劃</b></h3>
  <p><b>個案</b>：<a href="Patient-pat-min.html">Patient/pat-min</a></p>
  <p><b>案件</b>：<a href="EpisodeOfCare-episode-base.html">EpisodeOfCare/episode-base</a></p>
  <p><b>預計提供經濟補助</b>：<span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki"><a href="CodeSystem-twss-provided-financial-subsidy.html">TWSS 預計提供經濟補助代碼系統</a>#5</span> 身心障礙者生活補助</p>
  <p><b>預計提供福利服務</b>：<span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki"><a href="CodeSystem-twss-provided-welfare-service.html">TWSS 預計提供福利服務代碼系統</a>#3</span> 身體照顧及家務服務</p>
  <p><b>預計提供就業服務</b>：<span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki"><a href="CodeSystem-twss-provided-employment-service.html">TWSS 預計提供就業服務代碼系統</a>#13</span> 就業服務</p>
</div>
"""
