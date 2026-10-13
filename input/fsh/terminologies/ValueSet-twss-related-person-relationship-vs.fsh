ValueSet: TWSSRelatedPersonRelationshipVS
Id: twss-related-person-relationship-vs
Title: "TWSS-關係人類型值集"
Description: "關係人與個案的關係類型。可精準對應者使用 FHIR R4 關係人關係標準代碼；其餘使用 TWSS 關係人類型代碼。"
* ^version = "0.0.1"
* ^experimental = false
* include codes from valueset http://hl7.org/fhir/ValueSet/relatedperson-relationshiptype
* TWSSRelatedPersonRelationship#fosterFamily "寄養家庭"
* TWSSRelatedPersonRelationship#kinshipFamily "親屬家庭"
* TWSSRelatedPersonRelationship#parentPartner "父或母之同居人"
* TWSSRelatedPersonRelationship#classmate "同學"
* TWSSRelatedPersonRelationship#homeroomTeacher "導師"
* TWSSRelatedPersonRelationship#otherTeacher "其他學校教師"
* TWSSRelatedPersonRelationship#cramSchoolTeacher "課後輔導或補習班教師"
* TWSSRelatedPersonRelationship#guidanceTeacher "輔導教師"
* TWSSRelatedPersonRelationship#childcareWorker "托育人員"
* TWSSRelatedPersonRelationship#localGovernment "縣市政府"
* TWSSRelatedPersonRelationship#electedRep "民意代表"
* TWSSRelatedPersonRelationship#other "其他"
* TWSSRelatedPersonRelationship#careAttendant "照顧服務員"
