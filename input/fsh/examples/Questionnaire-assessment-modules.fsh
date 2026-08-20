// Q01-Q08 and Q10-Q11 assessment questionnaire definitions.

Instance: living-condition-assessment
InstanceOf: QuestionnaireLivingConditionTWSSBase
Usage: #definition
Title: "居住狀況評估 Questionnaire"
Description: "記錄個案住所、房屋、居住環境、臥房與同住狀況的評估表單。"
* url = "https://sfaa.gov.tw/base/Questionnaire/living-condition-assessment"
* status = #active
* subjectType[0] = #Patient
* item[livingCondition].text = "居住狀況"
* item[livingCondition].item[livingType].text = "住所類型"
* item[livingCondition].item[housingType].text = "房屋類型"
* item[livingCondition].item[livingEnvironment].text = "居住環境"
* item[livingCondition].item[hasPrivateBedroom].text = "是否有獨立臥房"
* item[livingCondition].item[currentLivingStatus].text = "目前生活情形"
* item[livingCondition].item[livingStatus].text = "同住狀況"
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml"><h3><b>居住狀況評估問卷</b></h3><p>本問卷定義住所、房屋、居住環境與同住狀況之評估題目。</p></div>
"""

Instance: family-assessment
InstanceOf: QuestionnaireFamilyAssessmentTWSSBase
Usage: #definition
Title: "家庭評估 Questionnaire"
Description: "記錄家庭環境與外部支持評估結果的表單。"
* url = "https://sfaa.gov.tw/base/Questionnaire/family-assessment"
* status = #active
* subjectType[0] = #Patient
* item[familyAssessment].text = "家庭評估"
* item[familyAssessment].item[familyEnvironment].text = "家庭環境"
* item[familyAssessment].item[externalSupport].text = "外部支持"
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml"><h3><b>家庭評估問卷</b></h3><p>本問卷定義家庭環境與外部支持之評估題目。</p></div>
"""

Instance: related-person-risk-assessment
InstanceOf: QuestionnaireRelatedPersonRiskTWSSBase
Usage: #definition
Title: "關係人風險狀況 Questionnaire"
Description: "以重複關係人群組記錄犯罪紀錄與物質濫用風險的評估表單。"
* url = "https://sfaa.gov.tw/base/Questionnaire/related-person-risk-assessment"
* status = #active
* subjectType[0] = #Patient
* item[relatedPersonRisk].text = "關係人風險狀況"
* item[relatedPersonRisk].item[relatedPerson].text = "被評估關係人"
* item[relatedPersonRisk].item[relationCriminalRecord].text = "關係人不良犯罪紀錄"
* item[relatedPersonRisk].item[substanceUse].text = "關係人物質濫用"
* item[relatedPersonRisk].item[substanceUse].item[usesDrugs].text = "是否吸毒"
* item[relatedPersonRisk].item[substanceUse].item[hasAlcoholAddiction].text = "是否有酒癮"
* item[relatedPersonRisk].item[substanceUse].item[smokes].text = "是否抽菸"
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml"><h3><b>關係人風險狀況問卷</b></h3><p>本問卷定義關係人犯罪紀錄與物質濫用風險之評估題目。</p></div>
"""

Instance: crisis-event-location
InstanceOf: QuestionnaireCrisisEventLocationTWSSBase
Usage: #definition
Title: "危機事件地點 Questionnaire"
Description: "記錄個案危機事件事發地點的評估表單。"
* url = "https://sfaa.gov.tw/base/Questionnaire/crisis-event-location"
* status = #active
* subjectType[0] = #Patient
* item[crisisEventLocation].text = "危機事件事發地點"
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml"><h3><b>危機事件地點問卷</b></h3><p>本問卷定義危機事件事發地點之評估題目。</p></div>
"""

Instance: household-disability-count
InstanceOf: QuestionnaireHouseholdDisabilityCountTWSSBase
Usage: #definition
Title: "家庭身障人口狀況 Questionnaire"
Description: "記錄個案家庭中身心障礙者人數的評估表單。"
* url = "https://sfaa.gov.tw/base/Questionnaire/household-disability-count"
* status = #active
* subjectType[0] = #Patient
* item[disabledPersonCount].text = "身障者人數"
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml"><h3><b>家庭身障人口狀況問卷</b></h3><p>本問卷定義家庭中身心障礙者人數之評估題目。</p></div>
"""

Instance: health-disease-status
InstanceOf: QuestionnaireHealthDiseaseStatusTWSSBase
Usage: #definition
Title: "健康與疾病狀況 Questionnaire"
Description: "記錄重大傷病、健康狀況、疾病分類、ICD 與用藥情形的評估表單。"
* url = "https://sfaa.gov.tw/base/Questionnaire/health-disease-status"
* status = #active
* subjectType[0] = #Patient
* item[hasCatastrophicIllnessCard].text = "是否持有重大傷病卡"
* item[catastrophicIllnessName].text = "重大傷病卡病名"
* item[healthStatusLevel].text = "健康狀況分級"
* item[healthStatusOption].text = "健康狀況選項"
* item[diseaseType].text = "疾病類型"
* item[icd].text = "ICD編碼"
* item[medicationStatus].text = "用藥情形"
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml"><h3><b>健康與疾病狀況問卷</b></h3><p>本問卷定義重大傷病、健康狀況、疾病與用藥情形之評估題目。</p></div>
"""

Instance: disability-status
InstanceOf: QuestionnaireDisabilityStatusTWSSBase
Usage: #definition
Title: "身心障礙狀況 Questionnaire"
Description: "記錄障礙分類、致障原因、障礙證明與相關日期的評估表單。"
* url = "https://sfaa.gov.tw/base/Questionnaire/disability-status"
* status = #active
* subjectType[0] = #Patient
* item[disabilityClassification].text = "障礙分類與狀況"
* item[disabilityClassification].item[disabilityCause].text = "致障原因"
* item[disabilityClassification].item[disabilityLocation].text = "障礙部位"
* item[disabilityClassification].item[newDisabilityClassification].text = "新制障礙分類"
* item[disabilityClassification].item[newDisabilityClassification].item[newDisabilityType].text = "新制障礙類別"
* item[disabilityClassification].item[newDisabilityClassification].item[newDisabilityCategory].text = "新制障礙類別內容"
* item[disabilityClassification].item[oldDisabilityType].text = "舊制障礙類別"
* item[disabilityClassification].item[icf].text = "ICF編碼"
* item[disabilityClassification].item[disabilitySeverityLevel].text = "障礙程度等級"
* item[disabilityClassification].item[disabilityOnsetDate].text = "致障時間"
* item[disabilityCertificate].text = "身心障礙證明狀況"
* item[disabilityCertificate].item[hasDisabilityCertificate].text = "有無身心障礙證明"
* item[disabilityCertificate].item[certificateNotIssuedReason].text = "未領證原因"
* item[disabilityCertificate].item[isDisabilityCertificatePermanent].text = "身心障礙永久有效"
* item[disabilityCertificate].item[disabilityAssessmentDate].text = "身心障礙鑑定日期"
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml"><h3><b>身心障礙狀況問卷</b></h3><p>本問卷定義障礙分類、致障原因、障礙證明與相關日期之評估題目。</p></div>
"""

Instance: assistive-device-status
InstanceOf: QuestionnaireAssistiveDeviceStatusTWSSBase
Usage: #definition
Title: "輔具使用狀況 Questionnaire"
Description: "記錄個案輔具名稱與使用情形的評估表單。"
* url = "https://sfaa.gov.tw/base/Questionnaire/assistive-device-status"
* status = #active
* subjectType[0] = #Patient
* item[assistiveDeviceStatus].text = "輔具使用狀況"
* item[assistiveDeviceStatus].item[assistiveDeviceName].text = "輔具名稱"
* item[assistiveDeviceStatus].item[assistiveDeviceUsage].text = "輔具使用情形"
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml"><h3><b>輔具使用狀況問卷</b></h3><p>本問卷定義輔具名稱與使用情形之評估題目。</p></div>
"""

Instance: welfare-economic-status
InstanceOf: QuestionnaireWelfareEconomicStatusTWSSBase
Usage: #definition
Title: "福利與經濟現況 Questionnaire"
Description: "記錄既有補助、保險與福利身分的評估表單。"
* url = "https://sfaa.gov.tw/base/Questionnaire/welfare-economic-status"
* status = #active
* subjectType[0] = #Patient
* item[existingSubsidy].text = "已取得補助"
* item[existingSubsidy].item[receivedSubsidyType].text = "已取得補助類型"
* item[existingSubsidy].item[receivedSubsidyAmount].text = "已取得補助金額"
* item[insuranceStatus].text = "保險狀況"
* item[welfareIdentityType].text = "福利身分別"
* item[monthlyRent].text = "每月租金"
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml"><h3><b>福利與經濟現況問卷</b></h3><p>本問卷定義既有補助、保險與福利身分之評估題目。</p></div>
"""

Instance: visit-record
InstanceOf: QuestionnaireVisitRecordTWSSBase
Usage: #definition
Title: "訪視紀錄 Questionnaire"
Description: "記錄訪視對象、方式、開始與結束時間及摘要的表單。"
* url = "https://sfaa.gov.tw/base/Questionnaire/visit-record"
* status = #active
* subjectType[0] = #Patient
* item[visitTarget].text = "訪視對象"
* item[visitServiceMethod].text = "訪視服務方式"
* item[visitStartTime].text = "訪視開始時間"
* item[visitEndTime].text = "訪視結束時間"
* item[visitSummary].text = "訪視摘要"
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml"><h3><b>訪視紀錄問卷</b></h3><p>本問卷定義訪視對象、方式、時間與摘要之記錄題目。</p></div>
"""
