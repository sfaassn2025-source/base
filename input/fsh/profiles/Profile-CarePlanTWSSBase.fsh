Profile: CarePlanTWSSBase
Parent: CarePlan
Id: CarePlan-twss-base
Title: "個案服務計畫-CarePlan TWSS Base"
Description: "因 TW Core IG 0.3.2 尚無針對社福個案服務計畫的 Profile，故繼承原生 CarePlan，並於設定社福欄位後補回適用的 TW Core 0.3.2 共通交換規則。"
* ^version = "0.0.1"
* status 1..1 MS
* intent 1..1 MS
* subject only Reference(PatientTWSSBase)
* subject 1..1 MS
* extension contains http://hl7.org/fhir/StructureDefinition/workflow-episodeOfCare named workflowEpisodeOfCare 0..1 MS
* extension[workflowEpisodeOfCare].value[x] only Reference(EpisodeOfCareTWSSBase)
* extension[workflowEpisodeOfCare] ^short = "所屬個案服務案件"
* activity ^slicing.discriminator.type = #value
* activity ^slicing.discriminator.path = "detail.code.coding.system"
* activity ^slicing.rules = #open
* activity contains financialSubsidy 0..* MS and welfareService 0..* MS and employmentService 0..* MS and medicalRehabilitationService 0..* MS and medicalAssistance 0..* MS
* activity[financialSubsidy].detail.status 1..1 MS
* activity[financialSubsidy].detail.code only CodeableConceptTW
* activity[financialSubsidy].detail.code MS
* activity[financialSubsidy].detail.code.coding.system = "https://sfaa.gov.tw/base/CodeSystem/twss-provided-financial-subsidy"
* activity[financialSubsidy].detail.code from TWSSProvidedFinancialSubsidyVS (required)
* activity[financialSubsidy].detail.code ^short = "預計提供經濟補助"
* activity[welfareService].detail.status 1..1 MS
* activity[welfareService].detail.code only CodeableConceptTW
* activity[welfareService].detail.code MS
* activity[welfareService].detail.code.coding.system = "https://sfaa.gov.tw/base/CodeSystem/twss-provided-welfare-service"
* activity[welfareService].detail.code from TWSSProvidedWelfareServiceVS (required)
* activity[welfareService].detail.code ^short = "預計提供福利服務"
* activity[employmentService].detail.status 1..1 MS
* activity[employmentService].detail.code only CodeableConceptTW
* activity[employmentService].detail.code MS
* activity[employmentService].detail.code.coding.system = "https://sfaa.gov.tw/base/CodeSystem/twss-provided-employment-service"
* activity[employmentService].detail.code from TWSSProvidedEmploymentServiceVS (required)
* activity[employmentService].detail.code ^short = "預計提供就業服務"
* activity[medicalRehabilitationService].detail.status 1..1 MS
* activity[medicalRehabilitationService].detail.code only CodeableConceptTW
* activity[medicalRehabilitationService].detail.code MS
* activity[medicalRehabilitationService].detail.code.coding.system = "https://sfaa.gov.tw/base/CodeSystem/twss-medical-rehabilitation-service"
* activity[medicalRehabilitationService].detail.code from TWSSMedicalRehabilitationServiceVS (required)
* activity[medicalRehabilitationService].detail.code ^short = "預計提供醫療復健服務"
* activity[medicalAssistance].detail.status 1..1 MS
* activity[medicalAssistance].detail.code only CodeableConceptTW
* activity[medicalAssistance].detail.code MS
* activity[medicalAssistance].detail.code.coding.system = "https://sfaa.gov.tw/base/CodeSystem/twss-medical-assistance"
* activity[medicalAssistance].detail.code from TWSSMedicalAssistanceVS (required)
* activity[medicalAssistance].detail.code ^short = "預計提供醫療協助"
* activity.outcomeReference only Reference(AssessmentServiceEncounterTWSSBase or ClaimTWSSBase or ClaimResponseTWSSBase)
* activity.outcomeReference MS
