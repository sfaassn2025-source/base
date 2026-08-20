Profile: ProvenanceTWSSBase
Parent: Provenance
Id: Provenance-twss-base
Title: "資料建立與修改歷程-Provenance TWSS Base"
Description: "因 TW Core IG 0.3.2 尚無針對社福資料建立與修改歷程的 Profile，故繼承原生 Provenance，並於設定社福欄位後補回適用的 TW Core 0.3.2 共通交換規則。"
* ^version = "0.0.1"

* target only Reference(PatientTWSSBase or RelatedPersonTWSSBase or PractitionerTWSSBase or PractitionerRoleTWSSBase or OrganizationTWSSBase or MedicalInstitutionOrganizationTWSSBase or LocationTWSSBase or ConditionTWSSBase or CoverageTWSSBase or ClaimTWSSBase or ClaimResponseTWSSBase or ServiceRequestTWSSBase or ServiceRequestTransitionTWSSBase or DocumentReferenceTWSSBase or AssessmentServiceEncounterTWSSBase or ActualServiceEncounterTWSSBase or InterviewEncounterTWSSBase or MeetingEncounterTWSSBase or PlacementEncounterTWSSBase or EpisodeOfCareTWSSBase or CarePlanTWSSBase or QuestionnaireTWSSBase or QuestionnaireResponseTWSSBase or DisabilityCertificateObservationTWSSBase or EducationObservationTWSSBase or PractitionerEducationObservationTWSSBase or RelatedPersonEducationObservationTWSSBase or MedicalRehabilitationServiceObservationTWSSBase or MedicalAssistanceObservationTWSSBase or AssessmentResultObservationTWSSBase or CMSLevelObservationTWSSBase or VisualAcuityObservationTWSSBase or OrganizationAuditObservationTWSSBase or OrganizationAccreditationObservationTWSSBase or PenaltyLegalBasisObservationTWSSBase or RulingDateObservationTWSSBase or PractitionerTrainingObservationTWSSBase or CaseIntakeAssessmentTaskTWSSBase or AssessmentReviewTaskTWSSBase or ReferralAcceptanceTaskTWSSBase or ReferralHandlingTaskTWSSBase)
* target 1..* MS
* target ^short = "被建立或修改的資料"
* recorded 1..1 MS
* recorded ^short = "建立或修改事件的登錄時間"
* activity 1..1 MS
* activity ^short = "建立或修改活動"
* agent 1..* MS
* agent.who only Reference(OrganizationTWSSBase)
* agent.who 1..1 MS
* agent.who ^short = "建立或修改單位"
