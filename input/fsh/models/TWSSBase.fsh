Logical: TWSSBaseModel
Id: TWSSBaseModel
Title: "社家署基礎資料模型"
Description: """
社家署基礎資料模型，定義跨業務情境共通使用的基礎資料欄位，並以 mappings 對應至本 IG 的 FHIR profiles。
"""
* ^version = "0.0.1"
* . 1..1


* caseBasicInfo 0..* BackboneElement "個案基本資訊" "個案基本資訊"
* caseBasicInfo.address 0..* Address "地址" "地址"
* caseBasicInfo.country 0..1 code "國家" "個案地址所屬國家。"
* caseBasicInfo.district 0..1 string "縣市" "縣市"
* caseBasicInfo.city 0..1 string "鄉鎮市區" "鄉鎮市區"
* caseBasicInfo.village 0..1 string "村里" "村里"
* caseBasicInfo.neighborhood 0..1 string "鄰" "鄰"
* caseBasicInfo.neighborhood ^definition = "個案地址所屬之鄰別。"
* caseBasicInfo.postalCode 0..1 string "郵遞區號" "郵遞區號"
* caseBasicInfo.birthDate 0..1 date "生日" "生日"
* caseBasicInfo.age 0..1 Age "年齡" "年齡"
* caseBasicInfo.nationality 0..1 CodeableConcept "國籍" "國籍"
* caseBasicInfo.isBirthDateUnknown 0..1 boolean "出生日期不明註記" "出生日期不明註記"
* caseBasicInfo.ethnicGroup 0..* CodeableConcept "族群身分" "族群身分"
* caseBasicInfo.aborigineTribe 0..1 CodeableConcept "原住民族別" "原住民族別"
* caseBasicInfo.aborigineLanguage 0..1 code "原住民語言" "原住民語言"
* caseBasicInfo.primaryLanguage 0..1 code "主要語言" "個案主要使用的語言。"
* caseBasicInfo.religion 0..1 CodeableConcept "宗教信仰" "宗教信仰"
* caseBasicInfo.gender 0..1 code "性別" "性別"
* caseBasicInfo.identifier 1..* Identifier "身份識別碼" "身份識別碼"
* caseBasicInfo.maritalStatus 0..1 CodeableConcept "婚姻狀態" "婚姻狀態"
* caseBasicInfo.name 0..1 HumanName "姓名" "姓名"
* caseBasicInfo.telecom 0..* ContactPoint "聯絡方式" "聯絡方式"
* caseBasicInfo.familyStructure 0..1 CodeableConcept "家庭結構" "家庭結構"
* caseBasicInfo.childrenStatus 0..1 CodeableConcept "子女狀態" "子女狀態"
* caseBasicInfo.childrenCount 0..1 integer "子女數量" "子女數量"
* caseBasicInfo.familyMonthlyIncome 0..1 decimal "家庭月收入" "家庭月收入"
* caseBasicInfo.specialEducationType 0..1 CodeableConcept "特殊教育類型" "特殊教育類型"
* caseBasicInfo.bodyMeasurement 0..1 BackboneElement "身體量測" "個案身體量測的群組。"
* caseBasicInfo.bodyMeasurement.correctedVisionLeft 0..1 Quantity "矯正左" "左眼矯正視力。"
* caseBasicInfo.bodyMeasurement.visionLeft 0..1 decimal "視力左" "左眼未矯正視力。"
* caseBasicInfo.bodyMeasurement.correctedVisionRight 0..1 Quantity "矯正右" "右眼矯正視力。"
* caseBasicInfo.bodyMeasurement.visionRight 0..1 decimal "視力右" "右眼未矯正視力。"
* caseBasicInfo.bodyMeasurement.weight 0..1 decimal "體重" "體重。"
* caseBasicInfo.bodyMeasurement.height 0..1 decimal "身高" "身高。"

* relatedPersonBasicInfo 0..* BackboneElement "個案關係人基本資訊" "個案關係人基本資訊"
* relatedPersonBasicInfo.relationAddress 0..* Address "關係人地址" "關係人地址"
* relatedPersonBasicInfo.relationDistrict 0..1 string "關係人縣市" "關係人地址所屬縣市。"
* relatedPersonBasicInfo.relationCity 0..1 string "關係人鄉鎮市區" "關係人地址所屬鄉鎮市區。"
* relatedPersonBasicInfo.relationVillage 0..1 string "關係人村里" "關係人地址所屬村里。"
* relatedPersonBasicInfo.relationNeighborhood 0..1 string "關係人鄰" "關係人地址所屬鄰別。"
* relatedPersonBasicInfo.relationPostalCode 0..1 string "關係人郵遞區號" "關係人地址郵遞區號。"
* relatedPersonBasicInfo.relationBirthDate 0..1 date "關係人出生日期" "關係人出生日期"
* relatedPersonBasicInfo.relationNationality 0..1 CodeableConcept "關係人國籍" "關係人國籍"
* relatedPersonBasicInfo.relationAge 0..1 Age "關係人年齡" "關係人年齡"
* relatedPersonBasicInfo.relationEthnicGroup 0..* CodeableConcept "關係人族群身分" "關係人族群身分"
* relatedPersonBasicInfo.relationGender 0..1 code "關係人性別" "關係人性別"
* relatedPersonBasicInfo.relationIdentity 0..* Identifier "關係人身分識別碼" "關係人身分識別碼。"
* relatedPersonBasicInfo.relationMaritalStatus 0..1 CodeableConcept "關係人婚姻狀態" "關係人婚姻狀態"
* relatedPersonBasicInfo.relationReligion 0..1 CodeableConcept "關係人宗教信仰" "關係人宗教信仰"
* relatedPersonBasicInfo.relationOccupation 0..1 CodeableConcept "關係人職業" "關係人職業"
* relatedPersonBasicInfo.relationName 0..1 HumanName "關係人姓名" "關係人姓名"
* relatedPersonBasicInfo.isRelationIdentityUnknown 0..1 boolean "關係人身份證字號不明註記" "關係人身份證字號不明註記"
* relatedPersonBasicInfo.relationship 0..* CodeableConcept "與個案關係" "關係人與個案之間的關係。"
* relatedPersonBasicInfo.relationTelCom 0..* ContactPoint "關係人聯絡方式" "關係人聯絡方式。"
* relatedPersonBasicInfo.helpNameTitle 0..1 string "通報者職稱" "通報者職稱。"
* relatedPersonBasicInfo.helperTelcom 0..* string "求助/轉介者聯絡手機" "求助或轉介者聯絡手機。"
* relatedPersonBasicInfo.isCohabiting 0..1 boolean "是否同住" "關係人是否與個案同住。"
* relatedPersonBasicInfo.isForeignSpouse 0..1 boolean "是否為外籍配偶" "關係人是否為外籍配偶。"
* relatedPersonBasicInfo.relationEducationLevel 0..1 CodeableConcept "關係人教育程度" "關係人教育程度"

* serviceProviderBasicInfo 0..* BackboneElement "個案服務人基本資訊" "個案服務人基本資訊"
* serviceProviderBasicInfo.practitionAddress 0..* Address "服務人地址" "服務人地址。"
* serviceProviderBasicInfo.practitionDistrict 0..1 string "服務人縣市" "服務人地址所屬縣市。"
* serviceProviderBasicInfo.practitionCity 0..1 string "服務人鄉鎮市區" "服務人地址所屬鄉鎮市區。"
* serviceProviderBasicInfo.practitionVillage 0..1 string "服務人村里" "服務人地址所屬村里。"
* serviceProviderBasicInfo.practitionNeighborhood 0..1 string "服務人鄰" "服務人地址所屬鄰別。"
* serviceProviderBasicInfo.practitionPostalCode 0..1 string "服務人郵遞區號" "服務人地址郵遞區號。"
* serviceProviderBasicInfo.practitionBirthDate 0..1 date "服務人出生日期" "服務人出生日期。"
* serviceProviderBasicInfo.practitionName 0..1 HumanName "服務人姓名" "服務人姓名。"
* serviceProviderBasicInfo.practitionGender 0..1 code "服務人性別" "服務人性別。"
* serviceProviderBasicInfo.practitionIdentity 1..* Identifier "服務人身份識別碼" "服務人身份識別碼。"
* serviceProviderBasicInfo.practitionNumber 0..* Identifier "服務人編號" "服務人編號。"
* serviceProviderBasicInfo.practitionTelecom 0..* ContactPoint "服務人聯絡方式" "服務人聯絡方式。"
* serviceProviderBasicInfo.practitionNationality 0..1 CodeableConcept "服務人國籍" "服務人國籍。"
* serviceProviderBasicInfo.practitionEthnicGroup 0..* CodeableConcept "服務人族群身分" "服務人族群身分。"
* serviceProviderBasicInfo.practitionAborigineTribe 0..1 CodeableConcept "服務人原住民族別" "服務人原住民族別。"
* serviceProviderBasicInfo.healthCheckDate 0..1 date "健康檢查日期" "個案服務人的健康檢查日期。"
* serviceProviderBasicInfo.dutyVerifyDate 0..1 date "服務人到職日期" "服務人到職日期。"
* serviceProviderBasicInfo.quitDate 0..1 date "服務人離職日期" "服務人離職日期。"
* serviceProviderBasicInfo.isRelativeNanny 0..1 boolean "是否為親屬保母" "是否為親屬保母。"
* serviceProviderBasicInfo.practitionSalary 0..1 decimal "服務人薪資" "服務人薪資。"
* serviceProviderBasicInfo.practitionEnrollmentYear 0..1 integer "服務人入學年度" "服務人入學年度。"
* serviceProviderBasicInfo.practitionGraduationSchoolName 0..* string "服務人就讀學校名稱" "服務人就讀學校名稱。"
* serviceProviderBasicInfo.practitionEducationLevel 0..1 CodeableConcept "服務人教育程度" "服務人教育程度。"
* serviceProviderBasicInfo.practitionMajor 0..1 string "服務人畢業科系" "服務人畢業科系。"
* serviceProviderBasicInfo.isRelatedMajorGraduate 0..1 boolean "是否為相關科系畢業" "是否為相關科系畢業。"
* serviceProviderBasicInfo.isPractitionGraduated 0..1 boolean "服務人是否畢業" "服務人是否畢業。"
* serviceProviderBasicInfo.practitionGraduationYear 0..1 integer "服務人畢業年度" "服務人畢業年度。"
* serviceProviderBasicInfo.trainingStartDate 0..1 date "受訓起始日期" "受訓起始日期。"
* serviceProviderBasicInfo.trainingEndDate 0..1 date "受訓結束日期" "受訓結束日期。"
* serviceProviderBasicInfo.certificateNumber 0..* Identifier "證書字號" "證書字號"
* serviceProviderBasicInfo.practiceRegistrationNumber 0..* Identifier "執業登記證號" "執業登記證號"
* serviceProviderBasicInfo.licenseName 0..* CodeableConcept "服務人證照名稱" "服務人證照名稱"
* serviceProviderBasicInfo.isSocialWelfareRelatedEducation 0..1 boolean "是否為社福相關學歷" "是否為社福相關學歷。"
* serviceProviderBasicInfo.childcareAddress 0..* Address "托育地址" "托育地址"
* serviceProviderBasicInfo.jobTitle 0..* CodeableConcept "職稱" "職稱"
* serviceProviderBasicInfo.trainingCourseName 0..* string "受訓課程名稱" "受訓課程名稱"
* serviceProviderBasicInfo.trainingCourseHours 0..* Quantity "受訓課程時數" "受訓課程時數"
* serviceProviderBasicInfo.trainingCourseType 0..* CodeableConcept "受訓課程類型" "受訓課程類型"

* serviceProviderProfessionalInfo 0..* BackboneElement "個案服務人專業" "個案服務人專業"
* serviceProviderProfessionalInfo.certificateNumber 0..* Identifier "證書字號" "證書字號"
* serviceProviderProfessionalInfo.practiceRegistrationNumber 0..* Identifier "執業登記證號" "執業登記證號"
* serviceProviderProfessionalInfo.licenseName 0..* CodeableConcept "服務人證照名稱" "服務人證照名稱"
* serviceProviderProfessionalInfo.isSocialWelfareRelatedEducation 0..1 boolean "是否為社福相關學歷" "是否為社福相關學歷。"
* serviceProviderProfessionalInfo.childcareAddress 0..* Address "托育地址" "托育地址"
* serviceProviderProfessionalInfo.jobTitle 0..* CodeableConcept "職稱" "職稱"
* serviceProviderProfessionalInfo.trainingCourseName 0..* string "受訓課程名稱" "受訓課程名稱"
* serviceProviderProfessionalInfo.trainingCourseHours 0..* Quantity "受訓課程時數" "受訓課程時數"
* serviceProviderProfessionalInfo.trainingCourseType 0..* CodeableConcept "受訓課程類型" "受訓課程類型"

* organizationBasicInfo 0..* BackboneElement "機構基本資訊" "機構基本資訊"
* organizationBasicInfo.organizationAddress 0..* Address "機構地址" "機構地址。"
* organizationBasicInfo.organizationDistrict 0..1 string "機構縣市" "機構地址所屬縣市。"
* organizationBasicInfo.organizationCity 0..1 string "機構鄉鎮市區" "機構地址所屬鄉鎮市區。"
* organizationBasicInfo.organizationVillage 0..1 string "機構村里" "機構地址所屬村里。"
* organizationBasicInfo.organizationNeighborhood 0..1 string "機構鄰" "機構地址所屬鄰別。"
* organizationBasicInfo.organizationPostalCode 0..1 string "機構郵遞區號" "機構地址郵遞區號。"
* organizationBasicInfo.organizationTelecom 0..* ContactPoint "機構聯絡方式" "機構聯絡方式。"
* organizationBasicInfo.organizationName 0..1 string "機構名稱" "機構名稱。"
* organizationBasicInfo.organizationCategory 0..1 CodeableConcept "機構類別" "機構類別。"
* organizationBasicInfo.organizationCode 1..1 Identifier "機構代碼" "機構代碼"
* organizationBasicInfo.organizationLicenseNumber 0..1 Identifier "機構許可證字號" "機構許可證字號"
* organizationBasicInfo.organizationEstablishmentType 0..1 CodeableConcept "機構設立別" "機構設立別"
* organizationBasicInfo.organizationContactPerson 0..1 HumanName "機構聯絡人" "機構聯絡人"
* organizationBasicInfo.organizationLongitude 0..1 decimal "機構地址經度" "機構地址經度"
* organizationBasicInfo.organizationLatitude 0..1 decimal "機構地址緯度" "機構地址緯度"
* organizationBasicInfo.modifiedUnitCode 1..1 Identifier "修改單位代碼" "修改資料的單位代碼"
* organizationBasicInfo.createdUnitCode 1..1 Identifier "建立單位代碼" "建立資料的單位代碼"
* organizationBasicInfo.courseProviderUnit 0..1 string "開課單位" "服務人受訓課程的開課單位。"
* organizationBasicInfo.organizationCapacity 0..* BackboneElement "機構收容量能" "機構收容量能的群組。"
* organizationBasicInfo.organizationCapacity.admissionCapacity 0..1 integer "可收容人數" "機構可收容的人數。"
* organizationBasicInfo.organizationCapacity.serviceableBeds 0..1 integer "可服務床位" "機構可提供服務的床位數。"
* organizationBasicInfo.organizationCapacity.isolationBeds 0..1 integer "隔離專用床位" "機構隔離專用床位數。"
* organizationBasicInfo.organizationUsableArea 0..* BackboneElement "機構可使用面積" "機構可使用面積的群組。"
* organizationBasicInfo.organizationUsableArea.totalArea 0..1 Quantity "總面積" "機構總面積。"
* organizationBasicInfo.organizationUsableArea.indoorArea 0..1 Quantity "室內面積" "機構室內面積。"
* organizationBasicInfo.organizationUsableArea.outdoorArea 0..1 Quantity "室外面積" "機構室外面積。"
* organizationBasicInfo.statutoryStaffing 0..* BackboneElement "法定工作人員配置" "依人員類別所需的法定人力。"
* organizationBasicInfo.statutoryStaffing.staffCategory 1..1 string "人員類別" "法定工作人員配置所適用的人員類別。"
* organizationBasicInfo.statutoryStaffing.statutoryStaffingCount 1..1 integer "法定工作人員配置數" "該人員類別所需的法定人力。"
* organizationBasicInfo.competentAuthorityCode 0..1 string "主管機關代碼" "機構主管機關的識別碼。"
* organizationBasicInfo.competentAuthority 0..1 string "主管機關" "機構主管機關名稱。"
* organizationBasicInfo.responsibleUnitCode 1..1 Identifier "主責單位代碼" "案件主責機構的識別碼。"
* organizationBasicInfo.responsibleUnit 0..1 string "主責單位" "案件主責機構名稱。"
* organizationBasicInfo.responsibleUnitDistrict 0..1 string "主責單位縣市" "案件主責機構所在縣市。"
* organizationBasicInfo.referralUnitName 0..1 string "轉介單位" "提出轉介的機構名稱。"
* organizationBasicInfo.referralUnitDistrict 0..1 string "轉介單位縣市" "提出轉介機構所在縣市。"
* organizationBasicInfo.referredUnitName 0..1 string "受轉介單位" "接受轉介的機構名稱。"
* organizationBasicInfo.referredUnitDistrict 0..1 string "受轉介單位縣市" "接受轉介機構所在縣市。"
* organizationBasicInfo.medicalInstitutionName 0..1 string "醫療院所名稱" "醫療院所名稱"

* organizationOtherInfo 0..* BackboneElement "機構其他資訊" "機構其他資訊"
* organizationOtherInfo.organizationAuditResult 0..1 boolean "查核結果" "機構查核結果"
* organizationOtherInfo.accreditationLevel 0..1 CodeableConcept "評鑑等級" "機構評鑑結果。"
* organizationOtherInfo.penaltyLegalBasis 0..* string "裁罰法規依據" "裁罰法規依據"
* organizationOtherInfo.registrationDate 0..1 date "立案日期" "機構立案日期。"

* subsidyApplication 0..* BackboneElement "申請補助" "申請補助"
* subsidyApplication.applicationDate 0..1 date "申請日期" "申請日期"
* subsidyApplication.subsidyServiceType 0..1 code "申請補助別" "本次申請補助所屬的補助類別。"
* subsidyApplication.subsidyRatio 0..1 decimal "補助比率" "補助比率"
* subsidyApplication.approvedSubsidyAmount 0..1 decimal "核定補助金額" "核定補助金額"
* subsidyApplication.reviewOpinion 0..1 string "審核意見" "審核意見"
* subsidyApplication.nonComplianceReason 0..1 string "不符原因" "不符原因"
* subsidyApplication.reviewResult 0..1 boolean "審核結果" "審核結果"
* subsidyApplication.applicationReviewStatus 0..1 CodeableConcept "申請審核狀態" "補助申請處理中的業務狀態。"
* subsidyApplication.subsidyPayment 0..* BackboneElement "補助款項" "已取得補助的款項資料；每一筆補助款項包含其類型及金額。"
* subsidyApplication.subsidyPayment.receivedSubsidyAmount 0..1 decimal "已取得補助金額" "已取得補助金額"
* subsidyApplication.subsidyPayment.receivedSubsidyType 0..1 CodeableConcept "已取得補助類型" "已取得補助類型"
* subsidyApplication.applicationNumber 0..1 Identifier "申請案號" "補助申請的業務識別碼。"
* subsidyApplication.applicantDocumentCompletionDate 0..1 date "申請人證件備齊日" "申請人證件備齊日"
* subsidyApplication.isOnlineApplication 0..1 boolean "是否為線上申辦" "是否為線上申辦"
* subsidyApplication.reviewCheckDate 0..1 date "審核/查核日期" "審核或查核作業完成的日期。"
* subsidyApplication.applicant 0..1 string "申請人" "申請人"
* subsidyApplication.applicantBankAccount 0..1 string "申請人銀行帳戶" "申請人銀行帳戶"

* subsidyProvision 0..* BackboneElement "提供補助" "提供補助"
* subsidyProvision.subsidyServiceType 0..1 code "申請補助別" "補助給付所對應的申請補助類別。"
* subsidyProvision.applicant 0..1 string "申請人" "由被參照的補助申請取得。"
* subsidyProvision.applicantBankAccount 0..1 string "申請人銀行帳戶" "由被參照的補助申請取得。"
* subsidyProvision.subsidyDisbursementStatus 0..1 CodeableConcept "補助撥款狀況" "補助款項的撥款處理狀況。"
* subsidyProvision.subsidyMonth 0..1 integer "補助月分" "補助款項所屬月份。"
* subsidyProvision.subsidyYear 0..1 decimal "補助年度" "補助年度。"
* subsidyProvision.applicationReviewStatus 0..1 CodeableConcept "申請審核狀態" "補助申請處理中的業務狀態。"
* subsidyProvision.approvedBenefitStartDate 0..1 date "核定起領日" "審核後開始具備補助資格的日期。"
* subsidyProvision.approvedBenefitEndDate 0..1 date "核定結束日" "審核後不再具備補助資格的日期。"
* subsidyProvision.subsidyStartDate 0..1 date "補助起始日" "實際開始領取補助的日期。"
* subsidyProvision.subsidyEndDate 0..1 date "補助結束日" "實際停止領取補助的日期。"
* subsidyProvision.cancellationReason 0..1 string "註銷原因" "補助資格或補助款項的註銷原因。"
* subsidyProvision.paymentSuspensionReason 0..1 string "停發原因" "補助款項的停發原因。"

* caseReport 0..* BackboneElement "個案通報" "個案通報"
* caseReport.caseServiceType 0..1 code "個案服務別" "個案通報所屬的服務領域。"
* caseReport.referredDate 0..1 date "受轉介日期" "受轉介單位受理轉介的日期。"
* caseReport.referralAcceptanceStatus 0..1 CodeableConcept "轉介受理情形" "受轉介單位的受理決定。"



* caseReport.caseInfoType 0..1 CodeableConcept "通報類型" "通報類型"
* caseReport.reportTime 0..1 dateTime "通報時間" "個案通報建立的時間。"
* caseReport.reportingUnit 0..1 CodeableConcept "通報單位" "通報單位類別。"
* caseReport.caseSource 0..1 CodeableConcept "個案來源" "個案來源。"
* caseReport.isReferralCase 0..1 boolean "是否為轉介案件" "個案通報是否屬於轉介案件。"

* caseAssessment 0..* BackboneElement "個案服務評估" "個案服務評估"
* caseAssessment.caseServiceType 0..1 code "個案服務別" "個案服務所屬的服務領域。"
* caseAssessment.relationNumber 1..1 string "關係人編號" "關係人編號"
* caseAssessment.isPrimaryCaregiver 0..1 boolean "是否為主要照顧者" "關係人是否為個案的主要照顧者。"
* caseAssessment.isGuardian 0..1 boolean "是否為監護人" "關係人是否為個案的監護人。"
* caseAssessment.isPrimaryContact 0..1 boolean "是否為主要聯絡者" "關係人是否為個案的主要聯絡者。"
* caseAssessment.isAgent 0..1 boolean "是否為法定代理人" "關係人是否為個案的法定代理人。"
* caseAssessment.diseaseType 0..* CodeableConcept "疾病類型" "疾病類型"
* caseAssessment.assistiveDeviceName 0..1 string "輔具名稱" "輔具名稱"
* caseAssessment.assistiveDeviceUsage 0..1 boolean "輔具使用情形" "輔具使用情形"
* caseAssessment.disabilityAssessmentDate 0..1 date "身心障礙鑑定日期" "個案服務評估中的身心障礙鑑定日期。"
* caseAssessment.subsidyPayment 0..* BackboneElement "補助款項" "已取得補助的款項資料；每一筆補助款項包含其類型及金額。"
* caseAssessment.subsidyPayment.receivedSubsidyAmount 0..1 decimal "已取得補助金額" "已取得補助金額"
* caseAssessment.subsidyPayment.receivedSubsidyType 0..1 CodeableConcept "已取得補助類型" "已取得補助類型"
* caseAssessment.livingType 0..1 CodeableConcept "住所類型" "住所類型"
* caseAssessment.housingType 0..1 CodeableConcept "房屋類型" "房屋類型"
* caseAssessment.livingEnvironment 0..1 CodeableConcept "居住環境" "居住環境"
* caseAssessment.hasPrivateBedroom 0..1 CodeableConcept "是否有獨立臥房" "是否有獨立臥房"
* caseAssessment.currentLivingStatus 0..1 CodeableConcept "目前生活情形" "目前生活情形"
* caseAssessment.livingStatus 0..1 CodeableConcept "同住狀況" "同住狀況"
* caseAssessment.assessmentDate 0..1 date "評估日期" "實際進行個案服務評估的日期。"
* caseAssessment.healthStatusLevel 0..1 CodeableConcept "健康狀況分級" "健康狀況分級"
* caseAssessment.healthStatusOption 0..* CodeableConcept "健康狀況選項" "健康狀況選項"
* caseAssessment.hasCatastrophicIllnessCard 0..1 boolean "是否持有重大傷病卡" "是否持有重大傷病卡"
* caseAssessment.catastrophicIllnessName 0..1 string "重大傷病卡病名" "重大傷病卡病名"
* caseAssessment.newDisabilityType 0..* CodeableConcept "新制障礙類別" "個案服務評估中的新制障礙類別。"
* caseAssessment.oldDisabilityType 0..* CodeableConcept "舊制障礙類別" "個案服務評估中的舊制障礙類別。"
* caseAssessment.newDisabilityCategory 0..* CodeableConcept "新制障礙類別內容" "個案服務評估中的新制障礙類別細項。"
* caseAssessment.disabilityCause 0..* CodeableConcept "致障原因" "致障原因"
* caseAssessment.physicalDisabilityType 0..* CodeableConcept "肢體障礙類別" "肢體障礙類別"
* caseAssessment.disabilityLocation 0..1 string "障礙部位" "障礙部位"
* caseAssessment.disabilityOnsetDate 0..1 date "致障時間" "致障時間"
* caseAssessment.icf 0..* CodeableConcept "ICF編碼" "ICF編碼"
* caseAssessment.icd 0..* CodeableConcept "ICD編碼" "ICD編碼"
* caseAssessment.disabilitySeverityLevel 0..1 CodeableConcept "障礙程度等級" "個案服務評估中的障礙程度等級。"
* caseAssessment.hasDisabilityCertificate 0..1 boolean "有無身心障礙證明" "有無身心障礙證明"
* caseAssessment.certificateNotIssuedReason 0..1 CodeableConcept "未領證原因" "未領證原因"
* caseAssessment.isDisabilityCertificatePermanent 0..1 boolean "身心障礙永久有效" "身心障礙永久有效"
* caseAssessment.relationCriminalRecord 0..* CodeableConcept "關係人不良犯罪紀錄" "關係人不良犯罪紀錄"
* caseAssessment.activitiesOfDailyLiving 0..1 BackboneElement "日常生活功能(ADL)" "日常生活功能評估的群組。"
* caseAssessment.activitiesOfDailyLiving.selfCare 0..1 CodeableConcept "生活自理" "生活自理"
* caseAssessment.activitiesOfDailyLiving.mobility 0..1 CodeableConcept "肢體行動" "肢體行動"
* caseAssessment.activitiesOfDailyLiving.walkingAbility 0..1 CodeableConcept "四處走動" "四處走動"
* caseAssessment.activitiesOfDailyLiving.householdActivity 0..1 CodeableConcept "居家活動" "居家活動"
* caseAssessment.relationSubstanceAbuse 0..1 BackboneElement "關係人物質濫用" "關係人物質濫用風險評估的群組。"
* caseAssessment.relationSubstanceAbuse.usesDrugs 0..1 CodeableConcept "是否吸毒" "是否吸毒"
* caseAssessment.relationSubstanceAbuse.hasAlcoholAddiction 0..1 CodeableConcept "是否有酒癮" "是否有酒癮"
* caseAssessment.relationSubstanceAbuse.smokes 0..1 CodeableConcept "是否抽菸" "是否抽菸"
* caseAssessment.insuranceStatus 0..* CodeableConcept "保險狀況" "個案服務評估中的保險狀況。"
* caseAssessment.welfareIdentityType 0..* CodeableConcept "福利身分別" "個案服務評估中的福利身分別。"
* caseAssessment.monthlyRent 0..1 decimal "每月租金" "每月租金。"
* caseAssessment.visitTarget 0..1 CodeableConcept "訪視對象" "個案服務評估中的訪視對象。"
* caseAssessment.visitServiceMethod 0..1 CodeableConcept "訪視服務方式" "個案服務評估中的訪視服務方式。"
* caseAssessment.visitStartTime 0..1 dateTime "訪視開始時間" "個案服務評估中的訪視開始時間。"
* caseAssessment.visitEndTime 0..1 dateTime "訪視結束時間" "個案服務評估中的訪視結束時間。"
* caseAssessment.visitSummary 0..1 string "訪視摘要" "個案服務評估中的訪視摘要。"
* caseAssessment.isCaseOpened 0..1 CodeableConcept "是否開案" "評估審核後的開案處置。"
* caseAssessment.reviewOpinion 0..1 string "審核意見" "個案服務評估的審核意見。"
* caseAssessment.nonComplianceReason 0..1 string "不符原因" "個案服務評估不符條件時的原因。"
* caseAssessment.reviewResult 0..1 boolean "審核結果" "個案服務評估的審核結果。"
* caseAssessment.reviewSubmissionDate 0..1 date "送審日期" "服務評估表單送交審核的日期。"
* caseAssessment.reviewCheckDate 0..1 date "審核/查核日期" "個案服務評估審核完成的日期。"
* caseAssessment.medicationStatus 0..1 string "用藥情形" "個案服務評估中的用藥情形。"
* caseAssessment.medicalRehabilitationService 0..* code "醫療復健服務" "個案目前已取得或正在接受的醫療復健服務。"
* caseAssessment.medicalAssistance 0..* code "醫療協助" "個案目前已取得或正在接受的醫療協助。"
* caseAssessment.disabledPersonCount 0..1 integer "身障者人數" "個案服務評估中的家庭身障者人數。"
* caseAssessment.crisisEventLocation 0..1 string "危機事件事發地點" "個案服務評估中的危機事件事發地點。"
* caseAssessment.familyAssessment 0..1 BackboneElement "家庭評估" "個案服務評估中的家庭評估群組。"
* caseAssessment.familyEnvironment 0..1 integer "家庭環境" "個案服務評估中的家庭環境評分。"
* caseAssessment.externalSupport 0..1 integer "外部支持" "個案服務評估中的外部支持評分。"
* caseAssessment.crossSystemCaseNumber 0..1 Identifier "跨系統個案編號" "其他社福系統使用的個案編號。"
* caseAssessment.caseNumber 0..1 Identifier "個案編號" "本系統使用的個案編號。"
* caseAssessment.historicalCaseNumber 0..1 Identifier "歷史案號" "舊系統或舊時期使用的個案編號。"
* caseAssessment.serviceCaseStatus 0..1 CodeableConcept "服務案件狀態" "個案受理與評估流程的詳細案件狀態"
* caseAssessment.hasAttendedVocationalTraining 0..1 boolean "曾參加職業訓練" "曾參加職業訓練。"
* caseAssessment.vocationalTrainingType 0..* string "職訓別" "職訓別。"
* caseAssessment.schoolAdaptationStatus 0..1 string "學校適應狀況" "學校適應狀況。"
* caseAssessment.emotionalAndBehavioralStatus 0..1 BackboneElement "情緒與行為狀況" "情緒與行為狀況的群組。"
* caseAssessment.emotionalAndBehavioralStatus.emotionalControlAbility 0..1 CodeableConcept "情緒控制能力" "情緒控制能力。"
* caseAssessment.interpersonalInteractionLevel 0..1 BackboneElement "人際互動狀況分級" "人際互動狀況分級的群組。"
* caseAssessment.interpersonalInteractionLevel.interpersonalSocialAdaptationAssessment 0..1 CodeableConcept "人際社會適應評估" "人際社會適應評估。"
* caseAssessment.interpersonalInteractionLevel.interpersonalInteraction 0..1 CodeableConcept "人際互動" "人際互動。"
* caseAssessment.interpersonalInteractionLevel.communicationAndLanguageExpressionAbility 0..1 CodeableConcept "溝通及語言表達能力" "溝通及語言表達能力。"
* caseAssessment.interpersonalInteractionLevel.familyRelationship 0..1 CodeableConcept "家庭關係" "家庭關係。"
* caseAssessment.interpersonalInteractionLevel.schoolLifeAdaptation 0..1 CodeableConcept "學校生活適應" "學校生活適應。"
* caseAssessment.developmentalDelayType 0..1 BackboneElement "發展遲緩類別" "發展遲緩類別的群組。"
* caseAssessment.developmentalDelayType.languageCommunicationAbility 0..1 CodeableConcept "語言溝通能力" "語言溝通能力。"
* caseAssessment.developmentalDelayType.cognitiveAbility 0..1 CodeableConcept "認知能力" "認知能力。"
* caseAssessment.developmentalDelayType.socialEmotionalDevelopment 0..1 CodeableConcept "社會情緒發展" "社會情緒發展。"
* caseAssessment.developmentalDelayType.selfCare 0..1 CodeableConcept "生活自理" "生活自理。"
* caseAssessment.developmentalDelayType.grossMotor 0..1 CodeableConcept "粗動作" "粗動作。"
* caseAssessment.developmentalDelayType.fineMotor 0..1 CodeableConcept "精細動作" "精細動作。"
* caseAssessment.schoolingStatus 0..* CodeableConcept "就學現況" "就學現況。"
* caseAssessment.schoolName 0..* string "就讀學校名稱" "就讀學校名稱。"
* caseAssessment.gradeLevel 0..1 string "年級別" "年級別。"
* caseAssessment.major 0..1 string "就讀科系" "就讀科系。"
* caseAssessment.isGraduated 0..1 boolean "是否畢業" "個案服務評估中的是否畢業。"
* caseAssessment.educationLevel 0..1 CodeableConcept "教育程度" "教育程度。"
* caseAssessment.employmentStatus 0..1 CodeableConcept "就業現況" "就業現況。"
* caseAssessment.unemploymentReason 0..* CodeableConcept "未就業原因" "未就業原因。"
* caseAssessment.previousJob 0..1 string "曾任職" "曾任職。"
* caseAssessment.currentJob 0..1 string "現職" "現職。"
* caseAssessment.assessmentResult 0..1 string "評估結果" "評估結果。"
* caseAssessment.caseType 0..1 CodeableConcept "案件類型" "案件類型。"
* caseAssessment.psychologicalCounselingAndAssessment 0..1 string "心理諮商與評估" "心理諮商與評估。"
* caseAssessment.isPlaced 0..1 boolean "是否安置" "是否安置。"
* caseAssessment.cmsLevel 0..1 string "CMS等級" "CMS等級。"
* caseAssessment.placementStatus 0..1 string "安置狀況" "安置狀況。"
* caseAssessment.isPlacementEnded 0..1 CodeableConcept "是否結束安置" "是否結束安置。"

* caseService 0..* BackboneElement "個案服務" "個案服務"
* caseService.caseServiceType 0..1 code "個案服務別" "個案服務所屬的服務領域。"
* caseService.diseaseType 0..* CodeableConcept "疾病類型" "疾病類型"
* caseService.assistiveDeviceName 0..1 string "輔具名稱" "輔具名稱"
* caseService.caseType 0..1 CodeableConcept "案件類型" "案件類型。"
* caseService.psychologicalCounselingAndAssessment 0..1 string "心理諮商與評估" "心理諮商與評估。"
* caseService.medicalRehabilitationService 0..* code "醫療復健服務" "預計提供的醫療復健服務。"
* caseService.medicalAssistance 0..* code "醫療協助" "預計提供的醫療協助。"
* caseService.isPlaced 0..1 boolean "是否安置" "是否安置。"
* caseService.cmsLevel 0..1 string "CMS等級" "CMS等級。"
* caseService.placementStatus 0..1 string "安置狀況" "安置狀況。"
* caseService.assistiveDeviceUsage 0..1 boolean "輔具使用情形" "輔具使用情形"
* caseService.disabilityAssessmentDate 0..1 date "身心障礙鑑定日期" "個案服務中的身心障礙鑑定日期。"
* caseService.cancellationReason 0..1 string "註銷原因" "個案服務中身心障礙資格或證明被註銷的原因。"
* caseService.crossSystemCaseNumber 0..1 Identifier "跨系統個案編號" "其他社福系統使用的個案編號。"
* caseService.caseNumber 0..1 Identifier "個案編號" "本系統使用的個案編號。"
* caseService.historicalCaseNumber 0..1 Identifier "歷史案號" "舊系統或舊時期使用的個案編號。"
* caseService.caseOpeningDate 0..1 date "開案日期" "案件正式開案日期。"
* caseService.providedFinancialSubsidy 0..* CodeableConcept "提供經濟補助" "提供經濟補助"
* caseService.providedWelfareService 0..* CodeableConcept "提供福利服務" "提供福利服務"
* caseService.providedEmploymentService 0..* CodeableConcept "提供就業服務" "提供就業服務"
* caseService.rulingDate 0..1 date "裁定日期" "裁定日期"
* caseService.interviewDate 0..1 date "會談日期" "會談日期"
* caseService.placementType 0..1 CodeableConcept "安置類型" "安置類型"
* caseService.placementStartDate 0..1 date "安置起始日期" "安置起始日期"
* caseService.placementEndDate 0..1 date "安置結束日期" "安置結束日期"
* caseService.serviceDate 0..1 date "服務日期" "服務日期"
* caseService.followUpDate 0..1 date "追蹤日期" "追蹤日期"
* caseService.meetingLocation 0..1 string "會議地點" "會議地點"
* caseService.meetingDate 0..1 date "會議日期紀錄" "會議日期紀錄"
* caseService.serviceCaseStatus 0..1 CodeableConcept "服務案件狀態" "個案正式服務期間的服務案件狀態。"

* caseReferral 0..* BackboneElement "個案轉介" "個案轉介"
* caseReferral.referralDate 0..1 date "轉介日期" "提出個案轉介請求的日期。"
* caseReferral.referralReason 0..1 string "轉介原因" "提出個案轉介請求的理由。"
* caseReferral.isReferred 0..1 boolean "是否轉介" "結案或處遇時是否決定向外轉介。"
* caseReferral.referralProcessingStatus 0..1 CodeableConcept "轉介處理情形" "受轉介單位後續處理的狀態"
* caseReferral.transitionDate 0..1 date "轉銜日期" "A系統開始啟動轉銜的日期。"
* caseReferral.subsidyServiceType 0..1 code "申請補助別" "轉介申請所涉補助類別。"
* caseReferral.caseServiceType 0..1 code "個案服務別" "轉介申請所涉服務領域。"

* caseClosure 0..* BackboneElement "個案結案" "個案結案"
* caseClosure.caseClosingDate 0..1 date "結案日期" "案件結案的日期。"
* caseClosure.caseClosingReason 0..1 CodeableConcept "結案原因" "案件結案的原因。"
* caseClosure.caseServiceType 0..1 code "個案服務別" "結案案件所屬的服務領域。"
* caseClosure.isPlacementEnded 0..1 CodeableConcept "是否結束安置" "是否結束安置。"
* caseClosure.placementNoFollowUpReason 0..1 CodeableConcept "安置未轉後追原因" "安置未轉後追原因。"

* officialDocument 0..* BackboneElement "共用公文" "共用公文"
* officialDocument.officialDocumentNumber 0..1 Identifier "公文文號" "公文文號"
* officialDocument.officialDocumentDate 0..1 date "公文日期" "公文日期"
* officialDocument.officialDocumentType 0..1 CodeableConcept "公文類型" "公文類型"


Mapping: TWSSBaseToServiceRequest
Id: twss-base-to-servicerequest
Title: "Mapping to TWSSBase ServiceRequest"
Source: TWSSBaseModel
Target: "https://sfaa.gov.tw/base/StructureDefinition/ServiceRequest-case-report-twss-base"

* caseReport.reportTime -> "ServiceRequest.authoredOn"
* caseReport.caseInfoType -> "ServiceRequest.extension[reportType].valueCodeableConcept"
* caseReport.caseServiceType -> "ServiceRequest.orderDetail[caseServiceType]"
* caseAssessment.caseServiceType -> "ServiceRequest.orderDetail[caseServiceType]"
* caseReport.reportingUnit -> "ServiceRequest.extension[reportingUnit].valueCodeableConcept"
* caseReport.caseSource -> "ServiceRequest.extension[caseSource].valueCodeableConcept"
* caseReport.isReferralCase -> "ServiceRequest.extension[isReferralCase].valueBoolean"

Mapping: TWSSBaseToPatient
Id: twss-base-to-patient
Title: "Mapping to TWSSBase Patient"
Source: TWSSBaseModel
Target: "https://sfaa.gov.tw/base/StructureDefinition/Patient-twss-base"

* caseBasicInfo.name -> "Patient.name"
* caseBasicInfo.identifier -> "Patient.identifier"
* caseAssessment.crossSystemCaseNumber -> "Patient.identifier[caseNumber].where(system = '<來源系統 URI>').value"
* caseAssessment.caseNumber -> "Patient.identifier[caseNumber].where(system = '<本系統 URI>').value"
* caseAssessment.historicalCaseNumber -> "Patient.identifier[caseNumber].where(use = 'old').value"
* caseService.crossSystemCaseNumber -> "Patient.identifier[caseNumber].where(system = '<來源系統 URI>').value"
* caseService.caseNumber -> "Patient.identifier[caseNumber].where(system = '<本系統 URI>').value"
* caseService.historicalCaseNumber -> "Patient.identifier[caseNumber].where(use = 'old').value"
* caseBasicInfo.gender -> "Patient.gender"
* caseBasicInfo.birthDate -> "Patient.birthDate"
* caseBasicInfo.age -> "Patient.extension[age].extension[age].valueAge"
* caseBasicInfo.country -> "Patient.address.country"
* caseBasicInfo.district -> "Patient.address.district"
* caseBasicInfo.city -> "Patient.address.city"
* caseBasicInfo.address -> "Patient.address.text"
* caseBasicInfo.village -> "Patient.address.extension[village]"
* caseBasicInfo.neighborhood -> "Patient.address.extension[neighborhood]"
* caseBasicInfo.postalCode -> "Patient.address.postalCode"
* caseBasicInfo.nationality -> "Patient.extension[nationality]"
* caseBasicInfo.ethnicGroup -> "Patient.extension[ethnicGroup]"
* caseBasicInfo.aborigineLanguage -> "Patient.communication.where(preferred = false).language.coding.code"
* caseBasicInfo.aborigineTribe -> "Patient.extension[AborigineTribe].valueCodeableConcept"
* caseBasicInfo.primaryLanguage -> "Patient.communication.where(preferred = true).language.coding.code"
* caseBasicInfo.religion -> "Patient.extension[religion].valueCodeableConcept"
* caseBasicInfo.maritalStatus -> "Patient.maritalStatus"
* caseBasicInfo.telecom -> "Patient.telecom"

Mapping: TWSSBaseToAddress
Id: twss-base-to-address
Title: "Mapping to TWSSBase Address"
Source: TWSSBaseModel
Target: "https://sfaa.gov.tw/base/StructureDefinition/Address-twss-base"

* caseBasicInfo.district -> "Address.district"
* caseBasicInfo.country -> "Address.country"
* caseBasicInfo.city -> "Address.city"
* caseBasicInfo.address -> "Address.text"
* caseBasicInfo.village -> "Address.extension.where(url = 'https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/tw-village')"
* caseBasicInfo.neighborhood -> "Address.extension.where(url = 'https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/tw-neighborhood')"
* caseBasicInfo.postalCode -> "Address.postalCode"
* relatedPersonBasicInfo.relationAddress -> "Address.text"
* relatedPersonBasicInfo.relationDistrict -> "Address.district"
* relatedPersonBasicInfo.relationCity -> "Address.city"
* relatedPersonBasicInfo.relationVillage -> "Address.extension[village]"
* relatedPersonBasicInfo.relationNeighborhood -> "Address.extension[neighborhood]"
* relatedPersonBasicInfo.relationPostalCode -> "Address.postalCode"
* organizationBasicInfo.organizationDistrict -> "Address.district"
* organizationBasicInfo.organizationCity -> "Address.city"
* organizationBasicInfo.organizationAddress -> "Address.text"
* organizationBasicInfo.organizationVillage -> "Address.extension[village]"
* organizationBasicInfo.organizationNeighborhood -> "Address.extension[neighborhood]"
* organizationBasicInfo.organizationPostalCode -> "Address.postalCode"
* serviceProviderBasicInfo.practitionAddress -> "Address.text"
* serviceProviderBasicInfo.practitionDistrict -> "Address.district"
* serviceProviderBasicInfo.practitionCity -> "Address.city"
* serviceProviderBasicInfo.practitionVillage -> "Address.extension[village]"
* serviceProviderBasicInfo.practitionNeighborhood -> "Address.extension[neighborhood]"
* serviceProviderBasicInfo.practitionPostalCode -> "Address.postalCode"

Mapping: TWSSBaseToRelatedPerson
Id: twss-base-to-relatedperson
Title: "Mapping to TWSSBase RelatedPerson"
Source: TWSSBaseModel
Target: "https://sfaa.gov.tw/base/StructureDefinition/RelatedPerson-twss-base"

* relatedPersonBasicInfo.relationName -> "RelatedPerson.name"
* relatedPersonBasicInfo.relationIdentity -> "RelatedPerson.identifier"
* caseAssessment.relationNumber -> "RelatedPerson.identifier[relationNumber]"
* relatedPersonBasicInfo.relationGender -> "RelatedPerson.gender"
* relatedPersonBasicInfo.relationBirthDate -> "RelatedPerson.birthDate"
* relatedPersonBasicInfo.relationAge -> "RelatedPerson.extension[age].extension[age].valueAge"
* relatedPersonBasicInfo.relationAddress -> "RelatedPerson.address.text"
* relatedPersonBasicInfo.relationDistrict -> "RelatedPerson.address.district"
* relatedPersonBasicInfo.relationCity -> "RelatedPerson.address.city"
* relatedPersonBasicInfo.relationVillage -> "RelatedPerson.address.extension[village]"
* relatedPersonBasicInfo.relationNeighborhood -> "RelatedPerson.address.extension[neighborhood]"
* relatedPersonBasicInfo.relationPostalCode -> "RelatedPerson.address.postalCode"
* relatedPersonBasicInfo.relationTelCom -> "RelatedPerson.telecom"
* relatedPersonBasicInfo.relationNationality -> "RelatedPerson.extension[nationality]"
* relatedPersonBasicInfo.relationEthnicGroup -> "RelatedPerson.extension[ethnicGroup]"
* relatedPersonBasicInfo.relationMaritalStatus -> "RelatedPerson.extension[maritalStatus]"
* relatedPersonBasicInfo.relationship -> "RelatedPerson.relationship"
* relatedPersonBasicInfo.relationReligion -> "RelatedPerson.extension[religion].valueCodeableConcept"

Mapping: TWSSBaseToLivingConditionQuestionnaireResponse
Id: twss-base-to-living-condition-questionnaire-response
Title: "Mapping to TWSSBase Living Condition QuestionnaireResponse"
Source: TWSSBaseModel
Target: "https://sfaa.gov.tw/base/StructureDefinition/AssessmentQuestionnaireResponse-twss-base"

* caseAssessment.livingType -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/living-condition-assessment').item.where(linkId = '1').item.where(linkId = '1.1').answer.valueCoding"
* caseAssessment.housingType -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/living-condition-assessment').item.where(linkId = '1').item.where(linkId = '1.2').answer.valueCoding"
* caseAssessment.livingEnvironment -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/living-condition-assessment').item.where(linkId = '1').item.where(linkId = '1.3').answer.valueCoding"
* caseAssessment.hasPrivateBedroom -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/living-condition-assessment').item.where(linkId = '1').item.where(linkId = '1.4').answer.valueCoding"
* caseAssessment.currentLivingStatus -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/living-condition-assessment').item.where(linkId = '1').item.where(linkId = '1.5').answer.valueCoding"
* caseAssessment.livingStatus -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/living-condition-assessment').item.where(linkId = '1').item.where(linkId = '1.6').answer.valueCoding"

Mapping: TWSSBaseToRelatedPersonRiskQuestionnaireResponse
Id: twss-base-to-related-person-risk-questionnaire-response
Title: "Mapping to TWSSBase Related Person Risk QuestionnaireResponse"
Source: TWSSBaseModel
Target: "https://sfaa.gov.tw/base/StructureDefinition/AssessmentQuestionnaireResponse-twss-base"

* caseAssessment.relationCriminalRecord -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/related-person-risk-assessment').item.where(linkId = '3').item.where(linkId = '3.2').answer.valueCoding"
* caseAssessment.relationSubstanceAbuse.usesDrugs -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/related-person-risk-assessment').item.where(linkId = '3').item.where(linkId = '3.3').item.where(linkId = '3.3.1').answer.valueCoding"
* caseAssessment.relationSubstanceAbuse.hasAlcoholAddiction -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/related-person-risk-assessment').item.where(linkId = '3').item.where(linkId = '3.3').item.where(linkId = '3.3.2').answer.valueCoding"
* caseAssessment.relationSubstanceAbuse.smokes -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/related-person-risk-assessment').item.where(linkId = '3').item.where(linkId = '3.3').item.where(linkId = '3.3.3').answer.valueCoding"

Mapping: TWSSBaseToHealthDiseaseQuestionnaireResponse
Id: twss-base-to-health-disease-questionnaire-response
Title: "Mapping to TWSSBase Health Disease QuestionnaireResponse"
Source: TWSSBaseModel
Target: "https://sfaa.gov.tw/base/StructureDefinition/AssessmentQuestionnaireResponse-twss-base"

* caseAssessment.hasCatastrophicIllnessCard -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/health-disease-status').item.where(linkId = '6.1').answer.valueBoolean"
* caseAssessment.catastrophicIllnessName -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/health-disease-status').item.where(linkId = '6.2').answer.valueString"
* caseAssessment.healthStatusLevel -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/health-disease-status').item.where(linkId = '6.3').answer.valueCoding"
* caseAssessment.healthStatusOption -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/health-disease-status').item.where(linkId = '6.4').answer.valueCoding"
* caseAssessment.diseaseType -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/health-disease-status').item.where(linkId = '6.5').answer.valueCoding"
* caseService.diseaseType -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/health-disease-status').item.where(linkId = '6.5').answer.valueCoding"
* caseAssessment.icd -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/health-disease-status').item.where(linkId = '6.6').answer.valueCoding"

Mapping: TWSSBaseToDisabilityStatusQuestionnaireResponse
Id: twss-base-to-disability-status-questionnaire-response
Title: "Mapping to TWSSBase Disability Status QuestionnaireResponse"
Source: TWSSBaseModel
Target: "https://sfaa.gov.tw/base/StructureDefinition/AssessmentQuestionnaireResponse-twss-base"

* caseAssessment.disabilityCause -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/disability-status').item.where(linkId = '7.1').item.where(linkId = '7.1.1').answer.valueCoding"
* caseAssessment.newDisabilityType -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/disability-status').item.where(linkId = '7.1').item.where(linkId = '7.1.3').item.where(linkId = '7.1.3.1').answer.valueCoding"
* caseAssessment.oldDisabilityType -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/disability-status').item.where(linkId = '7.1').item.where(linkId = '7.1.4').answer.valueCoding"
* caseAssessment.newDisabilityCategory -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/disability-status').item.where(linkId = '7.1').item.where(linkId = '7.1.3').item.where(linkId = '7.1.3.2').answer.valueCoding"
* caseAssessment.physicalDisabilityType -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/disability-status').item.where(linkId = '7.1').item.where(linkId = '7.1.2').answer.valueCoding"
* caseAssessment.disabilityOnsetDate -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/disability-status').item.where(linkId = '7.1').item.where(linkId = '7.1.7').answer.valueDate"
* caseAssessment.icf -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/disability-status').item.where(linkId = '7.1').item.where(linkId = '7.1.5').answer.valueCoding"
* caseAssessment.hasDisabilityCertificate -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/disability-status').item.where(linkId = '7.2').item.where(linkId = '7.2.1').answer.valueBoolean"
* caseAssessment.certificateNotIssuedReason -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/disability-status').item.where(linkId = '7.2').item.where(linkId = '7.2.2').answer.valueCoding"
* caseAssessment.isDisabilityCertificatePermanent -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/disability-status').item.where(linkId = '7.2').item.where(linkId = '7.2.3').answer.valueBoolean"
* caseAssessment.disabilitySeverityLevel -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/disability-status').item.where(linkId = '7.1').item.where(linkId = '7.1.6').answer.valueCoding"
* caseAssessment.disabilityAssessmentDate -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/disability-status').item.where(linkId = '7.2').item.where(linkId = '7.2.4').answer.valueDate"
* caseService.disabilityAssessmentDate -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/disability-status').item.where(linkId = '7.2').item.where(linkId = '7.2.4').answer.valueDate"

Mapping: TWSSBaseToAssessmentQuestionnaireResponse
Id: twss-base-to-assessment-questionnaire-response
Title: "Mapping to TWSSBase Assessment QuestionnaireResponse"
Source: TWSSBaseModel
Target: "https://sfaa.gov.tw/base/StructureDefinition/AssessmentQuestionnaireResponse-twss-base"

* caseAssessment.insuranceStatus -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/welfare-economic-status').item.where(linkId = '10.2').answer.valueCoding"
* caseAssessment.welfareIdentityType -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/welfare-economic-status').item.where(linkId = '10.3').answer.valueCoding"
* caseAssessment.subsidyPayment.receivedSubsidyType -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/welfare-economic-status').item.where(linkId = '10.1').item.where(linkId = '10.1.1').answer.valueCoding"
* caseAssessment.subsidyPayment.receivedSubsidyAmount -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/welfare-economic-status').item.where(linkId = '10.1').item.where(linkId = '10.1.2').answer.valueDecimal"
* subsidyApplication.subsidyPayment.receivedSubsidyType -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/welfare-economic-status').item.where(linkId = '10.1').item.where(linkId = '10.1.1').answer.valueCoding"
* subsidyApplication.subsidyPayment.receivedSubsidyAmount -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/welfare-economic-status').item.where(linkId = '10.1').item.where(linkId = '10.1.2').answer.valueDecimal"
* caseAssessment.visitTarget -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/visit-record').item.where(linkId = '11.1').answer.valueCoding"
* caseAssessment.visitServiceMethod -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/visit-record').item.where(linkId = '11.2').answer.valueCoding"
* caseAssessment.visitStartTime -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/visit-record').item.where(linkId = '11.3').answer.valueDateTime"
* caseAssessment.visitEndTime -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/visit-record').item.where(linkId = '11.4').answer.valueDateTime"
* caseAssessment.visitSummary -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/visit-record').item.where(linkId = '11.5').answer.valueString"
* caseAssessment.medicationStatus -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/health-disease-status').item.where(linkId = '6.7').answer.valueString"
* caseAssessment.disabledPersonCount -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/household-disability-count').item.where(linkId = '5').answer.valueInteger"
* caseAssessment.crisisEventLocation -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/crisis-event-location').item.where(linkId = '4').answer.valueString"
* caseAssessment.familyAssessment -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/family-assessment').item.where(linkId = '2')"
* caseAssessment.familyEnvironment -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/family-assessment').item.where(linkId = '2').item.where(linkId = '2.1').answer.valueInteger"
* caseAssessment.externalSupport -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/family-assessment').item.where(linkId = '2').item.where(linkId = '2.2').answer.valueInteger"
* caseAssessment.disabilityLocation -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/disability-status').item.where(linkId = '7.1').item.where(linkId = '7.1.2').answer.valueString"
* caseAssessment.assistiveDeviceName -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/assistive-device-status').item.where(linkId = '8').item.where(linkId = '8.1').answer.valueString"
* caseAssessment.assistiveDeviceUsage -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/assistive-device-status').item.where(linkId = '8').item.where(linkId = '8.2').answer.valueBoolean"
* caseService.assistiveDeviceName -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/assistive-device-status').item.where(linkId = '8').item.where(linkId = '8.1').answer.valueString"
* caseService.assistiveDeviceUsage -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/assistive-device-status').item.where(linkId = '8').item.where(linkId = '8.2').answer.valueBoolean"

Mapping: TWSSBaseToADLQuestionnaireResponse
Id: twss-base-to-adl-questionnaire-response
Title: "Mapping to TWSSBase ADL QuestionnaireResponse"
Source: TWSSBaseModel
Target: "https://sfaa.gov.tw/base/StructureDefinition/AssessmentQuestionnaireResponse-twss-base"

* caseAssessment.activitiesOfDailyLiving.selfCare -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/twss-adl-assessment').item.where(linkId = '9').item.where(linkId = '9.1').answer.valueCoding"
* caseAssessment.activitiesOfDailyLiving.mobility -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/twss-adl-assessment').item.where(linkId = '9').item.where(linkId = '9.2').answer.valueCoding"
* caseAssessment.activitiesOfDailyLiving.walkingAbility -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/twss-adl-assessment').item.where(linkId = '9').item.where(linkId = '9.3').answer.valueCoding"
* caseAssessment.activitiesOfDailyLiving.householdActivity -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/twss-adl-assessment').item.where(linkId = '9').item.where(linkId = '9.4').answer.valueCoding"

Mapping: TWSSBaseToPractitionerTrainingQuestionnaireResponse
Id: twss-base-to-practitioner-training-questionnaire-response
Title: "Mapping to TWSSBase Practitioner Training QuestionnaireResponse"
Source: TWSSBaseModel
Target: "https://sfaa.gov.tw/base/StructureDefinition/QuestionnaireResponse-twss-base"

* serviceProviderBasicInfo.trainingCourseName -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/practitioner-training-information').item.where(linkId = '29').item.where(linkId = '29.1').answer.valueString"
* serviceProviderBasicInfo.trainingCourseHours -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/practitioner-training-information').item.where(linkId = '29').item.where(linkId = '29.2').answer.valueQuantity"
* serviceProviderBasicInfo.trainingCourseType -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/practitioner-training-information').item.where(linkId = '29').item.where(linkId = '29.3').answer.valueCoding"
* serviceProviderProfessionalInfo.trainingCourseName -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/practitioner-training-information').item.where(linkId = '29').item.where(linkId = '29.1').answer.valueString"
* serviceProviderProfessionalInfo.trainingCourseHours -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/practitioner-training-information').item.where(linkId = '29').item.where(linkId = '29.2').answer.valueQuantity"
* serviceProviderProfessionalInfo.trainingCourseType -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/practitioner-training-information').item.where(linkId = '29').item.where(linkId = '29.3').answer.valueCoding"
* organizationBasicInfo.courseProviderUnit -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/practitioner-training-information').item.where(linkId = '29').item.where(linkId = '29.4').answer.valueString"
* serviceProviderBasicInfo.trainingStartDate -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/practitioner-training-information').item.where(linkId = '29').item.where(linkId = '29.5').answer.valueDate"
* serviceProviderBasicInfo.trainingEndDate -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/practitioner-training-information').item.where(linkId = '29').item.where(linkId = '29.6').answer.valueDate"

Mapping: TWSSBaseToCarePlan
Id: twss-base-to-careplan
Title: "Mapping to TWSSBase CarePlan"
Source: TWSSBaseModel
Target: "https://sfaa.gov.tw/base/StructureDefinition/CarePlan-twss-base"

* caseService.providedFinancialSubsidy -> "CarePlan.activity:financialSubsidy.detail.code"
* caseService.providedWelfareService -> "CarePlan.activity:welfareService.detail.code"
* caseService.providedEmploymentService -> "CarePlan.activity:employmentService.detail.code"

Mapping: TWSSBaseToCoverage
Id: twss-base-to-coverage
Title: "Mapping to TWSSBase Coverage"
Source: TWSSBaseModel
Target: "https://sfaa.gov.tw/base/StructureDefinition/Coverage-twss-base"

* subsidyProvision.subsidyYear -> "Coverage.extension[aidYear]"

Mapping: TWSSBaseToClaim
Id: twss-base-to-claim
Title: "Mapping to TWSSBase Claim"
Source: TWSSBaseModel
Target: "https://sfaa.gov.tw/base/StructureDefinition/Claim-twss-base"

* subsidyApplication.applicantDocumentCompletionDate -> "Claim.supportingInfo[documentsComplete].timingDate"
* subsidyApplication.applicationDate -> "Claim.created"
* subsidyApplication.isOnlineApplication -> "Claim.supportingInfo:applicationChannel.code"
* subsidyApplication.applicant -> "Claim.supportingInfo[applicant].valueReference"
* subsidyApplication.applicantBankAccount -> "Claim.supportingInfo[bankAccount].valueString"
* subsidyApplication.subsidyServiceType -> "Claim.item.productOrService"
* subsidyApplication.subsidyRatio -> "Claim.item.factor"
* subsidyApplication.applicationReviewStatus -> "Claim.extension[applicationReviewStatus].valueCodeableConcept"

Mapping: TWSSBaseToCondition
Id: twss-base-to-condition
Title: "Mapping to TWSSBase Condition"
Source: TWSSBaseModel
Target: "https://sfaa.gov.tw/base/StructureDefinition/Condition-twss-base"

* caseAssessment.healthStatusLevel -> "Condition.severity"
* caseAssessment.healthStatusOption -> "Condition.code.coding[health-status-option]"
* caseAssessment.catastrophicIllnessName -> "Condition.code"
* caseAssessment.icd -> "Condition.code"
* caseAssessment.diseaseType -> "Condition.code"
* caseService.diseaseType -> "Condition.code"
* caseAssessment.newDisabilityType -> "Condition.code.coding[new-disability-type]"
* caseAssessment.oldDisabilityType -> "Condition.code.coding[old-disability-type]"
* caseAssessment.newDisabilityCategory -> "Condition.code.coding[new-disability-category]"

Mapping: TWSSBaseToEpisodeOfCare
Id: twss-base-to-episodeofcare
Title: "Mapping to TWSSBase EpisodeOfCare"
Source: TWSSBaseModel
Target: "https://sfaa.gov.tw/base/StructureDefinition/EpisodeOfCare-twss-base"

* caseService.caseServiceType -> "EpisodeOfCare.type[caseServiceType]"
* caseClosure.caseServiceType -> "EpisodeOfCare.type[caseServiceType]"
* caseService.serviceCaseStatus -> "EpisodeOfCare.extension[serviceCaseStatus].valueCodeableConcept"
* caseService.caseOpeningDate -> "EpisodeOfCare.period.start"
* caseReferral.isReferred -> "EpisodeOfCare.extension[isReferredAtClosure]"
* organizationBasicInfo.responsibleUnitCode -> "EpisodeOfCare.managingOrganization"
* organizationBasicInfo.responsibleUnit -> "EpisodeOfCare.managingOrganization"
* organizationBasicInfo.responsibleUnitDistrict -> "EpisodeOfCare.managingOrganization"
* caseService.caseType -> "EpisodeOfCare.type[caseType]"


Mapping: TWSSBaseToOrganization
Id: twss-base-to-organization
Title: "Mapping to TWSSBase Organization"
Source: TWSSBaseModel
Target: "https://sfaa.gov.tw/base/StructureDefinition/Organization-twss-base"

* organizationBasicInfo.organizationDistrict -> "Organization.address.district"
* organizationBasicInfo.organizationCity -> "Organization.address.city"
* organizationBasicInfo.organizationAddress -> "Organization.address.text"
* organizationBasicInfo.organizationVillage -> "Organization.address.extension[village]"
* organizationBasicInfo.organizationNeighborhood -> "Organization.address.extension[neighborhood]"
* organizationBasicInfo.organizationPostalCode -> "Organization.address.postalCode"
* organizationBasicInfo.organizationCategory -> "Organization.type"
* organizationBasicInfo.organizationCode -> "Organization.identifier"
* organizationBasicInfo.organizationName -> "Organization.name"
* organizationBasicInfo.organizationTelecom -> "Organization.telecom"
* organizationBasicInfo.competentAuthorityCode -> "Organization.extension[competentAuthority].valueReference.identifier"
* organizationBasicInfo.competentAuthority -> "Organization.extension[competentAuthority].valueReference.display"
* organizationOtherInfo.registrationDate -> "Organization.extension:registrationDate"
* organizationBasicInfo.organizationLicenseNumber -> "Organization.identifier"
* organizationBasicInfo.organizationEstablishmentType -> "Organization.extension:establishmentType"
* organizationBasicInfo.organizationContactPerson -> "Organization.contact.name"

Mapping: TWSSBaseToMedicalInstitutionOrganization
Id: twss-base-to-medical-institution-organization
Title: "Mapping to TWSSBase Medical Institution Organization"
Source: TWSSBaseModel
Target: "https://sfaa.gov.tw/base/StructureDefinition/MedicalInstitutionOrganization-twss-base"

* organizationBasicInfo.medicalInstitutionName -> "Organization.name"

Mapping: TWSSBaseToReferralOrganization
Id: twss-base-to-referral-organization
Title: "Mapping to TWSSBase Referral Organization"
Source: TWSSBaseModel
Target: "https://sfaa.gov.tw/base/StructureDefinition/ReferralOrganization-twss-base"

* organizationBasicInfo.referralUnitName -> "Organization.name"
* organizationBasicInfo.referralUnitDistrict -> "Organization.address.district"

Mapping: TWSSBaseToReferredOrganization
Id: twss-base-to-referred-organization
Title: "Mapping to TWSSBase Referred Organization"
Source: TWSSBaseModel
Target: "https://sfaa.gov.tw/base/StructureDefinition/ReferralOrganization-twss-base"

* organizationBasicInfo.referredUnitName -> "Organization.name"
* organizationBasicInfo.referredUnitDistrict -> "Organization.address.district"

Mapping: TWSSBaseToProvenance
Id: twss-base-to-provenance
Title: "Mapping to TWSSBase Provenance"
Source: TWSSBaseModel
Target: "https://sfaa.gov.tw/base/StructureDefinition/Provenance-twss-base"

* organizationBasicInfo.modifiedUnitCode -> "Provenance.agent.who.identifier"
* organizationBasicInfo.createdUnitCode -> "Provenance.agent.who.identifier"

Mapping: TWSSBaseToLocation
Id: twss-base-to-location
Title: "Mapping to TWSSBase Location"
Source: TWSSBaseModel
Target: "https://sfaa.gov.tw/base/StructureDefinition/Location-twss-base"

* organizationBasicInfo.organizationLongitude -> "Location.position.longitude"
* organizationBasicInfo.organizationLatitude -> "Location.position.latitude"
* serviceProviderBasicInfo.childcareAddress -> "Location.address.text"
* serviceProviderProfessionalInfo.childcareAddress -> "Location.address.text"

Mapping: TWSSBaseToPractitioner
Id: twss-base-to-practitioner
Title: "Mapping to TWSSBase Practitioner"
Source: TWSSBaseModel
Target: "https://sfaa.gov.tw/base/StructureDefinition/Practitioner-twss-base"


Mapping: TWSSBaseToPractitionerRole
Id: twss-base-to-practitionerrole
Title: "Mapping to TWSSBase PractitionerRole"
Source: TWSSBaseModel
Target: "https://sfaa.gov.tw/base/StructureDefinition/PractitionerRole-twss-base"

* organizationBasicInfo.organizationName -> "PractitionerRole.organization"

Mapping: TWSSBaseToClaimResponse
Id: twss-base-to-claimresponse
Title: "Mapping to TWSSBase ClaimResponse"
Source: TWSSBaseModel
Target: "https://sfaa.gov.tw/base/StructureDefinition/ClaimResponse-twss-base"

* subsidyApplication.reviewCheckDate -> "ClaimResponse.created"
* subsidyApplication.approvedSubsidyAmount -> "ClaimResponse.item.adjudication.where(category.coding.code = 'approved-amount').amount"
* subsidyApplication.reviewOpinion -> "ClaimResponse.processNote.text"
* subsidyApplication.nonComplianceReason -> "ClaimResponse.item.adjudication.where(category.coding.code = 'eligibility-denial').reason.text"
* subsidyApplication.reviewResult -> "ClaimResponse.extension[reviewResult].valueBoolean"
* subsidyProvision.subsidyDisbursementStatus -> "ClaimResponse.extension[paymentStatus]"
* subsidyProvision.subsidyMonth -> "ClaimResponse.extension[subsidyMonth]"
* subsidyProvision.cancellationReason -> "ClaimResponse.item.adjudication.where(category.coding.code = 'benefit-termination').reason.text"
* subsidyProvision.paymentSuspensionReason -> "ClaimResponse.item.adjudication.where(category.coding.code = 'benefit-suspension').reason.text"
* subsidyProvision.subsidyServiceType -> "ClaimResponse.request.resolve().item.productOrService"
* subsidyProvision.applicant -> "ClaimResponse.request.resolve().supportingInfo[applicant].valueReference"
* subsidyProvision.applicantBankAccount -> "ClaimResponse.request.resolve().supportingInfo[bankAccount].valueString"

Mapping: TWSSBaseToAssessmentReviewTask
Id: twss-base-to-assessment-review-task
Title: "Mapping to TWSSBase Assessment Review Task"
Source: TWSSBaseModel
Target: "https://sfaa.gov.tw/base/StructureDefinition/AssessmentReviewTask-twss-base"

* caseAssessment.reviewOpinion -> "Task.note.text"
* caseAssessment.nonComplianceReason -> "Task.note.text"
* caseAssessment.reviewResult -> "Task.output[reviewResult].valueBoolean"
* caseAssessment.reviewSubmissionDate -> "Task.authoredOn"
* caseAssessment.isCaseOpened -> "Task.output[caseDisposition].valueCodeableConcept"
* caseAssessment.reviewCheckDate -> "Task.lastModified"

Mapping: TWSSBaseToReferralServiceRequest
Id: twss-base-to-referral-servicerequest
Title: "Mapping to TWSSBase Referral ServiceRequest"
Source: TWSSBaseModel
Target: "https://sfaa.gov.tw/base/StructureDefinition/ServiceRequest-referral-twss-base"

* caseReferral.referralDate -> "ServiceRequest.authoredOn"
* caseReferral.referralReason -> "ServiceRequest.reasonCode"
* caseReferral.caseServiceType -> "ServiceRequest.orderDetail[caseServiceType]"
* caseReferral.subsidyServiceType -> "ServiceRequest.orderDetail[subsidyServiceType]"
* organizationBasicInfo.referralUnitName -> "ServiceRequest.requester"
* organizationBasicInfo.referralUnitDistrict -> "ServiceRequest.requester"
* organizationBasicInfo.referredUnitName -> "ServiceRequest.performer"
* organizationBasicInfo.referredUnitDistrict -> "ServiceRequest.performer"

Mapping: TWSSBaseToReferralAcceptanceTask
Id: twss-base-to-referral-acceptance-task
Title: "Mapping to TWSSBase Referral Acceptance Task"
Source: TWSSBaseModel
Target: "https://sfaa.gov.tw/base/StructureDefinition/ReferralAcceptanceTask-twss-base"

* caseReport.referredDate -> "Task.authoredOn"
* caseReport.referralAcceptanceStatus -> "Task.output[acceptanceDecision].valueCodeableConcept"

Mapping: TWSSBaseToReferralHandlingTask
Id: twss-base-to-referral-handling-task
Title: "Mapping to TWSSBase Referral Handling Task"
Source: TWSSBaseModel
Target: "https://sfaa.gov.tw/base/StructureDefinition/ReferralHandlingTask-twss-base"

* caseReferral.referralProcessingStatus -> "Task.businessStatus"

Mapping: TWSSBaseToCaseIntakeAssessmentTask
Id: twss-base-to-case-intake-assessment-task
Title: "Mapping to TWSSBase Case Intake Assessment Task"
Source: TWSSBaseModel
Target: "https://sfaa.gov.tw/base/StructureDefinition/CaseIntakeAssessmentTask-twss-base"

* caseAssessment.serviceCaseStatus -> "Task.businessStatus"
* caseAssessment.caseType -> "Task.input[caseType].valueCodeableConcept"

Mapping: TWSSBaseToAssessmentServiceEncounter
Id: twss-base-to-assessment-service-encounter
Title: "Mapping to TWSSBase Assessment Service Encounter"
Source: TWSSBaseModel
Target: "https://sfaa.gov.tw/base/StructureDefinition/Encounter-assessment-service-twss-base"

* caseAssessment.assessmentDate -> "Encounter.period.start"

Mapping: TWSSBaseToTransitionServiceRequest
Id: twss-base-to-transition-service-request
Title: "Mapping to TWSSBase Transition ServiceRequest"
Source: TWSSBaseModel
Target: "https://sfaa.gov.tw/base/StructureDefinition/ServiceRequest-transition-twss-base"

* caseReferral.transitionDate -> "ServiceRequest.authoredOn"

Mapping: TWSSBaseToAssessmentResultObservation
Id: twss-base-to-assessment-result-observation
Title: "Mapping to TWSSBase Assessment Result Observation"
Source: TWSSBaseModel
Target: "https://sfaa.gov.tw/base/StructureDefinition/AssessmentResultObservation-twss-base"

* caseAssessment.assessmentResult -> "Observation.valueString"

Mapping: TWSSBaseToCMSLevelObservation
Id: twss-base-to-cms-level-observation
Title: "Mapping to TWSSBase CMS Level Observation"
Source: TWSSBaseModel
Target: "https://sfaa.gov.tw/base/StructureDefinition/CMSLevelObservation-twss-base"

* caseAssessment.cmsLevel -> "Observation.valueString"
* caseService.cmsLevel -> "Observation.valueString"

Mapping: TWSSBaseToActualServiceEncounter
Id: twss-base-to-actual-service-encounter
Title: "Mapping to TWSSBase Actual Service Encounter"
Source: TWSSBaseModel
Target: "https://sfaa.gov.tw/base/StructureDefinition/ActualServiceEncounter-twss-base"

* caseService.serviceDate -> "Encounter.period.start"
* caseService.followUpDate -> "Encounter.period.start"

Mapping: TWSSBaseToInterviewEncounter
Id: twss-base-to-interview-encounter
Title: "Mapping to TWSSBase Interview Encounter"
Source: TWSSBaseModel
Target: "https://sfaa.gov.tw/base/StructureDefinition/InterviewEncounter-twss-base"

* caseService.interviewDate -> "Encounter.period.start"

Mapping: TWSSBaseToMeetingEncounter
Id: twss-base-to-meeting-encounter
Title: "Mapping to TWSSBase Meeting Encounter"
Source: TWSSBaseModel
Target: "https://sfaa.gov.tw/base/StructureDefinition/MeetingEncounter-twss-base"

* caseService.meetingLocation -> "Encounter.location.location"
* caseService.meetingDate -> "Encounter.period.start"

Mapping: TWSSBaseToPlacementEncounter
Id: twss-base-to-placement-encounter
Title: "Mapping to TWSSBase Placement Encounter"
Source: TWSSBaseModel
Target: "https://sfaa.gov.tw/base/StructureDefinition/PlacementEncounter-twss-base"

* caseService.placementType -> "Encounter.type"
* caseService.placementStartDate -> "Encounter.period.start"
* caseService.placementEndDate -> "Encounter.period.end"

Mapping: TWSSBaseToDocumentReference
Id: twss-base-to-document-reference
Title: "Mapping to TWSSBase DocumentReference"
Source: TWSSBaseModel
Target: "https://sfaa.gov.tw/base/StructureDefinition/DocumentReference-twss-base"

* officialDocument.officialDocumentNumber -> "DocumentReference.masterIdentifier"
* officialDocument.officialDocumentDate -> "DocumentReference.content.attachment.creation"
* officialDocument.officialDocumentType -> "DocumentReference.type"

Mapping: TWSSBaseToServicePractitioner
Id: twss-base-to-service-practitioner
Title: "Mapping to TWSSBase Service Practitioner"
Source: TWSSBaseModel
Target: "https://sfaa.gov.tw/base/StructureDefinition/Practitioner-twss-base"

* serviceProviderBasicInfo.practitionAddress -> "Practitioner.address.text"
* serviceProviderBasicInfo.practitionDistrict -> "Practitioner.address.district"
* serviceProviderBasicInfo.practitionCity -> "Practitioner.address.city"
* serviceProviderBasicInfo.practitionVillage -> "Practitioner.address.extension[village]"
* serviceProviderBasicInfo.practitionNeighborhood -> "Practitioner.address.extension[neighborhood]"
* serviceProviderBasicInfo.practitionPostalCode -> "Practitioner.address.postalCode"
* serviceProviderBasicInfo.practitionBirthDate -> "Practitioner.birthDate"
* serviceProviderBasicInfo.practitionName -> "Practitioner.name"
* serviceProviderBasicInfo.practitionGender -> "Practitioner.gender"
* serviceProviderBasicInfo.practitionIdentity -> "Practitioner.identifier"
* serviceProviderBasicInfo.practitionNumber -> "Practitioner.identifier"
* serviceProviderBasicInfo.practitionTelecom -> "Practitioner.telecom"
* serviceProviderBasicInfo.practitionNationality -> "Practitioner.extension[nationality]"
* serviceProviderBasicInfo.practitionEthnicGroup -> "Practitioner.extension[ethnicGroup]"
* serviceProviderBasicInfo.practitionAborigineTribe -> "Practitioner.extension[AborigineTribe]"
* serviceProviderBasicInfo.certificateNumber -> "Practitioner.qualification.identifier"
* serviceProviderBasicInfo.practiceRegistrationNumber -> "Practitioner.qualification.identifier"
* serviceProviderBasicInfo.licenseName -> "Practitioner.qualification.code"
* serviceProviderProfessionalInfo.certificateNumber -> "Practitioner.qualification.identifier"
* serviceProviderProfessionalInfo.practiceRegistrationNumber -> "Practitioner.qualification.identifier"
* serviceProviderProfessionalInfo.licenseName -> "Practitioner.qualification.code"

Mapping: TWSSBaseToServicePractitionerRole
Id: twss-base-to-service-practitioner-role
Title: "Mapping to TWSSBase Service Practitioner Role"
Source: TWSSBaseModel
Target: "https://sfaa.gov.tw/base/StructureDefinition/PractitionerRole-twss-base"

* serviceProviderBasicInfo.childcareAddress -> "PractitionerRole.location"
* serviceProviderBasicInfo.jobTitle -> "PractitionerRole.code"
* serviceProviderProfessionalInfo.childcareAddress -> "PractitionerRole.location"
* serviceProviderProfessionalInfo.jobTitle -> "PractitionerRole.code"
* serviceProviderBasicInfo.dutyVerifyDate -> "PractitionerRole.period.start"
* serviceProviderBasicInfo.quitDate -> "PractitionerRole.period.end"

Mapping: TWSSBaseToFinalClaimField
Id: twss-base-to-final-claim-field
Title: "Mapping to TWSS Base Claim"
Source: TWSSBaseModel
Target: "https://sfaa.gov.tw/base/StructureDefinition/Claim-twss-base"

* subsidyApplication.applicationNumber -> "Claim.identifier"

Mapping: TWSSBaseToFinalAssessmentField
Id: twss-base-to-final-assessment-field
Title: "Mapping to TWSS Base QuestionnaireResponse"
Source: TWSSBaseModel
Target: "https://sfaa.gov.tw/base/StructureDefinition/AssessmentQuestionnaireResponse-twss-base"

* caseAssessment.activitiesOfDailyLiving -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/twss-adl-assessment').item.where(linkId = '9')"
* caseAssessment.relationSubstanceAbuse -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/related-person-risk-assessment').item.where(linkId = '3').item.where(linkId = '3.3')"

Mapping: TWSSBaseToAdditionalQuestionnaires
Id: twss-base-to-additional-questionnaires
Title: "Mapping to TWSSBase Additional Questionnaires"
Source: TWSSBaseModel
Target: "https://sfaa.gov.tw/base/StructureDefinition/AssessmentQuestionnaireResponse-twss-base"

* caseBasicInfo.familyStructure -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/case-basic-family-information').item.where(linkId = '12').item.where(linkId = '12.1').answer.valueCoding"
* caseBasicInfo.childrenStatus -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/case-basic-family-information').item.where(linkId = '12').item.where(linkId = '12.2').answer.valueCoding"
* caseBasicInfo.childrenCount -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/case-basic-family-information').item.where(linkId = '12').item.where(linkId = '12.3').answer.valueInteger"
* caseBasicInfo.familyMonthlyIncome -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/case-basic-family-information').item.where(linkId = '12').item.where(linkId = '12.4').answer.valueDecimal"
* caseBasicInfo.specialEducationType -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/case-basic-family-information').item.where(linkId = '12').item.where(linkId = '12.5').answer.valueCoding"
* relatedPersonBasicInfo.isCohabiting -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/related-person-basic-information').item.where(linkId = '14').item.where(linkId = '14.1').answer.valueBoolean"
* relatedPersonBasicInfo.isForeignSpouse -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/related-person-basic-information').item.where(linkId = '14').item.where(linkId = '14.2').answer.valueBoolean"
* caseAssessment.hasAttendedVocationalTraining -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/vocational-training-status').item.where(linkId = '15').item.where(linkId = '15.1').answer.valueBoolean"
* caseAssessment.vocationalTrainingType -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/vocational-training-status').item.where(linkId = '15').item.where(linkId = '15.2').answer.valueString"
* caseAssessment.schoolAdaptationStatus -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/school-adaptation-status').item.where(linkId = '16').answer.valueString"
* caseAssessment.emotionalAndBehavioralStatus.emotionalControlAbility -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/emotional-behavior-status').item.where(linkId = '17').answer.valueCoding"
* caseAssessment.interpersonalInteractionLevel.interpersonalSocialAdaptationAssessment -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/interpersonal-interaction-status').item.where(linkId = '18').item.where(linkId = '18.1').answer.valueCoding"
* caseAssessment.interpersonalInteractionLevel.interpersonalInteraction -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/interpersonal-interaction-status').item.where(linkId = '18').item.where(linkId = '18.2').answer.valueCoding"
* caseAssessment.interpersonalInteractionLevel.communicationAndLanguageExpressionAbility -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/interpersonal-interaction-status').item.where(linkId = '18').item.where(linkId = '18.3').answer.valueCoding"
* caseAssessment.interpersonalInteractionLevel.familyRelationship -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/interpersonal-interaction-status').item.where(linkId = '18').item.where(linkId = '18.4').answer.valueCoding"
* caseAssessment.interpersonalInteractionLevel.schoolLifeAdaptation -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/interpersonal-interaction-status').item.where(linkId = '18').item.where(linkId = '18.5').answer.valueCoding"
* caseAssessment.developmentalDelayType.languageCommunicationAbility -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/developmental-delay-status').item.where(linkId = '19').item.where(linkId = '19.1').answer.valueCoding"
* caseAssessment.developmentalDelayType.cognitiveAbility -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/developmental-delay-status').item.where(linkId = '19').item.where(linkId = '19.2').answer.valueCoding"
* caseAssessment.developmentalDelayType.socialEmotionalDevelopment -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/developmental-delay-status').item.where(linkId = '19').item.where(linkId = '19.3').answer.valueCoding"
* caseAssessment.developmentalDelayType.selfCare -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/developmental-delay-status').item.where(linkId = '19').item.where(linkId = '19.4').answer.valueCoding"
* caseAssessment.developmentalDelayType.grossMotor -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/developmental-delay-status').item.where(linkId = '19').item.where(linkId = '19.5').answer.valueCoding"
* caseAssessment.developmentalDelayType.fineMotor -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/developmental-delay-status').item.where(linkId = '19').item.where(linkId = '19.6').answer.valueCoding"
* caseAssessment.employmentStatus -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/employment-information').item.where(linkId = '20').item.where(linkId = '20.1').answer.valueCoding"
* caseAssessment.unemploymentReason -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/employment-information').item.where(linkId = '20').item.where(linkId = '20.2').answer.valueCoding"
* caseAssessment.previousJob -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/employment-information').item.where(linkId = '20').item.where(linkId = '20.3').answer.valueString"
* caseAssessment.currentJob -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/employment-information').item.where(linkId = '20').item.where(linkId = '20.4').answer.valueString"
* caseAssessment.monthlyRent -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/welfare-economic-status').item.where(linkId = '10.4').answer.valueDecimal"
* caseAssessment.isPlaced -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/placement-information').item.where(linkId = '23').item.where(linkId = '23.1').answer.valueBoolean"
* caseAssessment.placementStatus -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/placement-information').item.where(linkId = '23').item.where(linkId = '23.2').answer.valueString"
* caseAssessment.isPlacementEnded -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/placement-information').item.where(linkId = '23').item.where(linkId = '23.3').answer.valueCoding"
* caseService.isPlaced -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/placement-information').item.where(linkId = '23').item.where(linkId = '23.1').answer.valueBoolean"
* caseService.placementStatus -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/placement-information').item.where(linkId = '23').item.where(linkId = '23.2').answer.valueString"
* caseClosure.isPlacementEnded -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/placement-information').item.where(linkId = '23').item.where(linkId = '23.3').answer.valueCoding"
* caseClosure.placementNoFollowUpReason -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/closure-placement-information').item.where(linkId = '26').answer.valueCoding"


Mapping: TWSSBaseToBodyMeasurementObservation
Id: twss-base-to-body-measurement-observation
Title: "Mapping to TW Core Body Measurement Observation"
Source: TWSSBaseModel
Target: "https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Observation-body-weight-twcore"

* caseBasicInfo.bodyMeasurement.weight -> "Observation.valueQuantity.value"

Mapping: TWSSBaseToBodyHeightObservation
Id: twss-base-to-body-height-observation
Title: "Mapping to TW Core Body Height Observation"
Source: TWSSBaseModel
Target: "https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Observation-body-height-twcore"

* caseBasicInfo.bodyMeasurement.height -> "Observation.valueQuantity.value"

Mapping: TWSSBaseToCaseBasicFamilyQuestionnaireResponse
Id: twss-base-to-case-basic-family-questionnaire-response
Title: "Mapping to TWSSBase Case Basic Family QuestionnaireResponse"
Source: TWSSBaseModel
Target: "https://sfaa.gov.tw/base/StructureDefinition/AssessmentQuestionnaireResponse-twss-base"
* caseBasicInfo.isBirthDateUnknown -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/case-basic-family-information').item.where(linkId = '12').item.where(linkId = '12.6').answer.valueBoolean"

Mapping: TWSSBaseToRelatedPersonBasicQuestionnaireResponse
Id: twss-base-to-related-person-basic-questionnaire-response
Title: "Mapping to TWSSBase Related Person Basic QuestionnaireResponse"
Source: TWSSBaseModel
Target: "https://sfaa.gov.tw/base/StructureDefinition/QuestionnaireResponse-twss-base"
* relatedPersonBasicInfo.isRelationIdentityUnknown -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/related-person-basic-information').item.where(linkId = '14').item.where(linkId = '14.3').answer.valueBoolean"

Mapping: TWSSBaseToRelatedPersonRoleAssessmentQuestionnaireResponse
Id: twss-base-to-related-person-role-qr
Title: "Mapping to TWSSBase Related Person Role Assessment QuestionnaireResponse"
Source: TWSSBaseModel
Target: "https://sfaa.gov.tw/base/StructureDefinition/AssessmentQuestionnaireResponse-twss-base"
* caseAssessment.isPrimaryCaregiver -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/related-person-role-assessment').item.where(linkId = '27').item.where(linkId = '27.2').answer.valueBoolean"
* caseAssessment.isGuardian -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/related-person-role-assessment').item.where(linkId = '27').item.where(linkId = '27.3').answer.valueBoolean"
* caseAssessment.isPrimaryContact -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/related-person-role-assessment').item.where(linkId = '27').item.where(linkId = '27.4').answer.valueBoolean"
* caseAssessment.isAgent -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/related-person-role-assessment').item.where(linkId = '27').item.where(linkId = '27.5').answer.valueBoolean"

Mapping: TWSSBaseToCaseReporterPractitionerRole
Id: twss-base-to-case-reporter-practitioner-role
Title: "Mapping to TWSSBase Case Reporter PractitionerRole"
Source: TWSSBaseModel
Target: "https://sfaa.gov.tw/base/StructureDefinition/PractitionerRole-twss-base"

* relatedPersonBasicInfo.helpNameTitle -> "PractitionerRole.code.text"
* relatedPersonBasicInfo.helperTelcom -> "PractitionerRole.telecom.where(system = 'phone').value"

Mapping: TWSSBaseToSubsidyProvisionApplicationReviewStatusClaimResponse
Id: twss-base-to-subsidy-provision-review-status-claimresponse
Title: "Mapping to TWSSBase Subsidy Provision Application Review Status ClaimResponse"
Source: TWSSBaseModel
Target: "https://sfaa.gov.tw/base/StructureDefinition/ClaimResponse-twss-base"

* subsidyProvision.applicationReviewStatus -> "ClaimResponse.request.resolve().extension('https://sfaa.gov.tw/base/StructureDefinition/twss-claim-application-review-status').valueCodeableConcept"

Mapping: TWSSBaseToPsychologicalCounselingObservation
Id: twss-base-to-psychological-counseling-observation
Title: "Mapping to TWSSBase Psychological Counseling Observation"
Source: TWSSBaseModel
Target: "https://sfaa.gov.tw/base/StructureDefinition/PsychologicalCounselingObservation-twss-base"

* caseAssessment.psychologicalCounselingAndAssessment -> "Observation.valueString"
* caseService.psychologicalCounselingAndAssessment -> "Observation.valueString"

Mapping: TWSSBaseToRelatedPersonOccupationObservation
Id: twss-base-to-related-person-occupation-observation
Title: "Mapping to TWSSBase Related Person Occupation Observation"
Source: TWSSBaseModel
Target: "https://sfaa.gov.tw/base/StructureDefinition/RelatedPersonOccupationObservation-twss-base"

* relatedPersonBasicInfo.relationOccupation -> "Observation.valueCodeableConcept"

Mapping: TWSSBaseToVisualAcuityObservation
Id: twss-base-to-visual-acuity-observation
Title: "Mapping to TWSSBase Visual Acuity Observation"
Source: TWSSBaseModel
Target: "https://sfaa.gov.tw/base/StructureDefinition/VisualAcuityObservation-twss-base"

* caseBasicInfo.bodyMeasurement.correctedVisionLeft -> "Observation.component[correctedVisionLeft].valueQuantity"
* caseBasicInfo.bodyMeasurement.visionLeft -> "Observation.component[visionLeft].valueQuantity.value"
* caseBasicInfo.bodyMeasurement.correctedVisionRight -> "Observation.component[correctedVisionRight].valueQuantity"
* caseBasicInfo.bodyMeasurement.visionRight -> "Observation.component[visionRight].valueQuantity.value"

Mapping: TWSSBaseToFinalRelatedPersonField
Id: twss-base-to-final-related-person-field
Title: "Mapping to TWSS Base RelatedPerson"
Source: TWSSBaseModel
Target: "https://sfaa.gov.tw/base/StructureDefinition/RelatedPerson-twss-base"

Mapping: TWSSBaseToFinalEpisodeOfCareField
Id: twss-base-to-final-episode-of-care-field
Title: "Mapping to TWSS Base EpisodeOfCare"
Source: TWSSBaseModel
Target: "https://sfaa.gov.tw/base/StructureDefinition/EpisodeOfCare-twss-base"

* caseClosure.caseClosingDate -> "EpisodeOfCare.where(status = 'finished').period.end"
* caseClosure.caseClosingReason -> "EpisodeOfCare.extension[caseCloseReason]"

Mapping: TWSSBaseToFinalClaimResponseField
Id: twss-base-to-final-claim-response-field
Title: "Mapping to TWSS Base ClaimResponse"
Source: TWSSBaseModel
Target: "https://sfaa.gov.tw/base/StructureDefinition/ClaimResponse-twss-base"

* subsidyProvision.approvedBenefitStartDate -> "ClaimResponse.preAuthPeriod.start"
* subsidyProvision.approvedBenefitEndDate -> "ClaimResponse.preAuthPeriod.end"
* subsidyProvision.subsidyStartDate -> "ClaimResponse.extension[subsidyPeriod].extension[start].valueDate"
* subsidyProvision.subsidyEndDate -> "ClaimResponse.extension[subsidyPeriod].extension[end].valueDate"

Mapping: TWSSBaseToPractitionerEmploymentQuestionnaireResponse
Id: twss-base-to-practitioner-employment-questionnaire-response
Title: "Mapping to TWSS Base Practitioner Employment QuestionnaireResponse"
Source: TWSSBaseModel
Target: "https://sfaa.gov.tw/base/StructureDefinition/QuestionnaireResponse-twss-base"

* serviceProviderBasicInfo.isRelativeNanny -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/practitioner-employment-information').item.where(linkId = '13').item.where(linkId = '13.1').answer.valueBoolean"
* serviceProviderBasicInfo.practitionSalary -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/practitioner-employment-information').item.where(linkId = '13').item.where(linkId = '13.2').answer.valueDecimal"
* serviceProviderBasicInfo.healthCheckDate -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/practitioner-employment-information').item.where(linkId = '13').item.where(linkId = '13.3').answer.valueDate"

Mapping: TWSSBaseToPatientEducationQuestionnaireResponse
Id: twss-base-to-patient-education-questionnaire-response
Title: "Mapping to TWSSBase Patient Education QuestionnaireResponse"
Source: TWSSBaseModel
Target: "https://sfaa.gov.tw/base/StructureDefinition/AssessmentQuestionnaireResponse-twss-base"

* caseAssessment.schoolingStatus -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/education-information').item.where(linkId = '21').item.where(linkId = '21.1').answer.valueCoding"
* caseAssessment.schoolName -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/education-information').item.where(linkId = '21').item.where(linkId = '21.3').answer.valueString"
* caseAssessment.gradeLevel -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/education-information').item.where(linkId = '21').item.where(linkId = '21.4').answer.valueString"
* caseAssessment.major -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/education-information').item.where(linkId = '21').item.where(linkId = '21.5').answer.valueString"
* caseAssessment.isGraduated -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/education-information').item.where(linkId = '21').item.where(linkId = '21.6').answer.valueBoolean"
* caseAssessment.educationLevel -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/education-information').item.where(linkId = '21').item.where(linkId = '21.8').answer.valueCoding"

Mapping: TWSSBaseToRelatedPersonEducationQuestionnaireResponse
Id: twss-base-to-related-person-education-questionnaire-response
Title: "Mapping to TWSSBase Related Person Education QuestionnaireResponse"
Source: TWSSBaseModel
Target: "https://sfaa.gov.tw/base/StructureDefinition/QuestionnaireResponse-twss-base"

* relatedPersonBasicInfo.relationEducationLevel -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/education-information').item.where(linkId = '21').item.where(linkId = '21.8').answer.valueCoding"

Mapping: TWSSBaseToPractitionerEducationQuestionnaireResponse
Id: twss-base-to-practitioner-education-questionnaire-response
Title: "Mapping to TWSSBase Practitioner Education QuestionnaireResponse"
Source: TWSSBaseModel
Target: "https://sfaa.gov.tw/base/StructureDefinition/QuestionnaireResponse-twss-base"

* serviceProviderBasicInfo.practitionEnrollmentYear -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/education-information').item.where(linkId = '21').item.where(linkId = '21.2').answer.valueInteger"
* serviceProviderBasicInfo.practitionGraduationSchoolName -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/education-information').item.where(linkId = '21').item.where(linkId = '21.3').answer.valueString"
* serviceProviderBasicInfo.practitionEducationLevel -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/education-information').item.where(linkId = '21').item.where(linkId = '21.8').answer.valueCoding"
* serviceProviderBasicInfo.practitionMajor -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/education-information').item.where(linkId = '21').item.where(linkId = '21.5').answer.valueString"
* serviceProviderBasicInfo.isRelatedMajorGraduate -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/education-information').item.where(linkId = '21').item.where(linkId = '21.9').answer.valueBoolean"
* serviceProviderBasicInfo.isPractitionGraduated -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/education-information').item.where(linkId = '21').item.where(linkId = '21.6').answer.valueBoolean"
* serviceProviderBasicInfo.practitionGraduationYear -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/education-information').item.where(linkId = '21').item.where(linkId = '21.7').answer.valueInteger"
* serviceProviderBasicInfo.isSocialWelfareRelatedEducation -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/education-information').item.where(linkId = '21').item.where(linkId = '21.10').answer.valueBoolean"
* serviceProviderProfessionalInfo.isSocialWelfareRelatedEducation -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/education-information').item.where(linkId = '21').item.where(linkId = '21.10').answer.valueBoolean"

Mapping: TWSSBaseToMedicalSupportQuestionnaireResponse
Id: twss-base-to-medical-support-questionnaire-response
Title: "Mapping to TWSSBase Medical Support QuestionnaireResponse"
Source: TWSSBaseModel
Target: "https://sfaa.gov.tw/base/StructureDefinition/AssessmentQuestionnaireResponse-twss-base"

* caseAssessment.medicalRehabilitationService -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/medical-support-assessment').item.where(linkId = '22').item.where(linkId = '22.1').answer.valueCoding"
* caseAssessment.medicalAssistance -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/medical-support-assessment').item.where(linkId = '22').item.where(linkId = '22.2').answer.valueCoding"

Mapping: TWSSBaseToOrganizationAdministrativeQuestionnaireResponse
Id: twss-base-to-organization-administrative-questionnaire-response
Title: "Mapping to TWSSBase Organization Administrative QuestionnaireResponse"
Source: TWSSBaseModel
Target: "https://sfaa.gov.tw/base/StructureDefinition/QuestionnaireResponse-twss-base"

* organizationOtherInfo.organizationAuditResult -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/organization-administrative-information').item.where(linkId = '24').item.where(linkId = '24.1').answer.valueBoolean"
* organizationOtherInfo.accreditationLevel -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/organization-administrative-information').item.where(linkId = '24').item.where(linkId = '24.2').answer.valueCoding"
* organizationOtherInfo.penaltyLegalBasis -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/organization-administrative-information').item.where(linkId = '24').item.where(linkId = '24.3').answer.valueString"
* organizationBasicInfo.organizationCapacity.admissionCapacity -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/organization-administrative-information').item.where(linkId = '28').item.where(linkId = '28.1').item.where(linkId = '28.1.1').answer.valueInteger"
* organizationBasicInfo.organizationCapacity.serviceableBeds -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/organization-administrative-information').item.where(linkId = '28').item.where(linkId = '28.1').item.where(linkId = '28.1.2').answer.valueInteger"
* organizationBasicInfo.organizationCapacity.isolationBeds -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/organization-administrative-information').item.where(linkId = '28').item.where(linkId = '28.1').item.where(linkId = '28.1.3').answer.valueInteger"
* organizationBasicInfo.organizationUsableArea.totalArea -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/organization-administrative-information').item.where(linkId = '28').item.where(linkId = '28.2').item.where(linkId = '28.2.1').answer.valueQuantity"
* organizationBasicInfo.organizationUsableArea.indoorArea -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/organization-administrative-information').item.where(linkId = '28').item.where(linkId = '28.2').item.where(linkId = '28.2.2').answer.valueQuantity"
* organizationBasicInfo.organizationUsableArea.outdoorArea -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/organization-administrative-information').item.where(linkId = '28').item.where(linkId = '28.2').item.where(linkId = '28.2.3').answer.valueQuantity"
* organizationBasicInfo.statutoryStaffing.staffCategory -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/organization-administrative-information').item.where(linkId = '28').item.where(linkId = '28.3').item.where(linkId = '28.3.1').answer.valueString"
* organizationBasicInfo.statutoryStaffing.statutoryStaffingCount -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/organization-administrative-information').item.where(linkId = '28').item.where(linkId = '28.3').item.where(linkId = '28.3.2').answer.valueInteger"

Mapping: TWSSBaseToCaseServiceAdministrativeQuestionnaireResponse
Id: twss-base-to-case-service-administrative-questionnaire-response
Title: "Mapping to TWSSBase Case Service Administrative QuestionnaireResponse"
Source: TWSSBaseModel
Target: "https://sfaa.gov.tw/base/StructureDefinition/QuestionnaireResponse-twss-base"

* caseService.rulingDate -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/case-service-administrative-information').item.where(linkId = '25').item.where(linkId = '25.1').answer.valueDate"

Mapping: TWSSBaseToDisabilityCertificateQuestionnaireResponse
Id: twss-base-to-disability-certificate-questionnaire-response
Title: "Mapping to TWSSBase Disability Certificate QuestionnaireResponse"
Source: TWSSBaseModel
Target: "https://sfaa.gov.tw/base/StructureDefinition/QuestionnaireResponse-twss-base"

* caseService.cancellationReason -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/disability-status').item.where(linkId = '7.2').item.where(linkId = '7.2.5').answer.valueString"

Mapping: TWSSBaseToMedicalSupportCarePlan
Id: twss-base-to-medical-support-careplan
Title: "Mapping to TWSS Base Medical Support CarePlan"
Source: TWSSBaseModel
Target: "https://sfaa.gov.tw/base/StructureDefinition/CarePlan-twss-base"

* caseService.medicalRehabilitationService -> "CarePlan.activity:medicalRehabilitationService.detail.code.coding.code"
* caseService.medicalAssistance -> "CarePlan.activity:medicalAssistance.detail.code.coding.code"
