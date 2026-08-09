// Common
Instance: Patient-id
InstanceOf: SearchParameter
Usage: #definition
* url = "https://sfaa.gov.tw/base/SearchParameter/Patient-id"
* name = "PatientId"
* status = #active
* description = "個案資料的邏輯性 ID。"
* code = #_id
* base = #Patient
* expression = "Patient.id"
* type = #token

Instance: Patient-identifier
InstanceOf: SearchParameter
Usage: #definition
* url = "https://sfaa.gov.tw/base/SearchParameter/Patient-identifier"
* name = "PatientIdentifier"
* status = #active
* description = "個案資料的身分識別碼或服務對象編號。"
* code = #identifier
* base = #Patient
* expression = "Patient.identifier"
* type = #token

Instance: Patient-name
InstanceOf: SearchParameter
Usage: #definition
* url = "https://sfaa.gov.tw/base/SearchParameter/Patient-name"
* name = "PatientName"
* status = #active
* description = "個案姓名。"
* code = #name
* base = #Patient
* expression = "Patient.name"
* type = #string

Instance: RelatedPerson-id
InstanceOf: SearchParameter
Usage: #definition
* url = "https://sfaa.gov.tw/base/SearchParameter/RelatedPerson-id"
* name = "RelatedPersonId"
* status = #active
* description = "關係人資料的邏輯性 ID。"
* code = #_id
* base = #RelatedPerson
* expression = "RelatedPerson.id"
* type = #token

Instance: RelatedPerson-patient
InstanceOf: SearchParameter
Usage: #definition
* url = "https://sfaa.gov.tw/base/SearchParameter/RelatedPerson-patient"
* name = "RelatedPersonPatient"
* status = #active
* description = "關係人所對應的個案。"
* code = #patient
* base = #RelatedPerson
* expression = "RelatedPerson.patient"
* type = #reference
* target = #Patient
* chain[0] = "identifier"
* chain[1] = "name"

Instance: RelatedPerson-identifier
InstanceOf: SearchParameter
Usage: #definition
* url = "https://sfaa.gov.tw/base/SearchParameter/RelatedPerson-identifier"
* name = "RelatedPersonIdentifier"
* status = #active
* description = "關係人的身分識別碼。"
* code = #identifier
* base = #RelatedPerson
* expression = "RelatedPerson.identifier"
* type = #token

Instance: RelatedPerson-name
InstanceOf: SearchParameter
Usage: #definition
* url = "https://sfaa.gov.tw/base/SearchParameter/RelatedPerson-name"
* name = "RelatedPersonName"
* status = #active
* description = "關係人姓名。"
* code = #name
* base = #RelatedPerson
* expression = "RelatedPerson.name"
* type = #string

// Organization and workforce
Instance: Organization-id
InstanceOf: SearchParameter
Usage: #definition
* url = "https://sfaa.gov.tw/base/SearchParameter/Organization-id"
* name = "OrganizationId"
* status = #active
* description = "機構資料的邏輯性 ID。"
* code = #_id
* base = #Organization
* expression = "Organization.id"
* type = #token

Instance: Organization-identifier
InstanceOf: SearchParameter
Usage: #definition
* url = "https://sfaa.gov.tw/base/SearchParameter/Organization-identifier"
* name = "OrganizationIdentifier"
* status = #active
* description = "機構統一編號或其他機構識別碼。"
* code = #identifier
* base = #Organization
* expression = "Organization.identifier"
* type = #token

Instance: Organization-name
InstanceOf: SearchParameter
Usage: #definition
* url = "https://sfaa.gov.tw/base/SearchParameter/Organization-name"
* name = "OrganizationName"
* status = #active
* description = "機構名稱。"
* code = #name
* base = #Organization
* expression = "Organization.name"
* type = #string

Instance: Organization-type
InstanceOf: SearchParameter
Usage: #definition
* url = "https://sfaa.gov.tw/base/SearchParameter/Organization-type"
* name = "OrganizationType"
* status = #active
* description = "機構類型。"
* code = #type
* base = #Organization
* expression = "Organization.type"
* type = #token

Instance: Practitioner-id
InstanceOf: SearchParameter
Usage: #definition
* url = "https://sfaa.gov.tw/base/SearchParameter/Practitioner-id"
* name = "PractitionerId"
* status = #active
* description = "人員資料的邏輯性 ID。"
* code = #_id
* base = #Practitioner
* expression = "Practitioner.id"
* type = #token

Instance: Practitioner-identifier
InstanceOf: SearchParameter
Usage: #definition
* url = "https://sfaa.gov.tw/base/SearchParameter/Practitioner-identifier"
* name = "PractitionerIdentifier"
* status = #active
* description = "人員身分識別碼。"
* code = #identifier
* base = #Practitioner
* expression = "Practitioner.identifier"
* type = #token

Instance: Practitioner-name
InstanceOf: SearchParameter
Usage: #definition
* url = "https://sfaa.gov.tw/base/SearchParameter/Practitioner-name"
* name = "PractitionerName"
* status = #active
* description = "人員姓名。"
* code = #name
* base = #Practitioner
* expression = "Practitioner.name"
* type = #string

Instance: PractitionerRole-id
InstanceOf: SearchParameter
Usage: #definition
* url = "https://sfaa.gov.tw/base/SearchParameter/PractitionerRole-id"
* name = "PractitionerRoleId"
* status = #active
* description = "人員角色資料的邏輯性 ID。"
* code = #_id
* base = #PractitionerRole
* expression = "PractitionerRole.id"
* type = #token

Instance: PractitionerRole-practitioner
InstanceOf: SearchParameter
Usage: #definition
* url = "https://sfaa.gov.tw/base/SearchParameter/PractitionerRole-practitioner"
* name = "PractitionerRolePractitioner"
* status = #active
* description = "人員角色所對應的人員。"
* code = #practitioner
* base = #PractitionerRole
* expression = "PractitionerRole.practitioner"
* type = #reference
* target = #Practitioner
* chain[0] = "identifier"
* chain[1] = "name"

Instance: PractitionerRole-organization
InstanceOf: SearchParameter
Usage: #definition
* url = "https://sfaa.gov.tw/base/SearchParameter/PractitionerRole-organization"
* name = "PractitionerRoleOrganization"
* status = #active
* description = "人員角色所屬機構。"
* code = #organization
* base = #PractitionerRole
* expression = "PractitionerRole.organization"
* type = #reference
* target = #Organization
* chain[0] = "identifier"
* chain[1] = "name"

Instance: PractitionerRole-role
InstanceOf: SearchParameter
Usage: #definition
* url = "https://sfaa.gov.tw/base/SearchParameter/PractitionerRole-role"
* name = "PractitionerRoleRole"
* status = #active
* description = "人員角色代碼。"
* code = #role
* base = #PractitionerRole
* expression = "PractitionerRole.code"
* type = #token

// Case workflow
Instance: ServiceRequest-id
InstanceOf: SearchParameter
Usage: #definition
* url = "https://sfaa.gov.tw/base/SearchParameter/ServiceRequest-id"
* name = "ServiceRequestId"
* status = #active
* description = "申請或服務請求的邏輯性 ID。"
* code = #_id
* base = #ServiceRequest
* expression = "ServiceRequest.id"
* type = #token

Instance: ServiceRequest-identifier
InstanceOf: SearchParameter
Usage: #definition
* url = "https://sfaa.gov.tw/base/SearchParameter/ServiceRequest-identifier"
* name = "ServiceRequestIdentifier"
* status = #active
* description = "申請案件編號或服務請求識別碼。"
* code = #identifier
* base = #ServiceRequest
* expression = "ServiceRequest.identifier"
* type = #token

Instance: ServiceRequest-patient
InstanceOf: SearchParameter
Usage: #definition
* url = "https://sfaa.gov.tw/base/SearchParameter/ServiceRequest-patient"
* name = "ServiceRequestPatient"
* status = #active
* description = "申請或服務請求所對應的個案。"
* code = #patient
* base = #ServiceRequest
* expression = "ServiceRequest.subject.where(resolve() is Patient)"
* type = #reference
* target = #Patient
* chain[0] = "identifier"
* chain[1] = "name"

Instance: ServiceRequest-status
InstanceOf: SearchParameter
Usage: #definition
* url = "https://sfaa.gov.tw/base/SearchParameter/ServiceRequest-status"
* name = "ServiceRequestStatus"
* status = #active
* description = "申請或服務請求狀態。"
* code = #status
* base = #ServiceRequest
* expression = "ServiceRequest.status"
* type = #token

Instance: ServiceRequest-category
InstanceOf: SearchParameter
Usage: #definition
* url = "https://sfaa.gov.tw/base/SearchParameter/ServiceRequest-category"
* name = "ServiceRequestCategory"
* status = #active
* description = "服務請求類型。"
* code = #category
* base = #ServiceRequest
* expression = "ServiceRequest.category"
* type = #token

Instance: ServiceRequest-code
InstanceOf: SearchParameter
Usage: #definition
* url = "https://sfaa.gov.tw/base/SearchParameter/ServiceRequest-code"
* name = "ServiceRequestCode"
* status = #active
* description = "申請、服務或補助項目的主要代碼。"
* code = #code
* base = #ServiceRequest
* expression = "ServiceRequest.code"
* type = #token

Instance: ServiceRequest-authored
InstanceOf: SearchParameter
Usage: #definition
* url = "https://sfaa.gov.tw/base/SearchParameter/ServiceRequest-authored"
* name = "ServiceRequestAuthored"
* status = #active
* description = "申請日期、通報時間或轉介申請日期。"
* code = #authored
* base = #ServiceRequest
* expression = "ServiceRequest.authoredOn"
* type = #date

Instance: EpisodeOfCare-id
InstanceOf: SearchParameter
Usage: #definition
* url = "https://sfaa.gov.tw/base/SearchParameter/EpisodeOfCare-id"
* name = "EpisodeOfCareId"
* status = #active
* description = "個案服務案件的邏輯性 ID。"
* code = #_id
* base = #EpisodeOfCare
* expression = "EpisodeOfCare.id"
* type = #token

Instance: EpisodeOfCare-identifier
InstanceOf: SearchParameter
Usage: #definition
* url = "https://sfaa.gov.tw/base/SearchParameter/EpisodeOfCare-identifier"
* name = "EpisodeOfCareIdentifier"
* status = #active
* description = "個案服務案件編號。"
* code = #identifier
* base = #EpisodeOfCare
* expression = "EpisodeOfCare.identifier"
* type = #token

Instance: EpisodeOfCare-patient
InstanceOf: SearchParameter
Usage: #definition
* url = "https://sfaa.gov.tw/base/SearchParameter/EpisodeOfCare-patient"
* name = "EpisodeOfCarePatient"
* status = #active
* description = "個案服務案件所對應的個案。"
* code = #patient
* base = #EpisodeOfCare
* expression = "EpisodeOfCare.patient"
* type = #reference
* target = #Patient
* chain[0] = "identifier"
* chain[1] = "name"

Instance: EpisodeOfCare-status
InstanceOf: SearchParameter
Usage: #definition
* url = "https://sfaa.gov.tw/base/SearchParameter/EpisodeOfCare-status"
* name = "EpisodeOfCareStatus"
* status = #active
* description = "個案服務案件狀態。"
* code = #status
* base = #EpisodeOfCare
* expression = "EpisodeOfCare.status"
* type = #token

Instance: EpisodeOfCare-type
InstanceOf: SearchParameter
Usage: #definition
* url = "https://sfaa.gov.tw/base/SearchParameter/EpisodeOfCare-type"
* name = "EpisodeOfCareType"
* status = #active
* description = "個案服務或補助案件類型。"
* code = #type
* base = #EpisodeOfCare
* expression = "EpisodeOfCare.type"
* type = #token

Instance: EpisodeOfCare-date
InstanceOf: SearchParameter
Usage: #definition
* url = "https://sfaa.gov.tw/base/SearchParameter/EpisodeOfCare-date"
* name = "EpisodeOfCareDate"
* status = #active
* description = "個案服務案件期間。"
* code = #date
* base = #EpisodeOfCare
* expression = "EpisodeOfCare.period"
* type = #date

// Clinical and assessment
Instance: Condition-id
InstanceOf: SearchParameter
Usage: #definition
* url = "https://sfaa.gov.tw/base/SearchParameter/Condition-id"
* name = "ConditionId"
* status = #active
* description = "身心健康狀況或障礙資料的邏輯性 ID。"
* code = #_id
* base = #Condition
* expression = "Condition.id"
* type = #token

Instance: Condition-patient
InstanceOf: SearchParameter
Usage: #definition
* url = "https://sfaa.gov.tw/base/SearchParameter/Condition-patient"
* name = "ConditionPatient"
* status = #active
* description = "身心健康狀況或障礙資料所對應的個案。"
* code = #patient
* base = #Condition
* expression = "Condition.subject.where(resolve() is Patient)"
* type = #reference
* target = #Patient
* chain[0] = "identifier"
* chain[1] = "name"

Instance: Condition-code
InstanceOf: SearchParameter
Usage: #definition
* url = "https://sfaa.gov.tw/base/SearchParameter/Condition-code"
* name = "ConditionCode"
* status = #active
* description = "身心健康狀況、障礙類別或 ICD 診斷代碼。"
* code = #code
* base = #Condition
* expression = "Condition.code"
* type = #token

Instance: Condition-severity
InstanceOf: SearchParameter
Usage: #definition
* url = "https://sfaa.gov.tw/base/SearchParameter/Condition-severity"
* name = "ConditionSeverity"
* status = #active
* description = "障礙等級或嚴重程度。"
* code = #severity
* base = #Condition
* expression = "Condition.severity"
* type = #token

Instance: Condition-recorded-date
InstanceOf: SearchParameter
Usage: #definition
* url = "https://sfaa.gov.tw/base/SearchParameter/Condition-recorded-date"
* name = "ConditionRecordedDate"
* status = #active
* description = "鑑定日期或紀錄日期。"
* code = #recorded-date
* base = #Condition
* expression = "Condition.recordedDate"
* type = #date

Instance: Observation-id
InstanceOf: SearchParameter
Usage: #definition
* url = "https://sfaa.gov.tw/base/SearchParameter/Observation-id"
* name = "ObservationId"
* status = #active
* description = "Observation 的邏輯性 ID。"
* code = #_id
* base = #Observation
* expression = "Observation.id"
* type = #token

Instance: Observation-patient
InstanceOf: SearchParameter
Usage: #definition
* url = "https://sfaa.gov.tw/base/SearchParameter/Observation-patient"
* name = "ObservationPatient"
* status = #active
* description = "Observation 所對應的個案。"
* code = #patient
* base = #Observation
* expression = "Observation.subject.where(resolve() is Patient)"
* type = #reference
* target = #Patient
* chain[0] = "identifier"
* chain[1] = "name"

Instance: Observation-code
InstanceOf: SearchParameter
Usage: #definition
* url = "https://sfaa.gov.tw/base/SearchParameter/Observation-code"
* name = "ObservationCode"
* status = #active
* description = "Observation 的代碼。"
* code = #code
* base = #Observation
* expression = "Observation.code"
* type = #token

Instance: Observation-date
InstanceOf: SearchParameter
Usage: #definition
* url = "https://sfaa.gov.tw/base/SearchParameter/Observation-date"
* name = "ObservationDate"
* status = #active
* description = "Observation 的有效日期或時間。"
* code = #date
* base = #Observation
* expression = "Observation.effective"
* type = #date

// Subsidy and payment
Instance: Coverage-id
InstanceOf: SearchParameter
Usage: #definition
* url = "https://sfaa.gov.tw/base/SearchParameter/Coverage-id"
* name = "CoverageId"
* status = #active
* description = "補助資格資料的邏輯性 ID。"
* code = #_id
* base = #Coverage
* expression = "Coverage.id"
* type = #token

Instance: Coverage-identifier
InstanceOf: SearchParameter
Usage: #definition
* url = "https://sfaa.gov.tw/base/SearchParameter/Coverage-identifier"
* name = "CoverageIdentifier"
* status = #active
* description = "補助資格識別碼。"
* code = #identifier
* base = #Coverage
* expression = "Coverage.identifier"
* type = #token

Instance: Coverage-patient
InstanceOf: SearchParameter
Usage: #definition
* url = "https://sfaa.gov.tw/base/SearchParameter/Coverage-patient"
* name = "CoveragePatient"
* status = #active
* description = "補助資格所對應的個案。"
* code = #patient
* base = #Coverage
* expression = "Coverage.beneficiary.where(resolve() is Patient)"
* type = #reference
* target = #Patient
* chain[0] = "identifier"
* chain[1] = "name"

Instance: Coverage-type
InstanceOf: SearchParameter
Usage: #definition
* url = "https://sfaa.gov.tw/base/SearchParameter/Coverage-type"
* name = "CoverageType"
* status = #active
* description = "福利身分別或補助資格類型。"
* code = #type
* base = #Coverage
* expression = "Coverage.type"
* type = #token

Instance: Claim-id
InstanceOf: SearchParameter
Usage: #definition
* url = "https://sfaa.gov.tw/base/SearchParameter/Claim-id"
* name = "ClaimId"
* status = #active
* description = "補助申請或核付明細的邏輯性 ID。"
* code = #_id
* base = #Claim
* expression = "Claim.id"
* type = #token

Instance: Claim-identifier
InstanceOf: SearchParameter
Usage: #definition
* url = "https://sfaa.gov.tw/base/SearchParameter/Claim-identifier"
* name = "ClaimIdentifier"
* status = #active
* description = "補助申請或服務案件編號。"
* code = #identifier
* base = #Claim
* expression = "Claim.identifier"
* type = #token

Instance: Claim-patient
InstanceOf: SearchParameter
Usage: #definition
* url = "https://sfaa.gov.tw/base/SearchParameter/Claim-patient"
* name = "ClaimPatient"
* status = #active
* description = "補助申請或核付明細所對應的個案。"
* code = #patient
* base = #Claim
* expression = "Claim.patient"
* type = #reference
* target = #Patient
* chain[0] = "identifier"
* chain[1] = "name"

Instance: Claim-created
InstanceOf: SearchParameter
Usage: #definition
* url = "https://sfaa.gov.tw/base/SearchParameter/Claim-created"
* name = "ClaimCreated"
* status = #active
* description = "補助申請或核付明細建立日期。"
* code = #created
* base = #Claim
* expression = "Claim.created"
* type = #date

Instance: ClaimResponse-id
InstanceOf: SearchParameter
Usage: #definition
* url = "https://sfaa.gov.tw/base/SearchParameter/ClaimResponse-id"
* name = "ClaimResponseId"
* status = #active
* description = "補助審核或核付結果的邏輯性 ID。"
* code = #_id
* base = #ClaimResponse
* expression = "ClaimResponse.id"
* type = #token

Instance: ClaimResponse-identifier
InstanceOf: SearchParameter
Usage: #definition
* url = "https://sfaa.gov.tw/base/SearchParameter/ClaimResponse-identifier"
* name = "ClaimResponseIdentifier"
* status = #active
* description = "補助審核或核付結果識別碼。"
* code = #identifier
* base = #ClaimResponse
* expression = "ClaimResponse.identifier"
* type = #token

Instance: ClaimResponse-patient
InstanceOf: SearchParameter
Usage: #definition
* url = "https://sfaa.gov.tw/base/SearchParameter/ClaimResponse-patient"
* name = "ClaimResponsePatient"
* status = #active
* description = "補助審核或核付結果所對應的個案。"
* code = #patient
* base = #ClaimResponse
* expression = "ClaimResponse.patient"
* type = #reference
* target = #Patient
* chain[0] = "identifier"
* chain[1] = "name"

Instance: ClaimResponse-request
InstanceOf: SearchParameter
Usage: #definition
* url = "https://sfaa.gov.tw/base/SearchParameter/ClaimResponse-request"
* name = "ClaimResponseRequest"
* status = #active
* description = "補助審核或核付結果所回應的 Claim。"
* code = #request
* base = #ClaimResponse
* expression = "ClaimResponse.request"
* type = #reference
* target = #Claim
* chain[0] = "identifier"
* chain[1] = "patient"

Instance: ClaimResponse-created
InstanceOf: SearchParameter
Usage: #definition
* url = "https://sfaa.gov.tw/base/SearchParameter/ClaimResponse-created"
* name = "ClaimResponseCreated"
* status = #active
* description = "補助審核或核付結果建立日期。"
* code = #created
* base = #ClaimResponse
* expression = "ClaimResponse.created"
* type = #date

// Assessment review task
Instance: Task-id
InstanceOf: SearchParameter
Usage: #definition
* url = "https://sfaa.gov.tw/base/SearchParameter/Task-id"
* name = "TaskId"
* status = #active
* description = "Task 資源的邏輯 ID。"
* code = #_id
* base = #Task
* expression = "Task.id"
* type = #token

Instance: Task-patient
InstanceOf: SearchParameter
Usage: #definition
* url = "https://sfaa.gov.tw/base/SearchParameter/Task-patient"
* name = "TaskPatient"
* status = #active
* description = "Task 所對應的個案。"
* code = #patient
* base = #Task
* expression = "Task.for"
* type = #reference
* target = #Patient
* chain[0] = "identifier"
* chain[1] = "name"

Instance: Task-status
InstanceOf: SearchParameter
Usage: #definition
* url = "https://sfaa.gov.tw/base/SearchParameter/Task-status"
* name = "TaskStatus"
* status = #active
* description = "Task 的 FHIR 工作流程狀態。"
* code = #status
* base = #Task
* expression = "Task.status"
* type = #token

Instance: Task-business-status
InstanceOf: SearchParameter
Usage: #definition
* url = "https://sfaa.gov.tw/base/SearchParameter/Task-business-status"
* name = "TaskBusinessStatus"
* status = #active
* description = "Task 的業務狀態。"
* code = #business-status
* base = #Task
* expression = "Task.businessStatus"
* type = #token

// Care and assessment resources
Instance: CarePlan-id
InstanceOf: SearchParameter
Usage: #definition
* url = "https://sfaa.gov.tw/base/SearchParameter/CarePlan-id"
* name = "CarePlanId"
* status = #active
* description = "照護計畫的邏輯性 ID。"
* code = #_id
* base = #CarePlan
* expression = "CarePlan.id"
* type = #token

Instance: CarePlan-patient
InstanceOf: SearchParameter
Usage: #definition
* url = "https://sfaa.gov.tw/base/SearchParameter/CarePlan-patient"
* name = "CarePlanPatient"
* status = #active
* description = "照護計畫所對應的個案。"
* code = #patient
* base = #CarePlan
* expression = "CarePlan.subject.where(resolve() is Patient)"
* type = #reference
* target = #Patient
* chain[0] = "identifier"
* chain[1] = "name"

Instance: CarePlan-status
InstanceOf: SearchParameter
Usage: #definition
* url = "https://sfaa.gov.tw/base/SearchParameter/CarePlan-status"
* name = "CarePlanStatus"
* status = #active
* description = "照護計畫狀態。"
* code = #status
* base = #CarePlan
* expression = "CarePlan.status"
* type = #token

Instance: QuestionnaireResponse-id
InstanceOf: SearchParameter
Usage: #definition
* url = "https://sfaa.gov.tw/base/SearchParameter/QuestionnaireResponse-id"
* name = "QuestionnaireResponseId"
* status = #active
* description = "問卷回覆的邏輯性 ID。"
* code = #_id
* base = #QuestionnaireResponse
* expression = "QuestionnaireResponse.id"
* type = #token

Instance: QuestionnaireResponse-patient
InstanceOf: SearchParameter
Usage: #definition
* url = "https://sfaa.gov.tw/base/SearchParameter/QuestionnaireResponse-patient"
* name = "QuestionnaireResponsePatient"
* status = #active
* description = "問卷回覆所對應的個案。"
* code = #patient
* base = #QuestionnaireResponse
* expression = "QuestionnaireResponse.subject.where(resolve() is Patient)"
* type = #reference
* target = #Patient
* chain[0] = "identifier"
* chain[1] = "name"

Instance: QuestionnaireResponse-status
InstanceOf: SearchParameter
Usage: #definition
* url = "https://sfaa.gov.tw/base/SearchParameter/QuestionnaireResponse-status"
* name = "QuestionnaireResponseStatus"
* status = #active
* description = "問卷回覆狀態。"
* code = #status
* base = #QuestionnaireResponse
* expression = "QuestionnaireResponse.status"
* type = #token

Instance: QuestionnaireResponse-questionnaire
InstanceOf: SearchParameter
Usage: #definition
* url = "https://sfaa.gov.tw/base/SearchParameter/QuestionnaireResponse-questionnaire"
* name = "QuestionnaireResponseQuestionnaire"
* status = #active
* description = "問卷回覆所使用的問卷。"
* code = #questionnaire
* base = #QuestionnaireResponse
* expression = "QuestionnaireResponse.questionnaire"
* type = #reference
* target = #Questionnaire

Instance: QuestionnaireResponse-authored
InstanceOf: SearchParameter
Usage: #definition
* url = "https://sfaa.gov.tw/base/SearchParameter/QuestionnaireResponse-authored"
* name = "QuestionnaireResponseAuthored"
* status = #active
* description = "問卷回覆填寫時間。"
* code = #authored
* base = #QuestionnaireResponse
* expression = "QuestionnaireResponse.authored"
* type = #date

Instance: Encounter-id
InstanceOf: SearchParameter
Usage: #definition
* url = "https://sfaa.gov.tw/base/SearchParameter/Encounter-id"
* name = "EncounterId"
* status = #active
* description = "個案評估或服務接觸的邏輯性 ID。"
* code = #_id
* base = #Encounter
* expression = "Encounter.id"
* type = #token

Instance: Encounter-patient
InstanceOf: SearchParameter
Usage: #definition
* url = "https://sfaa.gov.tw/base/SearchParameter/Encounter-patient"
* name = "EncounterPatient"
* status = #active
* description = "個案評估或服務接觸所對應的個案。"
* code = #patient
* base = #Encounter
* expression = "Encounter.subject.where(resolve() is Patient)"
* type = #reference
* target = #Patient
* chain[0] = "identifier"
* chain[1] = "name"

Instance: Encounter-status
InstanceOf: SearchParameter
Usage: #definition
* url = "https://sfaa.gov.tw/base/SearchParameter/Encounter-status"
* name = "EncounterStatus"
* status = #active
* description = "個案評估或服務接觸狀態。"
* code = #status
* base = #Encounter
* expression = "Encounter.status"
* type = #token

Instance: Encounter-date
InstanceOf: SearchParameter
Usage: #definition
* url = "https://sfaa.gov.tw/base/SearchParameter/Encounter-date"
* name = "EncounterDate"
* status = #active
* description = "個案評估或服務接觸期間。"
* code = #date
* base = #Encounter
* expression = "Encounter.period"
* type = #date

Instance: DocumentReference-id
InstanceOf: SearchParameter
Usage: #definition
* url = "https://sfaa.gov.tw/base/SearchParameter/DocumentReference-id"
* name = "DocumentReferenceId"
* status = #active
* description = "共用公文的邏輯性 ID。"
* code = #_id
* base = #DocumentReference
* expression = "DocumentReference.id"
* type = #token

Instance: DocumentReference-patient
InstanceOf: SearchParameter
Usage: #definition
* url = "https://sfaa.gov.tw/base/SearchParameter/DocumentReference-patient"
* name = "DocumentReferencePatient"
* status = #active
* description = "共用公文所對應的個案。"
* code = #patient
* base = #DocumentReference
* expression = "DocumentReference.subject.where(resolve() is Patient)"
* type = #reference
* target = #Patient
* chain[0] = "identifier"
* chain[1] = "name"

Instance: DocumentReference-type
InstanceOf: SearchParameter
Usage: #definition
* url = "https://sfaa.gov.tw/base/SearchParameter/DocumentReference-type"
* name = "DocumentReferenceType"
* status = #active
* description = "共用公文類型。"
* code = #type
* base = #DocumentReference
* expression = "DocumentReference.type"
* type = #token

Instance: DocumentReference-date
InstanceOf: SearchParameter
Usage: #definition
* url = "https://sfaa.gov.tw/base/SearchParameter/DocumentReference-date"
* name = "DocumentReferenceDate"
* status = #active
* description = "共用公文建立或內容日期。"
* code = #date
* base = #DocumentReference
* expression = "DocumentReference.date"
* type = #date

Instance: Location-id
InstanceOf: SearchParameter
Usage: #definition
* url = "https://sfaa.gov.tw/base/SearchParameter/Location-id"
* name = "LocationId"
* status = #active
* description = "服務地點及托育地址的邏輯性 ID。"
* code = #_id
* base = #Location
* expression = "Location.id"
* type = #token

Instance: Location-name
InstanceOf: SearchParameter
Usage: #definition
* url = "https://sfaa.gov.tw/base/SearchParameter/Location-name"
* name = "LocationName"
* status = #active
* description = "服務地點或托育地址名稱。"
* code = #name
* base = #Location
* expression = "Location.name"
* type = #string
