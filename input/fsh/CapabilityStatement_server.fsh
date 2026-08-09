Instance: CapabilityStatementTWSSBaseServer
InstanceOf: CapabilityStatement
Usage: #definition
* url = "https://sfaa.gov.tw/base/CapabilityStatement/CapabilityStatementTWSSBaseServer"
* version = "0.0.1"
* name = "CapabilityStatementTWSSBaseServer"
* title = "TWSS Base IG 伺服端能力聲明"
* status = #draft
* experimental = false
* publisher = "衛生福利部社會及家庭署"
* date = "2026-07-14"
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #application/fhir+json
* format[+] = #application/fhir+xml
* patchFormat = #application/json-patch+json
* implementationGuide = "https://sfaa.gov.tw/base/ImplementationGuide/tw.gov.mohw.twss.base"
* description = "TWSS Base IG 伺服端能力聲明。"
* rest.mode = #server
* rest.documentation = "TWSS Base IG 伺服端應以 FHIR RESTful API 提供本能力聲明所列資源，支援 JSON 格式與標準 HTTP 狀態碼，並確認新增實例的 meta.profile 符合 TWSS Base Profiles。"
* rest.security.service[0] = http://terminology.hl7.org/CodeSystem/restful-security-service#SMART-on-FHIR
* rest.security.description = "安全性要求請參閱本 IG 的安全性頁面。"

* rest.interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.interaction[=].extension.valueCode = #SHOULD
* rest.interaction[=].code = #transaction
* rest.interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.interaction[=].extension.valueCode = #SHOULD
* rest.interaction[=].code = #batch

* rest.resource[+].type = #Claim
* rest.resource[=].profile = "https://sfaa.gov.tw/base/StructureDefinition/Claim-twss-base"
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #create
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #update
* rest.resource[=].referencePolicy = #resolves
* rest.resource[=].searchParam[0].name = "_id"
* rest.resource[=].searchParam[=].definition = "https://sfaa.gov.tw/base/SearchParameter/Claim-id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[+].name = "identifier"
* rest.resource[=].searchParam[=].definition = "https://sfaa.gov.tw/base/SearchParameter/Claim-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[+].name = "patient"
* rest.resource[=].searchParam[=].definition = "https://sfaa.gov.tw/base/SearchParameter/Claim-patient"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[+].name = "created"
* rest.resource[=].searchParam[=].definition = "https://sfaa.gov.tw/base/SearchParameter/Claim-created"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD

* rest.resource[+].type = #ClaimResponse
* rest.resource[=].profile = "https://sfaa.gov.tw/base/StructureDefinition/ClaimResponse-twss-base"
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #create
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #update
* rest.resource[=].referencePolicy = #resolves
* rest.resource[=].searchParam[0].name = "_id"
* rest.resource[=].searchParam[=].definition = "https://sfaa.gov.tw/base/SearchParameter/ClaimResponse-id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[+].name = "identifier"
* rest.resource[=].searchParam[=].definition = "https://sfaa.gov.tw/base/SearchParameter/ClaimResponse-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[+].name = "patient"
* rest.resource[=].searchParam[=].definition = "https://sfaa.gov.tw/base/SearchParameter/ClaimResponse-patient"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[+].name = "request"
* rest.resource[=].searchParam[=].definition = "https://sfaa.gov.tw/base/SearchParameter/ClaimResponse-request"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[+].name = "created"
* rest.resource[=].searchParam[=].definition = "https://sfaa.gov.tw/base/SearchParameter/ClaimResponse-created"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD

* rest.resource[+].type = #Condition
* rest.resource[=].profile = "https://sfaa.gov.tw/base/StructureDefinition/Condition-twss-base"
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #create
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #update
* rest.resource[=].referencePolicy = #resolves
* rest.resource[=].searchParam[0].name = "_id"
* rest.resource[=].searchParam[=].definition = "https://sfaa.gov.tw/base/SearchParameter/Condition-id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[+].name = "patient"
* rest.resource[=].searchParam[=].definition = "https://sfaa.gov.tw/base/SearchParameter/Condition-patient"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[+].name = "code"
* rest.resource[=].searchParam[=].definition = "https://sfaa.gov.tw/base/SearchParameter/Condition-code"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[+].name = "severity"
* rest.resource[=].searchParam[=].definition = "https://sfaa.gov.tw/base/SearchParameter/Condition-severity"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[+].name = "recorded-date"
* rest.resource[=].searchParam[=].definition = "https://sfaa.gov.tw/base/SearchParameter/Condition-recorded-date"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD

* rest.resource[+].type = #Coverage
* rest.resource[=].profile = "https://sfaa.gov.tw/base/StructureDefinition/Coverage-twss-base"
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #create
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #update
* rest.resource[=].referencePolicy = #resolves
* rest.resource[=].searchParam[0].name = "_id"
* rest.resource[=].searchParam[=].definition = "https://sfaa.gov.tw/base/SearchParameter/Coverage-id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[+].name = "identifier"
* rest.resource[=].searchParam[=].definition = "https://sfaa.gov.tw/base/SearchParameter/Coverage-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[+].name = "patient"
* rest.resource[=].searchParam[=].definition = "https://sfaa.gov.tw/base/SearchParameter/Coverage-patient"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[+].name = "type"
* rest.resource[=].searchParam[=].definition = "https://sfaa.gov.tw/base/SearchParameter/Coverage-type"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD

* rest.resource[+].type = #EpisodeOfCare
* rest.resource[=].profile = "https://sfaa.gov.tw/base/StructureDefinition/EpisodeOfCare-twss-base"
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #create
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #update
* rest.resource[=].referencePolicy = #resolves
* rest.resource[=].searchParam[0].name = "_id"
* rest.resource[=].searchParam[=].definition = "https://sfaa.gov.tw/base/SearchParameter/EpisodeOfCare-id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[+].name = "identifier"
* rest.resource[=].searchParam[=].definition = "https://sfaa.gov.tw/base/SearchParameter/EpisodeOfCare-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[+].name = "patient"
* rest.resource[=].searchParam[=].definition = "https://sfaa.gov.tw/base/SearchParameter/EpisodeOfCare-patient"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[+].name = "status"
* rest.resource[=].searchParam[=].definition = "https://sfaa.gov.tw/base/SearchParameter/EpisodeOfCare-status"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[+].name = "type"
* rest.resource[=].searchParam[=].definition = "https://sfaa.gov.tw/base/SearchParameter/EpisodeOfCare-type"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[+].name = "date"
* rest.resource[=].searchParam[=].definition = "https://sfaa.gov.tw/base/SearchParameter/EpisodeOfCare-date"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD

* rest.resource[+].type = #Observation
* rest.resource[=].supportedProfile[+] = "https://sfaa.gov.tw/base/StructureDefinition/DisabilityCertificateObservation-twss-base"
* rest.resource[=].supportedProfile[+] = "https://sfaa.gov.tw/base/StructureDefinition/PractitionerEducationObservation-twss-base"
* rest.resource[=].supportedProfile[+] = "https://sfaa.gov.tw/base/StructureDefinition/PractitionerTrainingObservation-twss-base"
* rest.resource[=].supportedProfile[+] = "https://sfaa.gov.tw/base/StructureDefinition/OrganizationAuditObservation-twss-base"
* rest.resource[=].supportedProfile[+] = "https://sfaa.gov.tw/base/StructureDefinition/PenaltyLegalBasisObservation-twss-base"
* rest.resource[=].supportedProfile[+] = "https://sfaa.gov.tw/base/StructureDefinition/RulingDateObservation-twss-base"
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #create
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #update
* rest.resource[=].referencePolicy = #resolves
* rest.resource[=].searchParam[0].name = "_id"
* rest.resource[=].searchParam[=].definition = "https://sfaa.gov.tw/base/SearchParameter/Observation-id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[+].name = "patient"
* rest.resource[=].searchParam[=].definition = "https://sfaa.gov.tw/base/SearchParameter/Observation-patient"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[+].name = "code"
* rest.resource[=].searchParam[=].definition = "https://sfaa.gov.tw/base/SearchParameter/Observation-code"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[+].name = "date"
* rest.resource[=].searchParam[=].definition = "https://sfaa.gov.tw/base/SearchParameter/Observation-date"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD

* rest.resource[+].type = #Organization
* rest.resource[=].profile = "https://sfaa.gov.tw/base/StructureDefinition/Organization-twss-base"
* rest.resource[=].supportedProfile[+] = "https://sfaa.gov.tw/base/StructureDefinition/MedicalInstitutionOrganization-twss-base"
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #create
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #update
* rest.resource[=].referencePolicy = #resolves
* rest.resource[=].searchParam[0].name = "_id"
* rest.resource[=].searchParam[=].definition = "https://sfaa.gov.tw/base/SearchParameter/Organization-id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[+].name = "identifier"
* rest.resource[=].searchParam[=].definition = "https://sfaa.gov.tw/base/SearchParameter/Organization-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[+].name = "name"
* rest.resource[=].searchParam[=].definition = "https://sfaa.gov.tw/base/SearchParameter/Organization-name"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[+].name = "type"
* rest.resource[=].searchParam[=].definition = "https://sfaa.gov.tw/base/SearchParameter/Organization-type"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD

* rest.resource[+].type = #Patient
* rest.resource[=].profile = "https://sfaa.gov.tw/base/StructureDefinition/Patient-twss-base"
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #create
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #update
* rest.resource[=].referencePolicy = #resolves
* rest.resource[=].searchParam[0].name = "_id"
* rest.resource[=].searchParam[=].definition = "https://sfaa.gov.tw/base/SearchParameter/Patient-id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[+].name = "identifier"
* rest.resource[=].searchParam[=].definition = "https://sfaa.gov.tw/base/SearchParameter/Patient-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[+].name = "name"
* rest.resource[=].searchParam[=].definition = "https://sfaa.gov.tw/base/SearchParameter/Patient-name"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD

* rest.resource[+].type = #Practitioner
* rest.resource[=].profile = "https://sfaa.gov.tw/base/StructureDefinition/Practitioner-twss-base"
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #create
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #update
* rest.resource[=].referencePolicy = #resolves
* rest.resource[=].searchParam[0].name = "_id"
* rest.resource[=].searchParam[=].definition = "https://sfaa.gov.tw/base/SearchParameter/Practitioner-id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[+].name = "identifier"
* rest.resource[=].searchParam[=].definition = "https://sfaa.gov.tw/base/SearchParameter/Practitioner-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[+].name = "name"
* rest.resource[=].searchParam[=].definition = "https://sfaa.gov.tw/base/SearchParameter/Practitioner-name"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD

* rest.resource[+].type = #PractitionerRole
* rest.resource[=].profile = "https://sfaa.gov.tw/base/StructureDefinition/PractitionerRole-twss-base"
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #create
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #update
* rest.resource[=].referencePolicy = #resolves
* rest.resource[=].searchParam[0].name = "_id"
* rest.resource[=].searchParam[=].definition = "https://sfaa.gov.tw/base/SearchParameter/PractitionerRole-id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[+].name = "practitioner"
* rest.resource[=].searchParam[=].definition = "https://sfaa.gov.tw/base/SearchParameter/PractitionerRole-practitioner"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[+].name = "organization"
* rest.resource[=].searchParam[=].definition = "https://sfaa.gov.tw/base/SearchParameter/PractitionerRole-organization"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[+].name = "role"
* rest.resource[=].searchParam[=].definition = "https://sfaa.gov.tw/base/SearchParameter/PractitionerRole-role"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD

* rest.resource[+].type = #RelatedPerson
* rest.resource[=].profile = "https://sfaa.gov.tw/base/StructureDefinition/RelatedPerson-twss-base"
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #create
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #update
* rest.resource[=].referencePolicy = #resolves
* rest.resource[=].searchParam[0].name = "_id"
* rest.resource[=].searchParam[=].definition = "https://sfaa.gov.tw/base/SearchParameter/RelatedPerson-id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[+].name = "patient"
* rest.resource[=].searchParam[=].definition = "https://sfaa.gov.tw/base/SearchParameter/RelatedPerson-patient"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[+].name = "identifier"
* rest.resource[=].searchParam[=].definition = "https://sfaa.gov.tw/base/SearchParameter/RelatedPerson-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[+].name = "name"
* rest.resource[=].searchParam[=].definition = "https://sfaa.gov.tw/base/SearchParameter/RelatedPerson-name"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD

* rest.resource[+].type = #ServiceRequest
* rest.resource[=].profile = "https://sfaa.gov.tw/base/StructureDefinition/ServiceRequest-twss-base"
* rest.resource[=].supportedProfile[0] = "https://sfaa.gov.tw/base/StructureDefinition/ServiceRequest-case-report-twss-base"
* rest.resource[=].supportedProfile[+] = "https://sfaa.gov.tw/base/StructureDefinition/ServiceRequest-referral-twss-base"
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #create
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #update
* rest.resource[=].referencePolicy = #resolves
* rest.resource[=].searchParam[0].name = "_id"
* rest.resource[=].searchParam[=].definition = "https://sfaa.gov.tw/base/SearchParameter/ServiceRequest-id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[+].name = "identifier"
* rest.resource[=].searchParam[=].definition = "https://sfaa.gov.tw/base/SearchParameter/ServiceRequest-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[+].name = "patient"
* rest.resource[=].searchParam[=].definition = "https://sfaa.gov.tw/base/SearchParameter/ServiceRequest-patient"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[+].name = "status"
* rest.resource[=].searchParam[=].definition = "https://sfaa.gov.tw/base/SearchParameter/ServiceRequest-status"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[+].name = "category"
* rest.resource[=].searchParam[=].definition = "https://sfaa.gov.tw/base/SearchParameter/ServiceRequest-category"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[+].name = "code"
* rest.resource[=].searchParam[=].definition = "https://sfaa.gov.tw/base/SearchParameter/ServiceRequest-code"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[+].name = "authored"
* rest.resource[=].searchParam[=].definition = "https://sfaa.gov.tw/base/SearchParameter/ServiceRequest-authored"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD

* rest.resource[+].type = #Task
* rest.resource[=].profile = "https://sfaa.gov.tw/base/StructureDefinition/AssessmentReviewTask-twss-base"
* rest.resource[=].supportedProfile[0] = "https://sfaa.gov.tw/base/StructureDefinition/ReferralHandlingTask-twss-base"
* rest.resource[=].supportedProfile[+] = "https://sfaa.gov.tw/base/StructureDefinition/ReferralAcceptanceTask-twss-base"
* rest.resource[=].supportedProfile[+] = "https://sfaa.gov.tw/base/StructureDefinition/CaseIntakeAssessmentTask-twss-base"
* rest.resource[=].interaction[0].code = #create
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].interaction[+].code = #vread
* rest.resource[=].interaction[+].code = #update
* rest.resource[=].referencePolicy = #resolves
* rest.resource[=].searchParam[0].name = "_id"
* rest.resource[=].searchParam[=].definition = "https://sfaa.gov.tw/base/SearchParameter/Task-id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[+].name = "patient"
* rest.resource[=].searchParam[=].definition = "https://sfaa.gov.tw/base/SearchParameter/Task-patient"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[+].name = "status"
* rest.resource[=].searchParam[=].definition = "https://sfaa.gov.tw/base/SearchParameter/Task-status"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[+].name = "business-status"
* rest.resource[=].searchParam[=].definition = "https://sfaa.gov.tw/base/SearchParameter/Task-business-status"
* rest.resource[=].searchParam[=].type = #token

* rest.resource[+].type = #Encounter
* rest.resource[=].profile = "https://sfaa.gov.tw/base/StructureDefinition/Encounter-assessment-service-twss-base"
* rest.resource[=].supportedProfile[+] = "https://sfaa.gov.tw/base/StructureDefinition/ActualServiceEncounter-twss-base"
* rest.resource[=].supportedProfile[+] = "https://sfaa.gov.tw/base/StructureDefinition/InterviewEncounter-twss-base"
* rest.resource[=].supportedProfile[+] = "https://sfaa.gov.tw/base/StructureDefinition/MeetingEncounter-twss-base"
* rest.resource[=].supportedProfile[+] = "https://sfaa.gov.tw/base/StructureDefinition/PlacementEncounter-twss-base"
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #create
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #update
* rest.resource[=].referencePolicy = #resolves
* rest.resource[=].searchParam[0].name = "_id"
* rest.resource[=].searchParam[=].definition = "https://sfaa.gov.tw/base/SearchParameter/Encounter-id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[+].name = "patient"
* rest.resource[=].searchParam[=].definition = "https://sfaa.gov.tw/base/SearchParameter/Encounter-patient"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[+].name = "status"
* rest.resource[=].searchParam[=].definition = "https://sfaa.gov.tw/base/SearchParameter/Encounter-status"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[+].name = "date"
* rest.resource[=].searchParam[=].definition = "https://sfaa.gov.tw/base/SearchParameter/Encounter-date"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD

* rest.resource[+].type = #Provenance
* rest.resource[=].profile = "https://sfaa.gov.tw/base/StructureDefinition/Provenance-twss-base"
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #create
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #read


* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #update
* rest.resource[=].referencePolicy = #resolves
* rest.resource[=].searchParam[0].name = "_id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[+].name = "target"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[+].name = "recorded"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[+].name = "agent"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD

* text.status = #extensions
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
<h2>TWSS Base IG 伺服端能力聲明</h2>
<ul>
  <li>發布日期：2026-07-14</li>
  <li>版本：0.0.1</li>
  <li>狀態：draft</li>
  <li>Publisher：衛生福利部社會及家庭署</li>
</ul>
<p>臺灣社家署基礎－伺服端（TWSS Base Server）<b>必須（SHALL）</b>：</p>
<ol>
  <li>可透過 FHIR RESTful API 查詢、新增及更新本能力聲明列出的 Resources。</li>
  <li>根據 FHIR 規範實作 RESTful API。</li>
  <li>使用適當的 HTTP 回傳狀態碼，包括請求成功、無效參數、未經授權、未充分授權的資料存取範圍，以及未知的 Resource。</li>
  <li>Server 提供的 API 操作支援 JSON 格式。</li>
  <li>可識別新增至 Server 的實例之 <code>meta.profile</code> 是否為 TWSS Base Profiles Defining URL，並確認實例是否依循 Profile 製作。</li>
</ol>
<div class="panel panel-default">
  <div class="panel-heading"><h3 class="panel-title">Resources或Profiles的RESTful功能</h3></div>
  <div class="panel-body">
    <h4 id="resourcesSummary1">Summary</h4>
    <p>共有20類Resources支援查詢，查詢參數如表列：</p>
    <div class="table-responsive">
      <table class="table table-condensed table-hover">
        <thead>
          <tr>
            <th><b>Resource型別</b></th>
            <th><b>Profile</b></th>
            <th>Create</th>
            <th>Read</th>
            <th>VRead</th>
            <th>Delete</th>
            <th>Update</th>
            <th><b>支援的查詢參數</b></th>
          </tr>
        </thead>
        <tbody>
<tr>
  <td><a href="#Claim-1">Claim</a></td>
  <td>支援的Profiles<br />  <a href="StructureDefinition-Claim-twss-base.html">補助申請或核付明細-Claim TWSS Base</a></td>
  <td class="text-center">y</td>
  <td class="text-center">y</td>
  <td class="text-center">y</td>
  <td class="text-center"></td>
  <td class="text-center">y</td>
  <td>_id, identifier, patient, created</td>
</tr>
<tr>
  <td><a href="#ClaimResponse-2">ClaimResponse</a></td>
  <td>支援的Profiles<br />  <a href="StructureDefinition-ClaimResponse-twss-base.html">補助審核或核付結果-ClaimResponse TWSS Base</a></td>
  <td class="text-center">y</td>
  <td class="text-center">y</td>
  <td class="text-center">y</td>
  <td class="text-center"></td>
  <td class="text-center">y</td>
  <td>_id, identifier, patient, request, created</td>
</tr>
<tr>
  <td><a href="#Condition-3">Condition</a></td>
  <td>支援的Profiles<br />  <a href="StructureDefinition-Condition-twss-base.html">健康與障礙狀況-Condition TWSS Base</a></td>
  <td class="text-center">y</td>
  <td class="text-center">y</td>
  <td class="text-center">y</td>
  <td class="text-center"></td>
  <td class="text-center">y</td>
  <td>_id, patient, code, severity, recorded-date</td>
</tr>
<tr>
  <td><a href="#Coverage-4">Coverage</a></td>
  <td>支援的Profiles<br />  <a href="StructureDefinition-Coverage-twss-base.html">補助資格或補助案件-Coverage TWSS Base</a></td>
  <td class="text-center">y</td>
  <td class="text-center">y</td>
  <td class="text-center">y</td>
  <td class="text-center"></td>
  <td class="text-center">y</td>
  <td>_id, identifier, patient, type</td>
</tr>
<tr>
  <td><a href="#DocumentReference-5">DocumentReference</a></td>
  <td>支援的Profiles<br />  <a href="StructureDefinition-DocumentReference-twss-base.html">共用公文-DocumentReference TWSS Base</a></td>
  <td class="text-center">y</td>
  <td class="text-center">y</td>
  <td class="text-center"></td>
  <td class="text-center"></td>
  <td class="text-center">y</td>
  <td>_id, patient, type, date</td>
</tr>
<tr>
  <td><a href="#EpisodeOfCare-5">EpisodeOfCare</a></td>
  <td>支援的Profiles<br />  <a href="StructureDefinition-EpisodeOfCare-twss-base.html">個案服務案件-EpisodeOfCare TWSS Base</a></td>
  <td class="text-center">y</td>
  <td class="text-center">y</td>
  <td class="text-center">y</td>
  <td class="text-center"></td>
  <td class="text-center">y</td>
  <td>_id, identifier, patient, status, type, date</td>
</tr>
<tr>
  <td><a href="#Location-19">Location</a></td>
  <td>支援的Profiles<br />  <a href="StructureDefinition-Location-twss-base.html">服務地點及托育地址-Location TWSS Base</a></td>
  <td class="text-center">y</td>
  <td class="text-center">y</td>
  <td class="text-center">y</td>
  <td class="text-center"></td>
  <td class="text-center">y</td>
  <td>_id, name</td>
</tr>
<tr>
  <td><a href="#Observation-6">Observation</a></td>
  <td>支援的Profiles<br />  <a href="StructureDefinition-DisabilityCertificateObservation-twss-base.html">身心障礙證明狀態 Observation TWSS Base</a><br />  <a href="StructureDefinition-OrganizationAuditObservation-twss-base.html">機構查核結果 Observation TWSS Base</a><br />  <a href="StructureDefinition-PenaltyLegalBasisObservation-twss-base.html">裁罰法規依據 Observation TWSS Base</a><br />  <a href="StructureDefinition-PractitionerEducationObservation-twss-base.html">服務人教育經歷 Observation TWSS Base</a><br />  <a href="StructureDefinition-PractitionerTrainingObservation-twss-base.html">服務人受訓課程 Observation TWSS Base</a><br />  <a href="StructureDefinition-RulingDateObservation-twss-base.html">裁定日期 Observation TWSS Base</a></td>
  <td class="text-center">y</td>
  <td class="text-center">y</td>
  <td class="text-center">y</td>
  <td class="text-center"></td>
  <td class="text-center">y</td>
  <td>_id, patient, code, date</td>
</tr>
<tr>
  <td><a href="#Organization-7">Organization</a></td>
  <td>支援的Profiles<br />  <a href="StructureDefinition-MedicalInstitutionOrganization-twss-base.html">醫療院所 Organization TWSS Base</a><br />  <a href="StructureDefinition-Organization-twss-base.html">機構資料-Organization TWSS Base</a></td>
  <td class="text-center">y</td>
  <td class="text-center">y</td>
  <td class="text-center">y</td>
  <td class="text-center"></td>
  <td class="text-center">y</td>
  <td>_id, identifier, name, type</td>
</tr>
<tr>
  <td><a href="#Patient-8">Patient</a></td>
  <td>支援的Profiles<br />  <a href="StructureDefinition-Patient-twss-base.html">個案資料-Patient TWSS Base</a></td>
  <td class="text-center">y</td>
  <td class="text-center">y</td>
  <td class="text-center">y</td>
  <td class="text-center"></td>
  <td class="text-center">y</td>
  <td>_id, identifier, name</td>
</tr>
<tr>
  <td><a href="#Practitioner-9">Practitioner</a></td>
  <td>支援的Profiles<br />  <a href="StructureDefinition-Practitioner-twss-base.html">人員資料-Practitioner TWSS Base</a></td>
  <td class="text-center">y</td>
  <td class="text-center">y</td>
  <td class="text-center">y</td>
  <td class="text-center"></td>
  <td class="text-center">y</td>
  <td>_id, identifier, name</td>
</tr>
<tr>
  <td><a href="#PractitionerRole-10">PractitionerRole</a></td>
  <td>支援的Profiles<br />  <a href="StructureDefinition-PractitionerRole-twss-base.html">人員角色-PractitionerRole TWSS Base</a></td>
  <td class="text-center">y</td>
  <td class="text-center">y</td>
  <td class="text-center">y</td>
  <td class="text-center"></td>
  <td class="text-center">y</td>
  <td>_id, practitioner, organization, role</td>
</tr>
<tr>
  <td><a href="#RelatedPerson-11">RelatedPerson</a></td>
  <td>支援的Profiles<br />  <a href="StructureDefinition-RelatedPerson-twss-base.html">關係人資料-RelatedPerson TWSS Base</a></td>
  <td class="text-center">y</td>
  <td class="text-center">y</td>
  <td class="text-center">y</td>
  <td class="text-center"></td>
  <td class="text-center">y</td>
  <td>_id, patient, identifier, name</td>
</tr>
<tr>
  <td><a href="#ServiceRequest-12">ServiceRequest</a></td>
  <td>支援的Profiles<br />  <a href="StructureDefinition-ServiceRequest-twss-base.html">申請或服務請求-ServiceRequest TWSS Base</a><br />  <a href="StructureDefinition-ServiceRequest-case-report-twss-base.html">個案通報-ServiceRequest TWSS Base</a><br />  <a href="StructureDefinition-ServiceRequest-referral-twss-base.html">個案轉介-ServiceRequest TWSS Base</a></td>
  <td class="text-center">y</td>
  <td class="text-center">y</td>
  <td class="text-center">y</td>
  <td class="text-center"></td>
  <td class="text-center">y</td>
  <td>_id, identifier, patient, status, category, code, authored</td>
</tr>
<tr>
  <td><a href="#Task-13">Task</a></td>
  <td>支援的Profiles<br />  <a href="StructureDefinition-AssessmentReviewTask-twss-base.html">個案服務評估審核-Task TWSS Base</a><br />  <a href="StructureDefinition-CaseIntakeAssessmentTask-twss-base.html">個案受理與評估-Task TWSS Base</a><br />  <a href="StructureDefinition-ReferralAcceptanceTask-twss-base.html">個案轉介受理-Task TWSS Base</a><br />  <a href="StructureDefinition-ReferralHandlingTask-twss-base.html">個案轉介處理-Task TWSS Base</a></td>
  <td class="text-center">y</td>
  <td class="text-center">y</td>
  <td class="text-center">y</td>
  <td class="text-center"></td>
  <td class="text-center">y</td>
  <td>_id, patient, status, business-status</td>
</tr>
<tr>
  <td><a href="#Encounter-14">Encounter</a></td>
  <td>支援的Profiles<br />  <a href="StructureDefinition-ActualServiceEncounter-twss-base.html">個案實際服務-Encounter TWSS Base</a><br />  <a href="StructureDefinition-Encounter-assessment-service-twss-base.html">個案評估或服務接觸-Encounter TWSS Base</a><br />  <a href="StructureDefinition-InterviewEncounter-twss-base.html">個案會談-Encounter TWSS Base</a><br />  <a href="StructureDefinition-MeetingEncounter-twss-base.html">個案會議-Encounter TWSS Base</a><br />  <a href="StructureDefinition-PlacementEncounter-twss-base.html">安置服務-Encounter TWSS Base</a></td>
  <td class="text-center">y</td>
  <td class="text-center">y</td>
  <td class="text-center">y</td>
  <td class="text-center"></td>
  <td class="text-center">y</td>
  <td>_id, patient, status, date</td>
</tr>
<tr>
  <td><a href="#CarePlan-15">CarePlan</a></td>
  <td>支援的Profiles<br />  <a href="StructureDefinition-CarePlan-twss-base.html">個案服務計畫-CarePlan TWSS Base</a></td>
  <td class="text-center">y</td>
  <td class="text-center">y</td>
  <td class="text-center"></td>
  <td class="text-center"></td>
  <td class="text-center">y</td>
  <td>_id, patient, status</td>
</tr>
<tr>
  <td><a href="#QuestionnaireResponse-16">QuestionnaireResponse</a></td>
  <td>支援的Profiles<br />  <a href="StructureDefinition-QuestionnaireResponse-twss-base.html">社福評估回覆-QuestionnaireResponse TWSS Base</a></td>
  <td class="text-center">y</td>
  <td class="text-center">y</td>
  <td class="text-center"></td>
  <td class="text-center"></td>
  <td class="text-center">y</td>
  <td>_id, patient, status, questionnaire, authored</td>
</tr>
<tr>
  <td><a href="#Questionnaire-17">Questionnaire</a></td>
  <td>支援的Profiles<br />  <a href="StructureDefinition-Questionnaire-twss-base.html">社福評估表單-Questionnaire TWSS Base</a></td>
  <td class="text-center"></td>
  <td class="text-center">y</td>
  <td class="text-center"></td>
  <td class="text-center"></td>
  <td class="text-center"></td>
  <td></td>
</tr>
<tr>
  <td><a href="#Provenance-18">Provenance</a></td>
  <td>支援的Profiles<br />  <a href="StructureDefinition-Provenance-twss-base.html">資料建立與修改歷程-Provenance TWSS Base</a></td>
  <td class="text-center">y</td>
  <td class="text-center">y</td>
  <td class="text-center">y</td>
  <td class="text-center"></td>
  <td class="text-center">y</td>
  <td>_id, target, recorded, agent</td>
</tr>
        </tbody>
      </table>
    </div>
  </div>
</div>

<div class="panel panel-default">
  <div class="panel-heading">
    <h4 id="Claim-1" class="panel-title"><span style="float: right;">預期的遵從度：建議應該（SHOULD）</span>Claim</h4>
  </div>
  <div class="panel-body">
    <div class="container">
      <div class="row">
        <div class="col-lg-3"><span class="lead">Core FHIR Resource</span><br/><a href="http://hl7.org/fhir/R4/claim.html">Claim</a></div>
        <div class="col-lg-4"><span class="lead">支援的參照政策（Reference policy）</span><br/><code>resolves</code><br/><br/><span class="lead">支援的Profiles</span><br/><a href="StructureDefinition-Claim-twss-base.html">補助申請或核付明細-Claim TWSS Base</a></div>
        <div class="col-lg-5"><span class="lead">能力摘要</span><br/>支援 create, read, vread, update 操作；查詢參數：_id, identifier, patient, created。</div>
      </div>
      <br/>
      <div class="row">
        <div class="col-lg-7"><span class="lead">Search Parameters</span>
          <table class="table table-striped table-bordered">
            <thead><tr><th>遵從度</th><th>參數</th><th>類型</th><th>範例</th></tr></thead>
            <tbody><tr><td>建議應該（SHOULD）</td><td><a href="SearchParameter-Claim-id.html">_id</a></td><td>token</td><td><code>GET [base]/Claim/[id]</code></td></tr><tr><td>建議應該（SHOULD）</td><td><a href="SearchParameter-Claim-identifier.html">identifier</a></td><td>token</td><td><code>GET [base]/Claim?identifier=[value]</code></td></tr><tr><td>建議應該（SHOULD）</td><td><a href="SearchParameter-Claim-patient.html">patient</a></td><td>reference</td><td><code>GET [base]/Claim?patient=[value]</code></td></tr><tr><td>建議應該（SHOULD）</td><td><a href="SearchParameter-Claim-created.html">created</a></td><td>date</td><td><code>GET [base]/Claim?created=[value]</code></td></tr></tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
</div>

<div class="panel panel-default">
  <div class="panel-heading">
    <h4 id="ClaimResponse-2" class="panel-title"><span style="float: right;">預期的遵從度：建議應該（SHOULD）</span>ClaimResponse</h4>
  </div>
  <div class="panel-body">
    <div class="container">
      <div class="row">
        <div class="col-lg-3"><span class="lead">Core FHIR Resource</span><br/><a href="http://hl7.org/fhir/R4/claimresponse.html">ClaimResponse</a></div>
        <div class="col-lg-4"><span class="lead">支援的參照政策（Reference policy）</span><br/><code>resolves</code><br/><br/><span class="lead">支援的Profiles</span><br/><a href="StructureDefinition-ClaimResponse-twss-base.html">補助審核或核付結果-ClaimResponse TWSS Base</a></div>
        <div class="col-lg-5"><span class="lead">能力摘要</span><br/>支援 create, read, vread, update 操作；查詢參數：_id, identifier, patient, request, created。</div>
      </div>
      <br/>
      <div class="row">
        <div class="col-lg-7"><span class="lead">Search Parameters</span>
          <table class="table table-striped table-bordered">
            <thead><tr><th>遵從度</th><th>參數</th><th>類型</th><th>範例</th></tr></thead>
            <tbody><tr><td>建議應該（SHOULD）</td><td><a href="SearchParameter-ClaimResponse-id.html">_id</a></td><td>token</td><td><code>GET [base]/ClaimResponse/[id]</code></td></tr><tr><td>建議應該（SHOULD）</td><td><a href="SearchParameter-ClaimResponse-identifier.html">identifier</a></td><td>token</td><td><code>GET [base]/ClaimResponse?identifier=[value]</code></td></tr><tr><td>建議應該（SHOULD）</td><td><a href="SearchParameter-ClaimResponse-patient.html">patient</a></td><td>reference</td><td><code>GET [base]/ClaimResponse?patient=[value]</code></td></tr><tr><td>建議應該（SHOULD）</td><td><a href="SearchParameter-ClaimResponse-request.html">request</a></td><td>reference</td><td><code>GET [base]/ClaimResponse?request=[value]</code></td></tr><tr><td>建議應該（SHOULD）</td><td><a href="SearchParameter-ClaimResponse-created.html">created</a></td><td>date</td><td><code>GET [base]/ClaimResponse?created=[value]</code></td></tr></tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
</div>

<div class="panel panel-default">
  <div class="panel-heading">
    <h4 id="Condition-3" class="panel-title"><span style="float: right;">預期的遵從度：建議應該（SHOULD）</span>Condition</h4>
  </div>
  <div class="panel-body">
    <div class="container">
      <div class="row">
        <div class="col-lg-3"><span class="lead">Core FHIR Resource</span><br/><a href="http://hl7.org/fhir/R4/condition.html">Condition</a></div>
        <div class="col-lg-4"><span class="lead">支援的參照政策（Reference policy）</span><br/><code>resolves</code><br/><br/><span class="lead">支援的Profiles</span><br/><a href="StructureDefinition-Condition-twss-base.html">健康與障礙狀況-Condition TWSS Base</a></div>
        <div class="col-lg-5"><span class="lead">能力摘要</span><br/>支援 create, read, vread, update 操作；查詢參數：_id, patient, code, severity, recorded-date。</div>
      </div>
      <br/>
      <div class="row">
        <div class="col-lg-7"><span class="lead">Search Parameters</span>
          <table class="table table-striped table-bordered">
            <thead><tr><th>遵從度</th><th>參數</th><th>類型</th><th>範例</th></tr></thead>
            <tbody><tr><td>建議應該（SHOULD）</td><td><a href="SearchParameter-Condition-id.html">_id</a></td><td>token</td><td><code>GET [base]/Condition/[id]</code></td></tr><tr><td>建議應該（SHOULD）</td><td><a href="SearchParameter-Condition-patient.html">patient</a></td><td>reference</td><td><code>GET [base]/Condition?patient=[value]</code></td></tr><tr><td>建議應該（SHOULD）</td><td><a href="SearchParameter-Condition-code.html">code</a></td><td>token</td><td><code>GET [base]/Condition?code=[value]</code></td></tr><tr><td>建議應該（SHOULD）</td><td><a href="SearchParameter-Condition-severity.html">severity</a></td><td>token</td><td><code>GET [base]/Condition?severity=[value]</code></td></tr><tr><td>建議應該（SHOULD）</td><td><a href="SearchParameter-Condition-recorded-date.html">recorded-date</a></td><td>date</td><td><code>GET [base]/Condition?recorded-date=[value]</code></td></tr></tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
</div>

<div class="panel panel-default">
  <div class="panel-heading">
    <h4 id="Coverage-4" class="panel-title"><span style="float: right;">預期的遵從度：建議應該（SHOULD）</span>Coverage</h4>
  </div>
  <div class="panel-body">
    <div class="container">
      <div class="row">
        <div class="col-lg-3"><span class="lead">Core FHIR Resource</span><br/><a href="http://hl7.org/fhir/R4/coverage.html">Coverage</a></div>
        <div class="col-lg-4"><span class="lead">支援的參照政策（Reference policy）</span><br/><code>resolves</code><br/><br/><span class="lead">支援的Profiles</span><br/><a href="StructureDefinition-Coverage-twss-base.html">補助資格或補助案件-Coverage TWSS Base</a></div>
        <div class="col-lg-5"><span class="lead">能力摘要</span><br/>支援 create, read, vread, update 操作；查詢參數：_id, identifier, patient, type。</div>
      </div>
      <br/>
      <div class="row">
        <div class="col-lg-7"><span class="lead">Search Parameters</span>
          <table class="table table-striped table-bordered">
            <thead><tr><th>遵從度</th><th>參數</th><th>類型</th><th>範例</th></tr></thead>
            <tbody><tr><td>建議應該（SHOULD）</td><td><a href="SearchParameter-Coverage-id.html">_id</a></td><td>token</td><td><code>GET [base]/Coverage/[id]</code></td></tr><tr><td>建議應該（SHOULD）</td><td><a href="SearchParameter-Coverage-identifier.html">identifier</a></td><td>token</td><td><code>GET [base]/Coverage?identifier=[value]</code></td></tr><tr><td>建議應該（SHOULD）</td><td><a href="SearchParameter-Coverage-patient.html">patient</a></td><td>reference</td><td><code>GET [base]/Coverage?patient=[value]</code></td></tr><tr><td>建議應該（SHOULD）</td><td><a href="SearchParameter-Coverage-type.html">type</a></td><td>token</td><td><code>GET [base]/Coverage?type=[value]</code></td></tr></tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
</div>

<div class="panel panel-default">
  <div class="panel-heading">
    <h4 id="EpisodeOfCare-5" class="panel-title"><span style="float: right;">預期的遵從度：建議應該（SHOULD）</span>EpisodeOfCare</h4>
  </div>
  <div class="panel-body">
    <div class="container">
      <div class="row">
        <div class="col-lg-3"><span class="lead">Core FHIR Resource</span><br/><a href="http://hl7.org/fhir/R4/episodeofcare.html">EpisodeOfCare</a></div>
        <div class="col-lg-4"><span class="lead">支援的參照政策（Reference policy）</span><br/><code>resolves</code><br/><br/><span class="lead">支援的Profiles</span><br/><a href="StructureDefinition-EpisodeOfCare-twss-base.html">個案服務案件-EpisodeOfCare TWSS Base</a></div>
        <div class="col-lg-5"><span class="lead">能力摘要</span><br/>支援 create, read, vread, update 操作；查詢參數：_id, identifier, patient, status, type, date。</div>
      </div>
      <br/>
      <div class="row">
        <div class="col-lg-7"><span class="lead">Search Parameters</span>
          <table class="table table-striped table-bordered">
            <thead><tr><th>遵從度</th><th>參數</th><th>類型</th><th>範例</th></tr></thead>
            <tbody><tr><td>建議應該（SHOULD）</td><td><a href="SearchParameter-EpisodeOfCare-id.html">_id</a></td><td>token</td><td><code>GET [base]/EpisodeOfCare/[id]</code></td></tr><tr><td>建議應該（SHOULD）</td><td><a href="SearchParameter-EpisodeOfCare-identifier.html">identifier</a></td><td>token</td><td><code>GET [base]/EpisodeOfCare?identifier=[value]</code></td></tr><tr><td>建議應該（SHOULD）</td><td><a href="SearchParameter-EpisodeOfCare-patient.html">patient</a></td><td>reference</td><td><code>GET [base]/EpisodeOfCare?patient=[value]</code></td></tr><tr><td>建議應該（SHOULD）</td><td><a href="SearchParameter-EpisodeOfCare-status.html">status</a></td><td>token</td><td><code>GET [base]/EpisodeOfCare?status=[value]</code></td></tr><tr><td>建議應該（SHOULD）</td><td><a href="SearchParameter-EpisodeOfCare-type.html">type</a></td><td>token</td><td><code>GET [base]/EpisodeOfCare?type=[value]</code></td></tr><tr><td>建議應該（SHOULD）</td><td><a href="SearchParameter-EpisodeOfCare-date.html">date</a></td><td>date</td><td><code>GET [base]/EpisodeOfCare?date=[value]</code></td></tr></tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
</div>

<div class="panel panel-default">
  <div class="panel-heading">
    <h4 id="Location-19" class="panel-title"><span style="float: right;">預期的遵從度：必須（SHALL）</span>Location</h4>
  </div>
  <div class="panel-body">
    <div class="container">
      <div class="row">
        <div class="col-lg-3"><span class="lead">Core FHIR Resource</span><br/><a href="http://hl7.org/fhir/R4/location.html">Location</a></div>
        <div class="col-lg-4"><span class="lead">支援的參照政策（Reference policy）</span><br/><code>resolves</code><br/><br/><span class="lead">支援的Profiles</span><br/><a href="StructureDefinition-Location-twss-base.html">服務地點及托育地址-Location TWSS Base</a></div>
        <div class="col-lg-5"><span class="lead">能力摘要</span><br/>支援 create, read, vread, update 操作；查詢參數：_id, name。</div>
      </div>
      <br/>
      <div class="row">
        <div class="col-lg-7"><span class="lead">Search Parameters</span>
          <table class="table table-striped table-bordered">
            <thead><tr><th>遵從度</th><th>參數</th><th>類型</th><th>範例</th></tr></thead>
            <tbody><tr><td>必須（SHALL）</td><td><a href="SearchParameter-Location-id.html">_id</a></td><td>token</td><td><code>GET [base]/Location/[id]</code></td></tr><tr><td>必須（SHALL）</td><td><a href="SearchParameter-Location-name.html">name</a></td><td>string</td><td><code>GET [base]/Location?name=[value]</code></td></tr></tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
</div>

<div class="panel panel-default">
  <div class="panel-heading">
    <h4 id="Observation-6" class="panel-title"><span style="float: right;">預期的遵從度：建議應該（SHOULD）</span>Observation</h4>
  </div>
  <div class="panel-body">
    <div class="container">
      <div class="row">
        <div class="col-lg-3"><span class="lead">Core FHIR Resource</span><br/><a href="http://hl7.org/fhir/R4/observation.html">Observation</a></div>
        <div class="col-lg-4"><span class="lead">支援的參照政策（Reference policy）</span><br/><code>resolves</code><br/><br/><span class="lead">支援的Profiles</span><br/><a href="StructureDefinition-DisabilityCertificateObservation-twss-base.html">身心障礙證明狀態 Observation TWSS Base</a><br/><a href="StructureDefinition-OrganizationAuditObservation-twss-base.html">機構查核結果 Observation TWSS Base</a><br/><a href="StructureDefinition-PenaltyLegalBasisObservation-twss-base.html">裁罰法規依據 Observation TWSS Base</a><br/><a href="StructureDefinition-PractitionerEducationObservation-twss-base.html">服務人教育經歷 Observation TWSS Base</a><br/><a href="StructureDefinition-PractitionerTrainingObservation-twss-base.html">服務人受訓課程 Observation TWSS Base</a><br/><a href="StructureDefinition-RulingDateObservation-twss-base.html">裁定日期 Observation TWSS Base</a></div>
        <div class="col-lg-5"><span class="lead">能力摘要</span><br/>支援 create, read, vread, update 操作；查詢參數：_id, patient, code, date。</div>
      </div>
      <br/>
      <div class="row">
        <div class="col-lg-7"><span class="lead">Search Parameters</span>
          <table class="table table-striped table-bordered">
            <thead><tr><th>遵從度</th><th>參數</th><th>類型</th><th>範例</th></tr></thead>
            <tbody><tr><td>建議應該（SHOULD）</td><td><a href="SearchParameter-Observation-id.html">_id</a></td><td>token</td><td><code>GET [base]/Observation/[id]</code></td></tr><tr><td>建議應該（SHOULD）</td><td><a href="SearchParameter-Observation-patient.html">patient</a></td><td>reference</td><td><code>GET [base]/Observation?patient=[value]</code></td></tr><tr><td>建議應該（SHOULD）</td><td><a href="SearchParameter-Observation-code.html">code</a></td><td>token</td><td><code>GET [base]/Observation?code=[value]</code></td></tr><tr><td>建議應該（SHOULD）</td><td><a href="SearchParameter-Observation-date.html">date</a></td><td>date</td><td><code>GET [base]/Observation?date=[value]</code></td></tr></tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
</div>

<div class="panel panel-default">
  <div class="panel-heading">
    <h4 id="Organization-7" class="panel-title"><span style="float: right;">預期的遵從度：建議應該（SHOULD）</span>Organization</h4>
  </div>
  <div class="panel-body">
    <div class="container">
      <div class="row">
        <div class="col-lg-3"><span class="lead">Core FHIR Resource</span><br/><a href="http://hl7.org/fhir/R4/organization.html">Organization</a></div>
        <div class="col-lg-4"><span class="lead">支援的參照政策（Reference policy）</span><br/><code>resolves</code><br/><br/><span class="lead">支援的Profiles</span><br/><a href="StructureDefinition-MedicalInstitutionOrganization-twss-base.html">醫療院所 Organization TWSS Base</a><br/><a href="StructureDefinition-Organization-twss-base.html">機構資料-Organization TWSS Base</a></div>
        <div class="col-lg-5"><span class="lead">能力摘要</span><br/>支援 create, read, vread, update 操作；查詢參數：_id, identifier, name, type。</div>
      </div>
      <br/>
      <div class="row">
        <div class="col-lg-7"><span class="lead">Search Parameters</span>
          <table class="table table-striped table-bordered">
            <thead><tr><th>遵從度</th><th>參數</th><th>類型</th><th>範例</th></tr></thead>
            <tbody><tr><td>建議應該（SHOULD）</td><td><a href="SearchParameter-Organization-id.html">_id</a></td><td>token</td><td><code>GET [base]/Organization/[id]</code></td></tr><tr><td>建議應該（SHOULD）</td><td><a href="SearchParameter-Organization-identifier.html">identifier</a></td><td>token</td><td><code>GET [base]/Organization?identifier=[value]</code></td></tr><tr><td>建議應該（SHOULD）</td><td><a href="SearchParameter-Organization-name.html">name</a></td><td>string</td><td><code>GET [base]/Organization?name=[value]</code></td></tr><tr><td>建議應該（SHOULD）</td><td><a href="SearchParameter-Organization-type.html">type</a></td><td>token</td><td><code>GET [base]/Organization?type=[value]</code></td></tr></tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
</div>

<div class="panel panel-default">
  <div class="panel-heading">
    <h4 id="Patient-8" class="panel-title"><span style="float: right;">預期的遵從度：建議應該（SHOULD）</span>Patient</h4>
  </div>
  <div class="panel-body">
    <div class="container">
      <div class="row">
        <div class="col-lg-3"><span class="lead">Core FHIR Resource</span><br/><a href="http://hl7.org/fhir/R4/patient.html">Patient</a></div>
        <div class="col-lg-4"><span class="lead">支援的參照政策（Reference policy）</span><br/><code>resolves</code><br/><br/><span class="lead">支援的Profiles</span><br/><a href="StructureDefinition-Patient-twss-base.html">個案資料-Patient TWSS Base</a></div>
        <div class="col-lg-5"><span class="lead">能力摘要</span><br/>支援 create, read, vread, update 操作；查詢參數：_id, identifier, name。</div>
      </div>
      <br/>
      <div class="row">
        <div class="col-lg-7"><span class="lead">Search Parameters</span>
          <table class="table table-striped table-bordered">
            <thead><tr><th>遵從度</th><th>參數</th><th>類型</th><th>範例</th></tr></thead>
            <tbody><tr><td>建議應該（SHOULD）</td><td><a href="SearchParameter-Patient-id.html">_id</a></td><td>token</td><td><code>GET [base]/Patient/[id]</code></td></tr><tr><td>建議應該（SHOULD）</td><td><a href="SearchParameter-Patient-identifier.html">identifier</a></td><td>token</td><td><code>GET [base]/Patient?identifier=[value]</code></td></tr><tr><td>建議應該（SHOULD）</td><td><a href="SearchParameter-Patient-name.html">name</a></td><td>string</td><td><code>GET [base]/Patient?name=[value]</code></td></tr></tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
</div>

<div class="panel panel-default">
  <div class="panel-heading">
    <h4 id="Practitioner-9" class="panel-title"><span style="float: right;">預期的遵從度：建議應該（SHOULD）</span>Practitioner</h4>
  </div>
  <div class="panel-body">
    <div class="container">
      <div class="row">
        <div class="col-lg-3"><span class="lead">Core FHIR Resource</span><br/><a href="http://hl7.org/fhir/R4/practitioner.html">Practitioner</a></div>
        <div class="col-lg-4"><span class="lead">支援的參照政策（Reference policy）</span><br/><code>resolves</code><br/><br/><span class="lead">支援的Profiles</span><br/><a href="StructureDefinition-Practitioner-twss-base.html">人員資料-Practitioner TWSS Base</a></div>
        <div class="col-lg-5"><span class="lead">能力摘要</span><br/>支援 create, read, vread, update 操作；查詢參數：_id, identifier, name。</div>
      </div>
      <br/>
      <div class="row">
        <div class="col-lg-7"><span class="lead">Search Parameters</span>
          <table class="table table-striped table-bordered">
            <thead><tr><th>遵從度</th><th>參數</th><th>類型</th><th>範例</th></tr></thead>
            <tbody><tr><td>建議應該（SHOULD）</td><td><a href="SearchParameter-Practitioner-id.html">_id</a></td><td>token</td><td><code>GET [base]/Practitioner/[id]</code></td></tr><tr><td>建議應該（SHOULD）</td><td><a href="SearchParameter-Practitioner-identifier.html">identifier</a></td><td>token</td><td><code>GET [base]/Practitioner?identifier=[value]</code></td></tr><tr><td>建議應該（SHOULD）</td><td><a href="SearchParameter-Practitioner-name.html">name</a></td><td>string</td><td><code>GET [base]/Practitioner?name=[value]</code></td></tr></tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
</div>

<div class="panel panel-default">
  <div class="panel-heading">
    <h4 id="PractitionerRole-10" class="panel-title"><span style="float: right;">預期的遵從度：建議應該（SHOULD）</span>PractitionerRole</h4>
  </div>
  <div class="panel-body">
    <div class="container">
      <div class="row">
        <div class="col-lg-3"><span class="lead">Core FHIR Resource</span><br/><a href="http://hl7.org/fhir/R4/practitionerrole.html">PractitionerRole</a></div>
        <div class="col-lg-4"><span class="lead">支援的參照政策（Reference policy）</span><br/><code>resolves</code><br/><br/><span class="lead">支援的Profiles</span><br/><a href="StructureDefinition-PractitionerRole-twss-base.html">人員角色-PractitionerRole TWSS Base</a></div>
        <div class="col-lg-5"><span class="lead">能力摘要</span><br/>支援 create, read, vread, update 操作；查詢參數：_id, practitioner, organization, role。</div>
      </div>
      <br/>
      <div class="row">
        <div class="col-lg-7"><span class="lead">Search Parameters</span>
          <table class="table table-striped table-bordered">
            <thead><tr><th>遵從度</th><th>參數</th><th>類型</th><th>範例</th></tr></thead>
            <tbody><tr><td>建議應該（SHOULD）</td><td><a href="SearchParameter-PractitionerRole-id.html">_id</a></td><td>token</td><td><code>GET [base]/PractitionerRole/[id]</code></td></tr><tr><td>建議應該（SHOULD）</td><td><a href="SearchParameter-PractitionerRole-practitioner.html">practitioner</a></td><td>reference</td><td><code>GET [base]/PractitionerRole?practitioner=[value]</code></td></tr><tr><td>建議應該（SHOULD）</td><td><a href="SearchParameter-PractitionerRole-organization.html">organization</a></td><td>reference</td><td><code>GET [base]/PractitionerRole?organization=[value]</code></td></tr><tr><td>建議應該（SHOULD）</td><td><a href="SearchParameter-PractitionerRole-role.html">role</a></td><td>token</td><td><code>GET [base]/PractitionerRole?role=[value]</code></td></tr></tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
</div>

<div class="panel panel-default">
  <div class="panel-heading">
    <h4 id="RelatedPerson-11" class="panel-title"><span style="float: right;">預期的遵從度：建議應該（SHOULD）</span>RelatedPerson</h4>
  </div>
  <div class="panel-body">
    <div class="container">
      <div class="row">
        <div class="col-lg-3"><span class="lead">Core FHIR Resource</span><br/><a href="http://hl7.org/fhir/R4/relatedperson.html">RelatedPerson</a></div>
        <div class="col-lg-4"><span class="lead">支援的參照政策（Reference policy）</span><br/><code>resolves</code><br/><br/><span class="lead">支援的Profiles</span><br/><a href="StructureDefinition-RelatedPerson-twss-base.html">關係人資料-RelatedPerson TWSS Base</a></div>
        <div class="col-lg-5"><span class="lead">能力摘要</span><br/>支援 create, read, vread, update 操作；查詢參數：_id, patient, identifier, name。</div>
      </div>
      <br/>
      <div class="row">
        <div class="col-lg-7"><span class="lead">Search Parameters</span>
          <table class="table table-striped table-bordered">
            <thead><tr><th>遵從度</th><th>參數</th><th>類型</th><th>範例</th></tr></thead>
            <tbody><tr><td>建議應該（SHOULD）</td><td><a href="SearchParameter-RelatedPerson-id.html">_id</a></td><td>token</td><td><code>GET [base]/RelatedPerson/[id]</code></td></tr><tr><td>建議應該（SHOULD）</td><td><a href="SearchParameter-RelatedPerson-patient.html">patient</a></td><td>reference</td><td><code>GET [base]/RelatedPerson?patient=[value]</code></td></tr><tr><td>建議應該（SHOULD）</td><td><a href="SearchParameter-RelatedPerson-identifier.html">identifier</a></td><td>token</td><td><code>GET [base]/RelatedPerson?identifier=[value]</code></td></tr><tr><td>建議應該（SHOULD）</td><td><a href="SearchParameter-RelatedPerson-name.html">name</a></td><td>string</td><td><code>GET [base]/RelatedPerson?name=[value]</code></td></tr></tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
</div>

<div class="panel panel-default">
  <div class="panel-heading">
    <h4 id="ServiceRequest-12" class="panel-title"><span style="float: right;">預期的遵從度：建議應該（SHOULD）</span>ServiceRequest</h4>
  </div>
  <div class="panel-body">
    <div class="container">
      <div class="row">
        <div class="col-lg-3"><span class="lead">Core FHIR Resource</span><br/><a href="http://hl7.org/fhir/R4/servicerequest.html">ServiceRequest</a></div>
        <div class="col-lg-4"><span class="lead">支援的參照政策（Reference policy）</span><br/><code>resolves</code><br/><br/><span class="lead">支援的Profiles</span><br/><a href="StructureDefinition-ServiceRequest-twss-base.html">申請或服務請求-ServiceRequest TWSS Base</a><br/><a href="StructureDefinition-ServiceRequest-case-report-twss-base.html">個案通報-ServiceRequest TWSS Base</a><br/><a href="StructureDefinition-ServiceRequest-referral-twss-base.html">個案轉介-ServiceRequest TWSS Base</a></div>
        <div class="col-lg-5"><span class="lead">能力摘要</span><br/>支援 create, read, vread, update 操作；查詢參數：_id, identifier, patient, status, category, code, authored。</div>
      </div>
      <br/>
      <div class="row">
        <div class="col-lg-7"><span class="lead">Search Parameters</span>
          <table class="table table-striped table-bordered">
            <thead><tr><th>遵從度</th><th>參數</th><th>類型</th><th>範例</th></tr></thead>
            <tbody><tr><td>建議應該（SHOULD）</td><td><a href="SearchParameter-ServiceRequest-id.html">_id</a></td><td>token</td><td><code>GET [base]/ServiceRequest/[id]</code></td></tr><tr><td>建議應該（SHOULD）</td><td><a href="SearchParameter-ServiceRequest-identifier.html">identifier</a></td><td>token</td><td><code>GET [base]/ServiceRequest?identifier=[value]</code></td></tr><tr><td>建議應該（SHOULD）</td><td><a href="SearchParameter-ServiceRequest-patient.html">patient</a></td><td>reference</td><td><code>GET [base]/ServiceRequest?patient=[value]</code></td></tr><tr><td>建議應該（SHOULD）</td><td><a href="SearchParameter-ServiceRequest-status.html">status</a></td><td>token</td><td><code>GET [base]/ServiceRequest?status=[value]</code></td></tr><tr><td>建議應該（SHOULD）</td><td><a href="SearchParameter-ServiceRequest-category.html">category</a></td><td>token</td><td><code>GET [base]/ServiceRequest?category=[value]</code></td></tr><tr><td>建議應該（SHOULD）</td><td><a href="SearchParameter-ServiceRequest-code.html">code</a></td><td>token</td><td><code>GET [base]/ServiceRequest?code=[value]</code></td></tr><tr><td>建議應該（SHOULD）</td><td><a href="SearchParameter-ServiceRequest-authored.html">authored</a></td><td>date</td><td><code>GET [base]/ServiceRequest?authored=[value]</code></td></tr></tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
</div>

<div class="panel panel-default">
  <div class="panel-heading">
    <h4 id="Task-13" class="panel-title"><span style="float: right;">預期的遵從度：建議應該（SHOULD）</span>Task</h4>
  </div>
  <div class="panel-body">
    <div class="container">
      <div class="row">
        <div class="col-lg-3"><span class="lead">Core FHIR Resource</span><br/><a href="http://hl7.org/fhir/R4/task.html">Task</a></div>
        <div class="col-lg-4"><span class="lead">支援的參照政策（Reference policy）</span><br/><code>resolves</code><br/><br/><span class="lead">支援的Profiles</span><br/><a href="StructureDefinition-AssessmentReviewTask-twss-base.html">個案服務評估審核-Task TWSS Base</a><br/><a href="StructureDefinition-CaseIntakeAssessmentTask-twss-base.html">個案受理與評估-Task TWSS Base</a><br/><a href="StructureDefinition-ReferralAcceptanceTask-twss-base.html">個案轉介受理-Task TWSS Base</a><br/><a href="StructureDefinition-ReferralHandlingTask-twss-base.html">個案轉介處理-Task TWSS Base</a></div>
        <div class="col-lg-5"><span class="lead">能力摘要</span><br/>支援 create, read, vread, update 操作；查詢參數：_id, patient, status, business-status。</div>
      </div>
      <br/>
      <div class="row">
        <div class="col-lg-7"><span class="lead">Search Parameters</span>
          <table class="table table-striped table-bordered">
            <thead><tr><th>遵從度</th><th>參數</th><th>類型</th><th>範例</th></tr></thead>
            <tbody><tr><td>建議應該（SHOULD）</td><td><a href="SearchParameter-Task-id.html">_id</a></td><td>token</td><td><code>GET [base]/Task/[id]</code></td></tr><tr><td>建議應該（SHOULD）</td><td><a href="SearchParameter-Task-patient.html">patient</a></td><td>reference</td><td><code>GET [base]/Task?patient=[value]</code></td></tr><tr><td>建議應該（SHOULD）</td><td><a href="SearchParameter-Task-status.html">status</a></td><td>token</td><td><code>GET [base]/Task?status=[value]</code></td></tr><tr><td>建議應該（SHOULD）</td><td><a href="SearchParameter-Task-business-status.html">business-status</a></td><td>token</td><td><code>GET [base]/Task?business-status=[value]</code></td></tr></tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
</div>

<div class="panel panel-default">
  <div class="panel-heading">
    <h4 id="Encounter-14" class="panel-title"><span style="float: right;">預期的遵從度：建議應該（SHOULD）</span>Encounter</h4>
  </div>
  <div class="panel-body">
    <div class="container">
      <div class="row">
        <div class="col-lg-3"><span class="lead">Core FHIR Resource</span><br/><a href="http://hl7.org/fhir/R4/encounter.html">Encounter</a></div>
        <div class="col-lg-4"><span class="lead">支援的參照政策（Reference policy）</span><br/><code>resolves</code><br/><br/><span class="lead">支援的Profiles</span><br/><a href="StructureDefinition-ActualServiceEncounter-twss-base.html">個案實際服務-Encounter TWSS Base</a><br/><a href="StructureDefinition-Encounter-assessment-service-twss-base.html">個案評估或服務接觸-Encounter TWSS Base</a><br/><a href="StructureDefinition-InterviewEncounter-twss-base.html">個案會談-Encounter TWSS Base</a><br/><a href="StructureDefinition-MeetingEncounter-twss-base.html">個案會議-Encounter TWSS Base</a><br/><a href="StructureDefinition-PlacementEncounter-twss-base.html">安置服務-Encounter TWSS Base</a></div>
        <div class="col-lg-5"><span class="lead">能力摘要</span><br/>支援 create, read, vread, update 操作；查詢參數：_id, patient, status, date。</div>
      </div>
      <br/>
      <div class="row">
        <div class="col-lg-7"><span class="lead">Search Parameters</span>
          <table class="table table-striped table-bordered">
            <thead><tr><th>遵從度</th><th>參數</th><th>類型</th><th>範例</th></tr></thead>
            <tbody><tr><td>建議應該（SHOULD）</td><td><a href="SearchParameter-Encounter-id.html">_id</a></td><td>token</td><td><code>GET [base]/Encounter/[id]</code></td></tr><tr><td>建議應該（SHOULD）</td><td><a href="SearchParameter-Encounter-patient.html">patient</a></td><td>reference</td><td><code>GET [base]/Encounter?patient=[value]</code></td></tr><tr><td>建議應該（SHOULD）</td><td><a href="SearchParameter-Encounter-status.html">status</a></td><td>token</td><td><code>GET [base]/Encounter?status=[value]</code></td></tr><tr><td>建議應該（SHOULD）</td><td><a href="SearchParameter-Encounter-date.html">date</a></td><td>date</td><td><code>GET [base]/Encounter?date=[value]</code></td></tr></tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
</div>

<div class="panel panel-default">
  <div class="panel-heading">
    <h4 id="CarePlan-15" class="panel-title"><span style="float: right;">預期的遵從度：建議應該（SHOULD）</span>CarePlan</h4>
  </div>
  <div class="panel-body">
    <div class="container">
      <div class="row">
        <div class="col-lg-3"><span class="lead">Core FHIR Resource</span><br/><a href="http://hl7.org/fhir/R4/careplan.html">CarePlan</a></div>
        <div class="col-lg-4"><span class="lead">支援的參照政策（Reference policy）</span><br/><code>未宣告</code><br/><br/><span class="lead">支援的Profiles</span><br/><a href="StructureDefinition-CarePlan-twss-base.html">個案服務計畫-CarePlan TWSS Base</a></div>
        <div class="col-lg-5"><span class="lead">能力摘要</span><br/>支援 create, read, update 操作；查詢參數：_id, patient, status。</div>
      </div>
      <br/>
      <div class="row">
        <div class="col-lg-7"><span class="lead">Search Parameters</span>
          <table class="table table-striped table-bordered">
            <thead><tr><th>遵從度</th><th>參數</th><th>類型</th><th>範例</th></tr></thead>
            <tbody><tr><td>建議應該（SHOULD）</td><td><a href="SearchParameter-CarePlan-id.html">_id</a></td><td>token</td><td><code>GET [base]/CarePlan/[id]</code></td></tr><tr><td>建議應該（SHOULD）</td><td><a href="SearchParameter-CarePlan-patient.html">patient</a></td><td>reference</td><td><code>GET [base]/CarePlan?patient=[value]</code></td></tr><tr><td>建議應該（SHOULD）</td><td><a href="SearchParameter-CarePlan-status.html">status</a></td><td>token</td><td><code>GET [base]/CarePlan?status=[value]</code></td></tr></tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
</div>

<div class="panel panel-default">
  <div class="panel-heading">
    <h4 id="QuestionnaireResponse-16" class="panel-title"><span style="float: right;">預期的遵從度：建議應該（SHOULD）</span>QuestionnaireResponse</h4>
  </div>
  <div class="panel-body">
    <div class="container">
      <div class="row">
        <div class="col-lg-3"><span class="lead">Core FHIR Resource</span><br/><a href="http://hl7.org/fhir/R4/questionnaireresponse.html">QuestionnaireResponse</a></div>
        <div class="col-lg-4"><span class="lead">支援的參照政策（Reference policy）</span><br/><code>未宣告</code><br/><br/><span class="lead">支援的Profiles</span><br/><a href="StructureDefinition-QuestionnaireResponse-twss-base.html">社福評估回覆-QuestionnaireResponse TWSS Base</a></div>
        <div class="col-lg-5"><span class="lead">能力摘要</span><br/>支援 create, read, update 操作；查詢參數：_id, patient, status, questionnaire, authored。</div>
      </div>
      <br/>
      <div class="row">
        <div class="col-lg-7"><span class="lead">Search Parameters</span>
          <table class="table table-striped table-bordered">
            <thead><tr><th>遵從度</th><th>參數</th><th>類型</th><th>範例</th></tr></thead>
            <tbody><tr><td>建議應該（SHOULD）</td><td><a href="SearchParameter-QuestionnaireResponse-id.html">_id</a></td><td>token</td><td><code>GET [base]/QuestionnaireResponse/[id]</code></td></tr><tr><td>建議應該（SHOULD）</td><td><a href="SearchParameter-QuestionnaireResponse-patient.html">patient</a></td><td>reference</td><td><code>GET [base]/QuestionnaireResponse?patient=[value]</code></td></tr><tr><td>建議應該（SHOULD）</td><td><a href="SearchParameter-QuestionnaireResponse-status.html">status</a></td><td>token</td><td><code>GET [base]/QuestionnaireResponse?status=[value]</code></td></tr><tr><td>建議應該（SHOULD）</td><td><a href="SearchParameter-QuestionnaireResponse-questionnaire.html">questionnaire</a></td><td>reference</td><td><code>GET [base]/QuestionnaireResponse?questionnaire=[value]</code></td></tr><tr><td>建議應該（SHOULD）</td><td><a href="SearchParameter-QuestionnaireResponse-authored.html">authored</a></td><td>date</td><td><code>GET [base]/QuestionnaireResponse?authored=[value]</code></td></tr></tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
</div>

<div class="panel panel-default">
  <div class="panel-heading">
    <h4 id="Questionnaire-17" class="panel-title"><span style="float: right;">預期的遵從度：建議應該（SHOULD）</span>Questionnaire</h4>
  </div>
  <div class="panel-body">
    <div class="container">
      <div class="row">
        <div class="col-lg-3"><span class="lead">Core FHIR Resource</span><br/><a href="http://hl7.org/fhir/R4/questionnaire.html">Questionnaire</a></div>
        <div class="col-lg-4"><span class="lead">支援的參照政策（Reference policy）</span><br/><code>未宣告</code><br/><br/><span class="lead">支援的Profiles</span><br/><a href="StructureDefinition-Questionnaire-twss-base.html">社福評估表單-Questionnaire TWSS Base</a></div>
        <div class="col-lg-5"><span class="lead">能力摘要</span><br/>支援 read 操作；查詢參數：未定義。</div>
      </div>
      <br/>
      <div class="row">
        <div class="col-lg-7"><span class="lead">Search Parameters</span>
          <table class="table table-striped table-bordered">
            <thead><tr><th>遵從度</th><th>參數</th><th>類型</th><th>範例</th></tr></thead>
            <tbody><tr><td colspan="4">此 Resource 未定義查詢參數。</td></tr></tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
</div>
<div class="panel panel-default">
  <div class="panel-heading">
    <h4 id="DocumentReference-5" class="panel-title"><span style="float: right;">預期的遵從度：必須（SHALL）</span>DocumentReference</h4>
  </div>
  <div class="panel-body">
    <div class="container"><div class="row">
      <div class="col-lg-3"><span class="lead">Core FHIR Resource</span><br/><a href="http://hl7.org/fhir/R4/documentreference.html">DocumentReference</a></div>
      <div class="col-lg-4"><span class="lead">支援的Profiles</span><br/><a href="StructureDefinition-DocumentReference-twss-base.html">共用公文-DocumentReference TWSS Base</a></div>
      <div class="col-lg-5"><span class="lead">能力摘要</span><br/>支援 create、read、update 操作；查詢參數：_id、patient、type、date。</div>
    </div></div>
  </div>
</div>
<div class="panel panel-default">
  <div class="panel-heading">
    <h4 id="Provenance-18" class="panel-title"><span style="float: right;">預期的遵從度：必須（SHALL）</span>Provenance</h4>
  </div>
  <div class="panel-body">
    <div class="container">
      <div class="row">
        <div class="col-lg-3"><span class="lead">Core FHIR Resource</span><br/><a href="http://hl7.org/fhir/R4/provenance.html">Provenance</a></div>
        <div class="col-lg-4"><span class="lead">支援的參照政策（Reference policy）</span><br/><code>resolves</code><br/><br/><span class="lead">支援的Profiles</span><br/><a href="StructureDefinition-Provenance-twss-base.html">資料建立與修改歷程-Provenance TWSS Base</a></div>
        <div class="col-lg-5"><span class="lead">能力摘要</span><br/>支援 create, read, vread, update 操作；查詢參數：_id, target, recorded, agent。</div>
      </div>
      <br/>
      <div class="row">
        <div class="col-lg-7"><span class="lead">Search Parameters</span>
          <table class="table table-striped table-bordered">
            <thead><tr><th>遵從度</th><th>參數</th><th>類型</th><th>範例</th></tr></thead>
            <tbody>
              <tr><td>必須（SHALL）</td><td>_id</td><td>token</td><td><code>GET [base]/Provenance/[id]</code></td></tr>
              <tr><td>必須（SHALL）</td><td>target</td><td>reference</td><td><code>GET [base]/Provenance?target=[value]</code></td></tr>
              <tr><td>必須（SHALL）</td><td>recorded</td><td>date</td><td><code>GET [base]/Provenance?recorded=[value]</code></td></tr>
              <tr><td>必須（SHALL）</td><td>agent</td><td>reference</td><td><code>GET [base]/Provenance?agent=[value]</code></td></tr>
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
</div>
</div>
"""

* rest.resource[+].type = #CarePlan
* rest.resource[=].profile = "https://sfaa.gov.tw/base/StructureDefinition/CarePlan-twss-base"
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #create
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #update
* rest.resource[=].searchParam[0].name = "_id"
* rest.resource[=].searchParam[=].definition = "https://sfaa.gov.tw/base/SearchParameter/CarePlan-id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[+].name = "patient"
* rest.resource[=].searchParam[=].definition = "https://sfaa.gov.tw/base/SearchParameter/CarePlan-patient"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[+].name = "status"
* rest.resource[=].searchParam[=].definition = "https://sfaa.gov.tw/base/SearchParameter/CarePlan-status"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[+].type = #QuestionnaireResponse
* rest.resource[=].profile = "https://sfaa.gov.tw/base/StructureDefinition/QuestionnaireResponse-twss-base"
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #create
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #update
* rest.resource[=].searchParam[0].name = "_id"
* rest.resource[=].searchParam[=].definition = "https://sfaa.gov.tw/base/SearchParameter/QuestionnaireResponse-id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[+].name = "patient"
* rest.resource[=].searchParam[=].definition = "https://sfaa.gov.tw/base/SearchParameter/QuestionnaireResponse-patient"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[+].name = "status"
* rest.resource[=].searchParam[=].definition = "https://sfaa.gov.tw/base/SearchParameter/QuestionnaireResponse-status"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[+].name = "questionnaire"
* rest.resource[=].searchParam[=].definition = "https://sfaa.gov.tw/base/SearchParameter/QuestionnaireResponse-questionnaire"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[+].name = "authored"
* rest.resource[=].searchParam[=].definition = "https://sfaa.gov.tw/base/SearchParameter/QuestionnaireResponse-authored"
* rest.resource[=].searchParam[=].type = #date

* rest.resource[+].type = #Questionnaire
* rest.resource[=].profile = "https://sfaa.gov.tw/base/StructureDefinition/Questionnaire-twss-base"
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #read

* rest.resource[+].type = #DocumentReference
* rest.resource[=].profile = "https://sfaa.gov.tw/base/StructureDefinition/DocumentReference-twss-base"
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #create
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #update
* rest.resource[=].referencePolicy = #resolves
* rest.resource[=].searchParam[0].name = "_id"
* rest.resource[=].searchParam[=].definition = "https://sfaa.gov.tw/base/SearchParameter/DocumentReference-id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[+].name = "patient"
* rest.resource[=].searchParam[=].definition = "https://sfaa.gov.tw/base/SearchParameter/DocumentReference-patient"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[+].name = "type"
* rest.resource[=].searchParam[=].definition = "https://sfaa.gov.tw/base/SearchParameter/DocumentReference-type"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[+].name = "date"
* rest.resource[=].searchParam[=].definition = "https://sfaa.gov.tw/base/SearchParameter/DocumentReference-date"
* rest.resource[=].searchParam[=].type = #date

* rest.resource[+].type = #Location
* rest.resource[=].profile = "https://sfaa.gov.tw/base/StructureDefinition/Location-twss-base"
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #create
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #update
* rest.resource[=].referencePolicy = #resolves
* rest.resource[=].searchParam[0].name = "_id"
* rest.resource[=].searchParam[=].definition = "https://sfaa.gov.tw/base/SearchParameter/Location-id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[+].name = "name"
* rest.resource[=].searchParam[=].definition = "https://sfaa.gov.tw/base/SearchParameter/Location-name"
* rest.resource[=].searchParam[=].type = #string

