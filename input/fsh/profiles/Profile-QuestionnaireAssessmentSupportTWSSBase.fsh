Profile: QuestionnaireDisabilityStatusTWSSBase
Parent: QuestionnaireTWSSBase
Id: Questionnaire-disability-status-twss-base
Title: "身心障礙狀況-Questionnaire TWSS Base"
Description: "定義身心障礙狀況評估表單的題目結構。"
* ^version = "0.0.1"
* item ^slicing.discriminator.type = #value
* item ^slicing.discriminator.path = "linkId"
* item ^slicing.rules = #closed
* item contains disabilityClassification 1..1 MS and disabilityCertificate 0..1 MS
* item[disabilityClassification].linkId = "7.1"
* item[disabilityClassification].type = #group
* item[disabilityClassification].item ^slicing.discriminator.type = #value
* item[disabilityClassification].item ^slicing.discriminator.path = "linkId"
* item[disabilityClassification].item ^slicing.rules = #closed
* item[disabilityClassification].item contains disabilityCause 0..1 MS and disabilityLocation 0..1 MS and newDisabilityClassification 0..* MS and oldDisabilityType 0..1 MS and icf 0..1 MS and disabilitySeverityLevel 0..1 MS and disabilityOnsetDate 0..1 MS
* item[disabilityClassification].item[disabilityCause].linkId = "7.1.1"
* item[disabilityClassification].item[disabilityCause].type = #choice
* item[disabilityClassification].item[disabilityCause].repeats = true
* item[disabilityClassification].item[disabilityCause].answerValueSet = Canonical(twss-disability-cause-vs)
* item[disabilityClassification].item[disabilityLocation].linkId = "7.1.2"
* item[disabilityClassification].item[disabilityLocation].type = #open-choice
* item[disabilityClassification].item[disabilityLocation].repeats = true
* item[disabilityClassification].item[disabilityLocation].answerValueSet = Canonical(twss-physical-disability-type-vs)
* item[disabilityClassification].item[newDisabilityClassification].linkId = "7.1.3"
* item[disabilityClassification].item[newDisabilityClassification].type = #group
* item[disabilityClassification].item[newDisabilityClassification].repeats = true
* item[disabilityClassification].item[newDisabilityClassification].item ^slicing.discriminator.type = #value
* item[disabilityClassification].item[newDisabilityClassification].item ^slicing.discriminator.path = "linkId"
* item[disabilityClassification].item[newDisabilityClassification].item ^slicing.rules = #closed
* item[disabilityClassification].item[newDisabilityClassification].item contains newDisabilityType 1..1 MS and newDisabilityCategory 0..1 MS
* item[disabilityClassification].item[newDisabilityClassification].item[newDisabilityType].linkId = "7.1.3.1"
* item[disabilityClassification].item[newDisabilityClassification].item[newDisabilityType].type = #choice
* item[disabilityClassification].item[newDisabilityClassification].item[newDisabilityType].required = true
* item[disabilityClassification].item[newDisabilityClassification].item[newDisabilityType].answerValueSet = Canonical(twss-disability-type-new-category-vs)
* item[disabilityClassification].item[newDisabilityClassification].item[newDisabilityCategory].linkId = "7.1.3.2"
* item[disabilityClassification].item[newDisabilityClassification].item[newDisabilityCategory].type = #choice
* item[disabilityClassification].item[newDisabilityClassification].item[newDisabilityCategory].repeats = true
* item[disabilityClassification].item[newDisabilityClassification].item[newDisabilityCategory].answerValueSet = Canonical(twss-new-disability-category-vs)
* item[disabilityClassification].item[oldDisabilityType].linkId = "7.1.4"
* item[disabilityClassification].item[oldDisabilityType].type = #choice
* item[disabilityClassification].item[oldDisabilityType].repeats = true
* item[disabilityClassification].item[oldDisabilityType].answerValueSet = Canonical(twss-disability-type-legacy-vs)
* item[disabilityClassification].item[icf].linkId = "7.1.5"
* item[disabilityClassification].item[icf].type = #choice
* item[disabilityClassification].item[icf].repeats = true
* item[disabilityClassification].item[icf].answerValueSet = Canonical(icf-code-vs)
* item[disabilityClassification].item[disabilitySeverityLevel].linkId = "7.1.6"
* item[disabilityClassification].item[disabilitySeverityLevel].type = #choice
* item[disabilityClassification].item[disabilitySeverityLevel].answerValueSet = Canonical(twss-disability-severity-level-vs)
* item[disabilityClassification].item[disabilityOnsetDate].linkId = "7.1.7"
* item[disabilityClassification].item[disabilityOnsetDate].type = #date
* item[disabilityCertificate].linkId = "7.2"
* item[disabilityCertificate].type = #group
* item[disabilityCertificate].item ^slicing.discriminator.type = #value
* item[disabilityCertificate].item ^slicing.discriminator.path = "linkId"
* item[disabilityCertificate].item ^slicing.rules = #closed
* item[disabilityCertificate].item contains hasDisabilityCertificate 1..1 MS and certificateNotIssuedReason 0..1 MS and isDisabilityCertificatePermanent 0..1 MS and disabilityAssessmentDate 0..1 MS
* item[disabilityCertificate].item[hasDisabilityCertificate].linkId = "7.2.1"
* item[disabilityCertificate].item[hasDisabilityCertificate].type = #boolean
* item[disabilityCertificate].item[certificateNotIssuedReason].linkId = "7.2.2"
* item[disabilityCertificate].item[certificateNotIssuedReason].type = #choice
* item[disabilityCertificate].item[certificateNotIssuedReason].answerValueSet = Canonical(twss-certificate-not-issued-reason-vs)
* item[disabilityCertificate].item[certificateNotIssuedReason].enableWhen.question = "7.2.1"
* item[disabilityCertificate].item[certificateNotIssuedReason].enableWhen.operator = #=
* item[disabilityCertificate].item[certificateNotIssuedReason].enableWhen.answerBoolean = false
* item[disabilityCertificate].item[isDisabilityCertificatePermanent].linkId = "7.2.3"
* item[disabilityCertificate].item[isDisabilityCertificatePermanent].type = #boolean
* item[disabilityCertificate].item[isDisabilityCertificatePermanent].enableWhen.question = "7.2.1"
* item[disabilityCertificate].item[isDisabilityCertificatePermanent].enableWhen.operator = #=
* item[disabilityCertificate].item[isDisabilityCertificatePermanent].enableWhen.answerBoolean = true
* item[disabilityCertificate].item[disabilityAssessmentDate].linkId = "7.2.4"
* item[disabilityCertificate].item[disabilityAssessmentDate].type = #date
* item[disabilityCertificate].item[disabilityAssessmentDate].enableWhen.question = "7.2.1"
* item[disabilityCertificate].item[disabilityAssessmentDate].enableWhen.operator = #=
* item[disabilityCertificate].item[disabilityAssessmentDate].enableWhen.answerBoolean = true

Profile: QuestionnaireAssistiveDeviceStatusTWSSBase
Parent: QuestionnaireTWSSBase
Id: Questionnaire-assistive-device-status-twss-base
Title: "輔具使用狀況-Questionnaire TWSS Base"
Description: "定義輔具使用狀況評估表單的題目結構。"
* ^version = "0.0.1"
* item ^slicing.discriminator.type = #value
* item ^slicing.discriminator.path = "linkId"
* item ^slicing.rules = #closed
* item contains assistiveDeviceStatus 1..1 MS
* item[assistiveDeviceStatus].linkId = "8"
* item[assistiveDeviceStatus].type = #group
* item[assistiveDeviceStatus].item ^slicing.discriminator.type = #value
* item[assistiveDeviceStatus].item ^slicing.discriminator.path = "linkId"
* item[assistiveDeviceStatus].item ^slicing.rules = #closed
* item[assistiveDeviceStatus].item contains assistiveDeviceName 1..1 MS and assistiveDeviceUsage 1..1 MS
* item[assistiveDeviceStatus].item[assistiveDeviceName].linkId = "8.1"
* item[assistiveDeviceStatus].item[assistiveDeviceName].type = #string
* item[assistiveDeviceStatus].item[assistiveDeviceUsage].linkId = "8.2"
* item[assistiveDeviceStatus].item[assistiveDeviceUsage].type = #boolean

Profile: QuestionnaireADLAssessmentTWSSBase
Parent: QuestionnaireTWSSBase
Id: Questionnaire-adl-assessment-twss-base
Title: "日常生活功能 ADL 評估-Questionnaire TWSS Base"
Description: "定義日常生活功能評估表單的題目結構。"
* ^version = "0.0.1"
* item ^slicing.discriminator.type = #value
* item ^slicing.discriminator.path = "linkId"
* item ^slicing.rules = #closed
* item contains adl 1..1 MS
* item[adl].linkId = "9"
* item[adl].type = #group
* item[adl].item ^slicing.discriminator.type = #value
* item[adl].item ^slicing.discriminator.path = "linkId"
* item[adl].item ^slicing.rules = #closed
* item[adl].item contains selfCare 1..1 MS and mobility 1..1 MS and walkingAbility 1..1 MS and householdActivity 1..1 MS
* item[adl].item[selfCare].linkId = "9.1"
* item[adl].item[selfCare].type = #choice
* item[adl].item[selfCare].answerValueSet = Canonical(twss-adl-level-vs)
* item[adl].item[mobility].linkId = "9.2"
* item[adl].item[mobility].type = #choice
* item[adl].item[mobility].answerValueSet = Canonical(twss-adl-level-vs)
* item[adl].item[walkingAbility].linkId = "9.3"
* item[adl].item[walkingAbility].type = #choice
* item[adl].item[walkingAbility].answerValueSet = Canonical(twss-adl-level-vs)
* item[adl].item[householdActivity].linkId = "9.4"
* item[adl].item[householdActivity].type = #choice
* item[adl].item[householdActivity].answerValueSet = Canonical(twss-adl-level-vs)
