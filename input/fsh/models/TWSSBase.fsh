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
* caseBasicInfo.district 0..* string "縣市" "縣市"
* caseBasicInfo.city 0..* string "鄉鎮市區" "鄉鎮市區"
* caseBasicInfo.village 0..* string "村里" "村里"
* caseBasicInfo.neighborhood 0..* string "鄰" "鄰"
* caseBasicInfo.neighborhood ^definition = "個案地址所屬之鄰別。"
* caseBasicInfo.postalCode 0..* string "郵遞區號" "郵遞區號"
* caseBasicInfo.birthDate 0..1 date "出生日期" "出生日期"
* caseBasicInfo.isBornBeforeROC 0..1 boolean "是否出生於民國年前" "是否出生於民國年前"
* caseBasicInfo.age 0..1 Age "年齡" "年齡"
* caseBasicInfo.nationality 0..1 CodeableConcept "國籍" "國籍"
* caseBasicInfo.isBirthDateUnknown 0..1 boolean "出生日期不明註記" "出生日期不明註記"
* caseBasicInfo.ethnicGroup 0..1 CodeableConcept "族群身分" "族群身分"
* caseBasicInfo.aborigineLanguage 0..* CodeableConcept "原住民語言" "原住民語言"
* caseBasicInfo.gender 0..1 code "性別" "性別"
* caseBasicInfo.identifier 0..* Identifier "個案身分識別碼" "個案身分識別碼"
* caseBasicInfo.maritalStatus 0..1 CodeableConcept "婚姻狀態" "婚姻狀態"
* caseBasicInfo.name 0..1 HumanName "姓名" "姓名"
* caseBasicInfo.telecom 0..* ContactPoint "聯絡方式" "聯絡方式"

* relatedPersonBasicInfo 0..* BackboneElement "個案關係人基本資訊" "個案關係人基本資訊"
* relatedPersonBasicInfo.relationAddress 0..1 Address "關係人地址" "關係人地址"
* relatedPersonBasicInfo.relationDistrict 0..1 string "關係人縣市" "關係人地址所屬縣市。"
* relatedPersonBasicInfo.relationCity 0..1 string "關係人鄉鎮市區" "關係人地址所屬鄉鎮市區。"
* relatedPersonBasicInfo.relationVillage 0..1 string "關係人村里" "關係人地址所屬村里。"
* relatedPersonBasicInfo.relationNeighborhood 0..1 string "關係人鄰" "關係人地址所屬鄰別。"
* relatedPersonBasicInfo.relationPostalCode 0..1 string "關係人郵遞區號" "關係人地址郵遞區號。"
* relatedPersonBasicInfo.relationBirthDate 0..1 date "關係人出生日期" "關係人出生日期"
* relatedPersonBasicInfo.relationNationality 0..1 CodeableConcept "關係人國籍" "關係人國籍"
* relatedPersonBasicInfo.relationAge 0..1 Age "關係人年齡" "關係人年齡"
* relatedPersonBasicInfo.relationEthnicGroup 0..1 CodeableConcept "族群身分" "族群身分"
* relatedPersonBasicInfo.relationGender 0..1 code "關係人性別" "關係人性別"
* relatedPersonBasicInfo.relationIdentity 0..1 Identifier "關係人身分識別碼" "關係人身分識別碼。"
* relatedPersonBasicInfo.relationMaritalStatus 0..1 CodeableConcept "關係人婚姻狀態" "關係人婚姻狀態"
* relatedPersonBasicInfo.relationName 0..1 HumanName "關係人姓名" "關係人姓名"
* relatedPersonBasicInfo.isRelationIdentityUnknown 0..1 boolean "關係人身分識別碼不明註記" "關係人身分識別碼不明註記"
* relatedPersonBasicInfo.relationship 0..* CodeableConcept "與個案關係" "關係人與個案之間的關係。"
* relatedPersonBasicInfo.relationTelCom 0..1 ContactPoint "關係人聯絡方式" "關係人聯絡方式。"
* relatedPersonBasicInfo.relationNumber 1..1 string "關係人編號" "關係人編號"
* relatedPersonBasicInfo.isPrimaryCaregiver 0..1 boolean "是否為主要照顧者" "關係人是否為個案的主要照顧者。"
* relatedPersonBasicInfo.isGuardian 0..1 boolean "是否為監護人" "關係人是否為個案的監護人。"
* relatedPersonBasicInfo.isPrimaryContact 0..1 boolean "是否為主要聯絡者" "關係人是否為個案的主要聯絡者。"
* relatedPersonBasicInfo.isAgent 0..1 boolean "是否為法定代理人" "關係人是否為個案的法定代理人。"

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
* serviceProviderBasicInfo.practitionIdentity 0..* Identifier "服務人身分識別碼" "服務人身分識別碼。"
* serviceProviderBasicInfo.practitionNumber 0..* Identifier "服務人編號" "服務人編號。"
* serviceProviderBasicInfo.practitionTelecom 0..* ContactPoint "服務人聯絡方式" "服務人聯絡方式。"
* serviceProviderBasicInfo.practitionNationality 0..1 CodeableConcept "服務人國籍" "服務人國籍。"
* serviceProviderBasicInfo.practitionEthnicGroup 0..1 CodeableConcept "服務人族群身分" "服務人族群身分。"
* serviceProviderBasicInfo.practitionAborigineTribe 0..1 CodeableConcept "服務人原住民族別" "服務人原住民族別。"

* serviceProviderProfessionalInfo 0..* BackboneElement "個案服務人專業資訊" "個案服務人專業資訊"
* serviceProviderProfessionalInfo.practitionEnrollmentYear 0..1 integer "服務人入學年度" "服務人入學年度。"
* serviceProviderProfessionalInfo.practitionGraduationSchoolName 0..1 string "服務人畢業學校名稱" "服務人畢業學校名稱。"
* serviceProviderProfessionalInfo.highestEducation 0..1 CodeableConcept "服務人最高學歷" "服務人最高學歷"
* serviceProviderProfessionalInfo.practitionMajor 0..1 string "服務人畢業科系" "服務人畢業科系。"
* serviceProviderProfessionalInfo.certificateNumber 0..* Identifier "證書字號" "證書字號"
* serviceProviderProfessionalInfo.practiceRegistrationNumber 0..* Identifier "執業登記證號" "執業登記證號"
* serviceProviderProfessionalInfo.licenseName 0..* CodeableConcept "服務人證照名稱" "服務人證照名稱"
* serviceProviderProfessionalInfo.isSocialWelfareRelatedEducation 0..1 boolean "是否為社福相關學歷" "是否為社福相關學歷。"
* serviceProviderProfessionalInfo.childcareAddress 0..* Address "托育地址" "托育地址"
* serviceProviderProfessionalInfo.jobTitle 0..* CodeableConcept "職稱" "職稱"
* serviceProviderProfessionalInfo.trainingCourseName 0..* string "受訓課程名稱" "受訓課程名稱"
* serviceProviderProfessionalInfo.trainingCourseHours 0..* Quantity "受訓課程時數" "受訓課程時數"
* serviceProviderProfessionalInfo.trainingCourseType 0..* CodeableConcept "受訓課程類型" "受訓課程類型"
* serviceProviderProfessionalInfo.courseProviderUnit 0..1 string "開課單位" "服務人受訓課程的開課單位。"

* organizationBasicInfo 0..* BackboneElement "機構基本資訊" "機構基本資訊"
* organizationBasicInfo.organizationAddress 0..1 Address "機構地址" "機構地址。"
* organizationBasicInfo.organizationDistrict 0..1 string "機構縣市" "機構地址所屬縣市。"
* organizationBasicInfo.organizationCity 0..1 string "機構鄉鎮市區" "機構地址所屬鄉鎮市區。"
* organizationBasicInfo.organizationVillage 0..1 string "機構村里" "機構地址所屬村里。"
* organizationBasicInfo.organizationNeighborhood 0..1 string "機構鄰" "機構地址所屬鄰別。"
* organizationBasicInfo.organizationPostalCode 0..1 string "機構郵遞區號" "機構地址郵遞區號。"
* organizationBasicInfo.organizationTelecom 0..* ContactPoint "機構聯絡方式" "機構聯絡方式。"
* organizationBasicInfo.organizationName 0..1 string "機構名稱" "機構名稱。"
* organizationBasicInfo.organizationCategory 0..* CodeableConcept "機構類別" "機構類別。"
* organizationBasicInfo.organizationCode 1..1 Identifier "機構代碼" "機構代碼"
* organizationBasicInfo.organizationLicenseNumber 0..1 Identifier "機構許可證字號" "機構許可證字號"
* organizationBasicInfo.organizationEstablishmentType 0..1 CodeableConcept "機構設立別" "機構設立別"
* organizationBasicInfo.organizationContactPerson 0..1 HumanName "機構聯絡人" "機構聯絡人"
* organizationBasicInfo.organizationLongitude 0..1 decimal "機構地址經度" "機構地址經度"
* organizationBasicInfo.organizationLatitude 0..1 decimal "機構地址緯度" "機構地址緯度"
* organizationBasicInfo.registrationDate 0..1 date "立案日期" "機構立案日期。"
* organizationBasicInfo.admissionCapacity 0..1 integer "可收容人數" "機構可收容的人數。"
* organizationBasicInfo.serviceableBeds 0..1 integer "可服務床位" "機構可提供服務的床位數。"
* organizationBasicInfo.isolationBeds 0..1 integer "隔離專用床位" "機構隔離專用床位數。"
* organizationBasicInfo.totalArea 0..1 Quantity "總面積" "機構總面積。"
* organizationBasicInfo.indoorArea 0..1 Quantity "室內面積" "機構室內面積。"
* organizationBasicInfo.outdoorArea 0..1 Quantity "室外面積" "機構室外面積。"
* organizationBasicInfo.statutoryStaffingCount 0..* integer "法定設置標準人數" "依角色所需的法定人力。"
* organizationBasicInfo.competentAuthorityCode 0..1 Identifier "主管機關代碼" "機構主管機關的識別碼。"
* organizationBasicInfo.responsibleUnitCode 0..1 Identifier "主責單位代碼" "案件主責機構的識別碼。"
* organizationBasicInfo.responsibleUnit 0..1 string "主責單位" "案件主責機構名稱。"
* organizationBasicInfo.responsibleUnitDistrict 0..1 string "主責單位縣市" "案件主責機構所在縣市。"
* organizationBasicInfo.referralUnitName 0..1 string "轉介單位" "提出轉介的機構名稱。"
* organizationBasicInfo.referralUnitDistrict 0..1 string "轉介單位縣市" "提出轉介機構所在縣市。"
* organizationBasicInfo.referredUnitName 0..1 string "受轉介單位" "接受轉介的機構名稱。"
* organizationBasicInfo.referredUnitDistrict 0..1 string "受轉介單位縣市" "接受轉介機構所在縣市。"
* organizationBasicInfo.medicalInstitutionName 0..1 string "醫療院所名稱" "醫療院所名稱"

* organizationOtherInfo 0..* BackboneElement "機構其他資訊" "機構其他資訊"
* organizationOtherInfo.organizationAuditResult 0..1 boolean "查核結果" "機構查核結果"
* organizationOtherInfo.penaltyLegalBasis 0..1 string "裁罰法規依據" "裁罰法規依據"
* organizationOtherInfo.modifiedUnitCode 0..1 Identifier "修改單位代碼" "修改資料的單位代碼"
* organizationOtherInfo.createdUnitCode 0..1 Identifier "建立單位代碼" "建立資料的單位代碼"
* organizationOtherInfo.dutyVerifyDate 1..1 date "任職核定日期" "任職核定日期"
* organizationOtherInfo.quitDate 0..1 date "離職日期" "離職日期"
* organizationOtherInfo.disabilityStaffName 0..1 HumanName "身心障礙服務人員姓名" "身心障礙服務人員姓名"
* organizationOtherInfo.sitterName 0..1 HumanName "托育人員姓名" "托育人員姓名"
* organizationOtherInfo.liaisonPersonName 0..1 HumanName "聯絡人姓名" "聯絡人姓名"
* organizationOtherInfo.adoptionManagerName 1..1 HumanName "收出養機構負責人姓名" "收出養機構負責人姓名"
* organizationOtherInfo.adoptionManagerIdentifier 1..1 Identifier "收出養機構負責人身分識別碼" "收出養機構負責人身分識別碼"
* organizationOtherInfo.adoptionManagerTelcom 1..1 ContactPoint "收出養機構負責人聯絡方式" "收出養機構負責人聯絡方式"
* organizationOtherInfo.adoptionManagerAddress 1..1 Address "收出養機構負責人地址" "收出養機構負責人地址"

* subsidyApplication 0..* BackboneElement "申請補助" "申請補助"
* subsidyApplication.appDate 0..1 date "申請日期" "申請日期"
* subsidyApplication.aidYear 0..1 string "補助年度" "補助年度"
* subsidyApplication.aidStartYearMonth 0..1 string "補助起始年月" "補助起始年月"
* subsidyApplication.aidEndYearMonth 0..1 string "補助終止年月" "補助終止年月"
* subsidyApplication.subsidyServiceType 0..1 code "申請補助別" "本次申請補助所屬的補助類別。"
* subsidyApplication.subsidyRatio 0..1 decimal "補助比率" "補助比率"
* subsidyApplication.approvedSubsidyAmount 0..1 decimal "核定補助金額" "核定補助金額"
* subsidyApplication.reviewOpinion 0..1 string "審核意見" "審核意見"
* subsidyApplication.nonComplianceReason 0..1 string "不符原因" "不符原因"
* subsidyApplication.reviewResult 0..1 CodeableConcept "審核結果" "審核結果"
* subsidyApplication.receivedSubsidyAmount 0..1 decimal "已取得補助金額" "已取得補助金額"
* subsidyApplication.receivedSubsidyType 0..1 CodeableConcept "已取得補助類型" "已取得補助類型"
* subsidyApplication.applicationNumber 0..1 Identifier "申請案號" "補助申請的業務識別碼。"
* subsidyApplication.applicantDocumentCompletionDate 0..1 date "申請人證件備齊日" "申請人證件備齊日"
* subsidyApplication.isOnlineApplication 0..1 boolean "是否為線上申辦" "是否為線上申辦"
* subsidyApplication.reviewCheckDate 0..1 date "審核／查核日期" "審核或查核作業完成的日期。"
* subsidyApplication.applicant 0..1 string "申請人" "申請人"
* subsidyApplication.applicantBankAccount 0..1 string "申請人銀行帳戶" "申請人銀行帳戶"

* subsidyProvision 0..* BackboneElement "提供補助" "提供補助"
* subsidyProvision.subsidyServiceType 0..1 code "申請補助別" "補助給付所對應的申請補助類別。"
* subsidyProvision.applicant 0..1 string "申請人" "由被參照的補助申請取得。"
* subsidyProvision.applicantBankAccount 0..1 string "申請人銀行帳戶" "由被參照的補助申請取得。"
* subsidyProvision.subsidyDisbursementStatus 0..1 CodeableConcept "補助撥款狀況" "補助款項的撥款處理狀況。"
* subsidyProvision.subsidyMonth 0..1 integer "補助月分" "補助款項所屬月份。"
* subsidyProvision.cancellationReason 0..1 string "註銷原因" "補助資格或補助款項的註銷原因。"
* subsidyProvision.paymentSuspensionReason 0..1 string "停發原因" "補助款項的停發原因。"

* caseReport 0..* BackboneElement "個案通報" "個案通報"
* caseReport.caseServiceType 0..1 code "個案服務別" "個案通報所屬的服務領域。"
* caseReport.referredDate 0..1 date "受轉介日期" "受轉介單位受理轉介的日期。"
* caseReport.referralAcceptanceStatus 0..1 CodeableConcept "轉介受理情形" "受轉介單位的受理決定。"



* caseReport.caseInfoType 0..1 CodeableConcept "通報類型" "通報類型"
* caseReport.caseInfoTime 1..1 dateTime "通報時間" "通報時間"
* caseReport.reportTime 0..1 dateTime "通報時間" "個案通報建立的時間。"
* caseReport.isReferralCase 0..1 boolean "是否為轉介案件" "個案通報是否屬於轉介案件。"

* caseAssessment 0..* BackboneElement "個案服務評估" "個案服務評估"
* caseAssessment.caseServiceType 0..1 code "個案服務別" "個案服務所屬的服務領域。"
* caseAssessment.livingType 0..1 CodeableConcept "住所類型" "住所類型"
* caseAssessment.housingType 0..1 CodeableConcept "房屋類型" "房屋類型"
* caseAssessment.livingEnvironment 0..1 CodeableConcept "居住環境" "居住環境"
* caseAssessment.hasPrivateBedroom 0..1 CodeableConcept "是否有獨立臥房" "是否有獨立臥房"
* caseAssessment.currentLivingStatus 0..1 CodeableConcept "目前生活情形" "目前生活情形"
* caseAssessment.livingStatus 0..1 CodeableConcept "同住狀況" "同住狀況"
* caseAssessment.identifyDate 1..1 date "鑑定日期" "鑑定日期"
* caseAssessment.healthStatusLevel 0..1 CodeableConcept "健康狀況分級" "健康狀況分級"
* caseAssessment.healthStatusOption 0..* CodeableConcept "健康狀況選項" "健康狀況選項"
* caseAssessment.hasCatastrophicIllnessCard 0..1 boolean "是否持有重大傷病卡" "是否持有重大傷病卡"
* caseAssessment.catastrophicIllnessName 0..1 string "重大傷病病名" "重大傷病病名"
* caseAssessment.newDisabilityType 0..* CodeableConcept "新制障礙類別" "個案服務評估中的新制障礙類別。"
* caseAssessment.oldDisabilityType 0..* CodeableConcept "舊制障礙類別" "個案服務評估中的舊制障礙類別。"
* caseAssessment.newDisabilityCategory 0..* CodeableConcept "新制障礙類別內容" "個案服務評估中的新制障礙類別細項。"
* caseAssessment.disabilityCause 0..* CodeableConcept "致障原因" "致障原因"
* caseAssessment.physicalDisabilityType 0..* CodeableConcept "肢體障礙類別" "肢體障礙類別"
* caseAssessment.disabilityLocation 0..1 string "障礙部位" "障礙部位"
* caseAssessment.disabilityOnsetDate 0..1 date "致障時間" "致障時間"
* caseAssessment.icf 0..* CodeableConcept "ICF" "ICF"
* caseAssessment.icd 0..* CodeableConcept "ICD" "ICD"
* caseAssessment.disabilitySeverityLevel 0..1 CodeableConcept "障礙程度等級" "個案服務評估中的障礙程度等級。"
* caseAssessment.hasDisabilityCertificate 0..1 boolean "有無身心障礙證明" "有無身心障礙證明"
* caseAssessment.certificateNotIssuedReason 0..1 CodeableConcept "未領證原因" "未領證原因"
* caseAssessment.isDisabilityCertificatePermanent 0..1 boolean "身心障礙永久有效" "身心障礙永久有效"
* caseAssessment.relationCriminalRecord 0..* CodeableConcept "關係人不良犯罪紀錄" "關係人不良犯罪紀錄"
* caseAssessment.relationUsesDrugs 0..1 CodeableConcept "是否吸毒" "是否吸毒"
* caseAssessment.relationAlcoholAddiction 0..1 CodeableConcept "是否有酒癮" "是否有酒癮"
* caseAssessment.relationSmokes 0..1 CodeableConcept "是否抽菸" "是否抽菸"
* caseAssessment.adlSelfCare 0..1 CodeableConcept "生活自理" "生活自理"
* caseAssessment.adlMobility 0..1 CodeableConcept "肢體行動" "肢體行動"
* caseAssessment.adlWalkingAbility 0..1 CodeableConcept "四處走動" "四處走動"
* caseAssessment.adlHouseholdActivity 0..1 CodeableConcept "居家活動" "居家活動"
* caseAssessment.activitiesOfDailyLiving 0..1 BackboneElement "日常生活功能(ADL)" "日常生活功能評估的群組。"
* caseAssessment.relationSubstanceAbuse 0..1 BackboneElement "關係人物質濫用" "關係人物質濫用風險評估的群組。"
* caseAssessment.insuranceStatus 0..* CodeableConcept "保險狀況" "個案服務評估中的保險狀況。"
* caseAssessment.welfareIdentityType 0..* CodeableConcept "福利身分別" "個案服務評估中的福利身分別。"
* caseAssessment.visitTarget 0..1 CodeableConcept "訪視對象" "個案服務評估中的訪視對象。"
* caseAssessment.visitServiceMethod 0..1 CodeableConcept "訪視服務方式" "個案服務評估中的訪視服務方式。"
* caseAssessment.visitStartTime 0..1 dateTime "訪視開始時間" "個案服務評估中的訪視開始時間。"
* caseAssessment.visitEndTime 0..1 dateTime "訪視結束時間" "個案服務評估中的訪視結束時間。"
* caseAssessment.visitSummary 0..1 string "訪視摘要" "個案服務評估中的訪視摘要。"
* caseAssessment.isCaseOpened 0..1 CodeableConcept "是否開案" "評估審核後的開案處置。"
* caseAssessment.reviewOpinion 0..1 string "審核意見" "個案服務評估的審核意見。"
* caseAssessment.nonComplianceReason 0..1 string "不符原因" "個案服務評估不符條件時的原因。"
* caseAssessment.reviewResult 0..1 CodeableConcept "審核結果" "個案服務評估的審核結果。"
* caseAssessment.reviewCheckDate 0..1 date "審核日期" "個案服務評估審核完成的日期。"
* caseAssessment.medicationStatus 0..1 string "用藥情形" "個案服務評估中的用藥情形。"
* caseAssessment.disabledPersonCount 0..1 integer "身障者人數" "個案服務評估中的家庭身障者人數。"
* caseAssessment.crisisEventLocation 0..1 string "危機事件事發地點" "個案服務評估中的危機事件事發地點。"
* caseAssessment.familyAssessment 0..1 BackboneElement "家庭評估" "個案服務評估中的家庭評估群組。"
* caseAssessment.familyEnvironment 0..1 integer "家庭環境" "個案服務評估中的家庭環境評分。"
* caseAssessment.externalSupport 0..1 integer "外部支持" "個案服務評估中的外部支持評分。"
* caseAssessment.crossSystemCaseNumber 0..1 Identifier "跨系統個案編號" "其他社福系統使用的個案編號。"
* caseAssessment.caseNumber 0..1 Identifier "個案編號" "本系統使用的個案編號。"
* caseAssessment.historicalCaseNumber 0..1 Identifier "歷史案號" "舊系統或舊時期使用的個案編號。"
* caseAssessment.serviceCaseStatus 0..1 CodeableConcept "服務案件狀態" "個案受理與評估流程的詳細案件狀態"

* caseService 0..* BackboneElement "個案服務" "個案服務"
* caseService.caseServiceType 0..1 code "個案服務別" "個案服務所屬的服務領域。"
* caseService.diseaseType 0..* CodeableConcept "疾病類型" "疾病類型"
* caseService.assistiveDeviceName 0..1 string "輔具名稱" "輔具名稱"
* caseService.assistiveDeviceUsage 0..1 boolean "輔具使用情形" "輔具使用情形"
* caseService.disabilityAssessmentDate 0..1 date "身心障礙鑑定日期" "個案服務中的身心障礙鑑定日期。"
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
* caseService.ownerName 0..1 HumanName "主責人員姓名" "主責人員姓名"

* caseReferral 0..* BackboneElement "個案轉介" "個案轉介"
* caseReferral.referralDate 0..1 date "轉介日期" "提出個案轉介請求的日期。"
* caseReferral.referralReason 0..1 string "轉介原因" "提出個案轉介請求的理由。"
* caseReferral.isReferred 0..1 boolean "是否轉介" "結案或處遇時是否決定向外轉介。"
* caseReferral.referralProcessingStatus 0..1 CodeableConcept "轉介處理情形" "受轉介單位後續處理的狀態"
* caseReferral.caseReferTime 0..1 dateTime "轉介時間" "轉介時間"
* caseReferral.caseReferDate 0..1 date "轉介日期" "轉介日期"
* caseReferral.subsidyServiceType 0..1 code "申請補助別" "轉介申請所涉補助類別。"
* caseReferral.caseServiceType 0..1 code "個案服務別" "轉介申請所涉服務領域。"

* caseClosure 0..* BackboneElement "個案結案" "個案結案"
* caseClosure.caseClosingDate 0..1 date "結案日期" "案件結案的日期。"
* caseClosure.caseClosingReason 0..1 CodeableConcept "結案原因" "案件結案的原因。"
* caseClosure.caseServiceType 0..1 code "個案服務別" "結案案件所屬的服務領域。"

* officialDocument 0..* BackboneElement "共用公文" "共用公文"
* officialDocument.officialDocumentNumber 0..1 Identifier "公文文號" "公文文號"
* officialDocument.officialDocumentDate 0..1 date "核准文號日期／公文日期" "核准文號日期或公文日期"
* officialDocument.approvalDocumentDate 0..1 date "核准文號日期／公文日期" "核准文號日期或公文日期。"
* officialDocument.approvalDocumentDate ^definition = """approvalDocumentDate
* officialDocument.officialDocumentType 0..1 CodeableConcept "公文類型" "公文類型"


Mapping: TWSSBaseToServiceRequest
Id: twss-base-to-servicerequest
Title: "Mapping to TWSSBase ServiceRequest"
Source: TWSSBaseModel
Target: "https://sfaa.gov.tw/base/StructureDefinition/ServiceRequest-case-report-twss-base"

* caseReport.reportTime -> "ServiceRequest.authoredOn"
* caseReport.caseInfoTime -> "ServiceRequest.authoredOn"
* caseReport.caseInfoType -> "ServiceRequest.orderDetail"
* caseReport.caseServiceType -> "ServiceRequest.orderDetail"
* caseAssessment.caseServiceType -> "ServiceRequest.orderDetail"
* caseReport.isReferralCase -> "ServiceRequest.extension"

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
* caseBasicInfo.isBornBeforeROC -> "Patient.extension[birthDateBeforeROC]"
* caseBasicInfo.age -> "Patient.extension[age]"
* caseBasicInfo.isBirthDateUnknown -> "Patient.extension[birthDateUnknown]"
* caseBasicInfo.country -> "Patient.address.country"
* caseBasicInfo.district -> "Patient.address.district"
* caseBasicInfo.city -> "Patient.address.city"
* caseBasicInfo.address -> "Patient.address"
* caseBasicInfo.village -> "Patient.address.extension[village]"
* caseBasicInfo.neighborhood -> "Patient.address.extension[neighborhood]"
* caseBasicInfo.postalCode -> "Patient.address.postalCode"
* caseBasicInfo.nationality -> "Patient.extension[nationality]"
* caseBasicInfo.ethnicGroup -> "Patient.extension[ethnicGroup]"
* caseBasicInfo.aborigineLanguage -> "Patient.communication.language"
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
* caseBasicInfo.address -> "Address"
* caseBasicInfo.village -> "Address.extension.where(url = 'https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/tw-village')"
* caseBasicInfo.neighborhood -> "Address.extension.where(url = 'https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/tw-neighborhood')"
* caseBasicInfo.postalCode -> "Address.postalCode"
* relatedPersonBasicInfo.relationAddress -> "Address"
* relatedPersonBasicInfo.relationDistrict -> "Address.district"
* relatedPersonBasicInfo.relationCity -> "Address.city"
* relatedPersonBasicInfo.relationVillage -> "Address.extension[village]"
* relatedPersonBasicInfo.relationNeighborhood -> "Address.extension[neighborhood]"
* relatedPersonBasicInfo.relationPostalCode -> "Address.postalCode"
* organizationBasicInfo.organizationDistrict -> "Address.district"
* organizationBasicInfo.organizationCity -> "Address.city"
* organizationBasicInfo.organizationAddress -> "Address"
* organizationBasicInfo.organizationVillage -> "Address.extension[village]"
* organizationBasicInfo.organizationNeighborhood -> "Address.extension[neighborhood]"
* organizationBasicInfo.organizationPostalCode -> "Address.postalCode"
* organizationOtherInfo.adoptionManagerAddress -> "Address"
* serviceProviderBasicInfo.practitionAddress -> "Address"
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
* relatedPersonBasicInfo.isRelationIdentityUnknown -> "RelatedPerson.extension[identifierUnknown]"
* relatedPersonBasicInfo.relationNumber -> "RelatedPerson.identifier[relationNumber]"
* relatedPersonBasicInfo.relationGender -> "RelatedPerson.gender"
* relatedPersonBasicInfo.relationBirthDate -> "RelatedPerson.birthDate"
* relatedPersonBasicInfo.relationAge -> "RelatedPerson.extension[age]"
* relatedPersonBasicInfo.relationAddress -> "RelatedPerson.address"
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
* relatedPersonBasicInfo.isPrimaryCaregiver -> "RelatedPerson.extension[isPrimaryCaregiver]"
* relatedPersonBasicInfo.isGuardian -> "RelatedPerson.extension[isGuardian]"
* relatedPersonBasicInfo.isPrimaryContact -> "RelatedPerson.extension[isPrimaryContact]"

Mapping: TWSSBaseToLivingConditionQuestionnaireResponse
Id: twss-base-to-living-condition-questionnaire-response
Title: "Mapping to TWSSBase Living Condition QuestionnaireResponse"
Source: TWSSBaseModel
Target: "https://sfaa.gov.tw/base/StructureDefinition/QuestionnaireResponse-twss-base"

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
Target: "https://sfaa.gov.tw/base/StructureDefinition/QuestionnaireResponse-twss-base"

* caseAssessment.relationCriminalRecord -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/related-person-risk-assessment').item.where(linkId = '3').item.where(linkId = '3.2').answer.valueCoding"
* caseAssessment.relationUsesDrugs -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/related-person-risk-assessment').item.where(linkId = '3').item.where(linkId = '3.3').item.where(linkId = '3.3.1').answer.valueCoding"
* caseAssessment.relationAlcoholAddiction -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/related-person-risk-assessment').item.where(linkId = '3').item.where(linkId = '3.3').item.where(linkId = '3.3.2').answer.valueCoding"
* caseAssessment.relationSmokes -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/related-person-risk-assessment').item.where(linkId = '3').item.where(linkId = '3.3').item.where(linkId = '3.3.3').answer.valueCoding"

Mapping: TWSSBaseToHealthDiseaseQuestionnaireResponse
Id: twss-base-to-health-disease-questionnaire-response
Title: "Mapping to TWSSBase Health Disease QuestionnaireResponse"
Source: TWSSBaseModel
Target: "https://sfaa.gov.tw/base/StructureDefinition/QuestionnaireResponse-twss-base"

* caseAssessment.hasCatastrophicIllnessCard -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/health-disease-status').item.where(linkId = '6.1').answer.valueBoolean"
* caseAssessment.catastrophicIllnessName -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/health-disease-status').item.where(linkId = '6.2').answer.valueString"
* caseAssessment.healthStatusLevel -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/health-disease-status').item.where(linkId = '6.3').answer.valueCoding"
* caseAssessment.healthStatusOption -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/health-disease-status').item.where(linkId = '6.4').answer.valueCoding"
* caseService.diseaseType -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/health-disease-status').item.where(linkId = '6.5').answer.valueCoding"
* caseAssessment.icd -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/health-disease-status').item.where(linkId = '6.6').answer.valueCoding"

Mapping: TWSSBaseToDisabilityStatusQuestionnaireResponse
Id: twss-base-to-disability-status-questionnaire-response
Title: "Mapping to TWSSBase Disability Status QuestionnaireResponse"
Source: TWSSBaseModel
Target: "https://sfaa.gov.tw/base/StructureDefinition/QuestionnaireResponse-twss-base"

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
* caseService.disabilityAssessmentDate -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/disability-status').item.where(linkId = '7.2').item.where(linkId = '7.2.4').answer.valueDate"

Mapping: TWSSBaseToAssessmentQuestionnaireResponse
Id: twss-base-to-assessment-questionnaire-response
Title: "Mapping to TWSSBase Assessment QuestionnaireResponse"
Source: TWSSBaseModel
Target: "https://sfaa.gov.tw/base/StructureDefinition/QuestionnaireResponse-twss-base"

* caseAssessment.insuranceStatus -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/welfare-economic-status').item.where(linkId = '10.2').answer.valueCoding"
* caseAssessment.welfareIdentityType -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/welfare-economic-status').item.where(linkId = '10.3').answer.valueCoding"
* subsidyApplication.receivedSubsidyType -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/welfare-economic-status').item.where(linkId = '10.1').item.where(linkId = '10.1.1').answer.valueCoding"
* subsidyApplication.receivedSubsidyAmount -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/welfare-economic-status').item.where(linkId = '10.1').item.where(linkId = '10.1.2').answer.valueDecimal"
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
* caseAssessment.disabilityLocation -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/disability-status').item.where(linkId = '7.1').item.where(linkId = '7.1.2').answer.valueCoding"
* caseService.assistiveDeviceName -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/assistive-device-status').item.where(linkId = '8').item.where(linkId = '8.1').answer.valueString"
* caseService.assistiveDeviceUsage -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/assistive-device-status').item.where(linkId = '8').item.where(linkId = '8.2').answer.valueBoolean"

Mapping: TWSSBaseToADLQuestionnaireResponse
Id: twss-base-to-adl-questionnaire-response
Title: "Mapping to TWSSBase ADL QuestionnaireResponse"
Source: TWSSBaseModel
Target: "https://sfaa.gov.tw/base/StructureDefinition/QuestionnaireResponse-twss-base"

* caseAssessment.adlSelfCare -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/twss-adl-assessment').item.where(linkId = '9').item.where(linkId = '9.1').answer.valueCoding"
* caseAssessment.adlMobility -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/twss-adl-assessment').item.where(linkId = '9').item.where(linkId = '9.2').answer.valueCoding"
* caseAssessment.adlWalkingAbility -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/twss-adl-assessment').item.where(linkId = '9').item.where(linkId = '9.3').answer.valueCoding"
* caseAssessment.adlHouseholdActivity -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/twss-adl-assessment').item.where(linkId = '9').item.where(linkId = '9.4').answer.valueCoding"

Mapping: TWSSBaseToPractitionerEducationObservation
Id: twss-base-to-practitioner-education-observation
Title: "Mapping to TWSSBase Practitioner Education Observation"
Source: TWSSBaseModel
Target: "https://sfaa.gov.tw/base/StructureDefinition/PractitionerEducationObservation-twss-base"

* serviceProviderProfessionalInfo.practitionEnrollmentYear -> "Observation.component[enrollmentYear].valueInteger"
* serviceProviderProfessionalInfo.practitionGraduationSchoolName -> "Observation.component[graduationSchool].valueString"
* serviceProviderProfessionalInfo.highestEducation -> "Observation.component[educationLevel].valueCodeableConcept"
* serviceProviderProfessionalInfo.practitionMajor -> "Observation.component[major].valueString"
* serviceProviderProfessionalInfo.isSocialWelfareRelatedEducation -> "Observation.component[socialWelfareRelated].valueBoolean"

Mapping: TWSSBaseToPractitionerTrainingObservation
Id: twss-base-to-practitioner-training-observation
Title: "Mapping to TWSSBase Practitioner Training Observation"
Source: TWSSBaseModel
Target: "https://sfaa.gov.tw/base/StructureDefinition/PractitionerTrainingObservation-twss-base"

* serviceProviderProfessionalInfo.trainingCourseName -> "Observation.component[courseName].valueString"
* serviceProviderProfessionalInfo.trainingCourseHours -> "Observation.component[courseHours].valueQuantity"
* serviceProviderProfessionalInfo.trainingCourseType -> "Observation.component[courseType].valueCodeableConcept"
* serviceProviderProfessionalInfo.courseProviderUnit -> "Observation.component[courseProvider].valueString"

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

* subsidyApplication.aidYear -> "Coverage.extension[aidYear]"
* subsidyApplication.aidStartYearMonth -> "Coverage.period"
* subsidyApplication.aidEndYearMonth -> "Coverage.period"

Mapping: TWSSBaseToClaim
Id: twss-base-to-claim
Title: "Mapping to TWSSBase Claim"
Source: TWSSBaseModel
Target: "https://sfaa.gov.tw/base/StructureDefinition/Claim-twss-base"

* subsidyApplication.applicantDocumentCompletionDate -> "Claim.supportingInfo[documentsComplete].timingDate"
* subsidyApplication.appDate -> "Claim.created"
* subsidyApplication.isOnlineApplication -> "Claim.supportingInfo:applicationChannel.code"
* subsidyApplication.applicant -> "Claim.supportingInfo[applicant].valueReference"
* subsidyApplication.applicantBankAccount -> "Claim.supportingInfo[bankAccount].valueString"
* subsidyApplication.aidStartYearMonth -> "Claim.billablePeriod"
* subsidyApplication.aidEndYearMonth -> "Claim.billablePeriod"
* subsidyApplication.subsidyServiceType -> "Claim.item.productOrService"
* subsidyApplication.subsidyRatio -> "Claim.item.factor"

Mapping: TWSSBaseToCondition
Id: twss-base-to-condition
Title: "Mapping to TWSSBase Condition"
Source: TWSSBaseModel
Target: "https://sfaa.gov.tw/base/StructureDefinition/Condition-twss-base"

* caseAssessment.identifyDate -> "Condition.recordedDate"
* caseAssessment.healthStatusLevel -> "Condition.severity"
* caseAssessment.healthStatusOption -> "Condition.code.coding[health-status-option]"
* caseAssessment.catastrophicIllnessName -> "Condition.code"
* caseAssessment.icd -> "Condition.code"
* caseService.diseaseType -> "Condition.code"

Mapping: TWSSBaseToDisabilityCertificateObservation
Id: twss-base-to-disability-certificate-observation
Title: "Mapping to TWSSBase Disability Certificate Observation"
Source: TWSSBaseModel
Target: "https://sfaa.gov.tw/base/StructureDefinition/DisabilityCertificateObservation-twss-base"

* caseService.disabilityAssessmentDate -> "Observation.component[assessmentDate].valueDateTime"

Mapping: TWSSBaseToEpisodeOfCare
Id: twss-base-to-episodeofcare
Title: "Mapping to TWSSBase EpisodeOfCare"
Source: TWSSBaseModel
Target: "https://sfaa.gov.tw/base/StructureDefinition/EpisodeOfCare-twss-base"

* caseService.caseServiceType -> "EpisodeOfCare.type"
* caseClosure.caseServiceType -> "EpisodeOfCare.type"
* caseService.serviceCaseStatus -> "EpisodeOfCare.extension[serviceCaseStatus].valueCodeableConcept"
* caseService.caseOpeningDate -> "EpisodeOfCare.period.start"
* caseReferral.isReferred -> "EpisodeOfCare.extension[isReferredAtClosure]"
* caseService.ownerName -> "EpisodeOfCare.careManager"
* organizationBasicInfo.responsibleUnitCode -> "EpisodeOfCare.managingOrganization"
* organizationBasicInfo.responsibleUnit -> "EpisodeOfCare.managingOrganization"
* organizationBasicInfo.responsibleUnitDistrict -> "EpisodeOfCare.managingOrganization"

Mapping: TWSSBaseToOrganization
Id: twss-base-to-organization
Title: "Mapping to TWSSBase Organization"
Source: TWSSBaseModel
Target: "https://sfaa.gov.tw/base/StructureDefinition/Organization-twss-base"

* organizationBasicInfo.organizationDistrict -> "Organization.address.district"
* organizationBasicInfo.organizationCity -> "Organization.address.city"
* organizationBasicInfo.organizationAddress -> "Organization.address"
* organizationBasicInfo.organizationVillage -> "Organization.address.extension[village]"
* organizationBasicInfo.organizationNeighborhood -> "Organization.address.extension[neighborhood]"
* organizationBasicInfo.organizationPostalCode -> "Organization.address.postalCode"
* organizationBasicInfo.organizationCategory -> "Organization.type"
* organizationBasicInfo.organizationCode -> "Organization.identifier"
* organizationBasicInfo.organizationName -> "Organization.name"
* organizationBasicInfo.organizationTelecom -> "Organization.telecom"
* organizationBasicInfo.competentAuthorityCode -> "Organization.extension:competentAuthority"
* organizationBasicInfo.admissionCapacity -> "Organization.extension:capacity"
* organizationBasicInfo.serviceableBeds -> "Organization.extension:capacity"
* organizationBasicInfo.isolationBeds -> "Organization.extension:capacity"
* organizationBasicInfo.totalArea -> "Organization.extension:usableArea"
* organizationBasicInfo.indoorArea -> "Organization.extension:usableArea"
* organizationBasicInfo.outdoorArea -> "Organization.extension:usableArea"
* organizationBasicInfo.statutoryStaffingCount -> "Organization.extension:statutoryStaffing"
* organizationBasicInfo.registrationDate -> "Organization.extension:registrationDate"
* organizationBasicInfo.organizationLicenseNumber -> "Organization.identifier"
* organizationBasicInfo.organizationEstablishmentType -> "Organization.extension:establishmentType"
* organizationBasicInfo.organizationContactPerson -> "Organization.contact.name"
* organizationOtherInfo.liaisonPersonName -> "Organization.contact.name"

Mapping: TWSSBaseToMedicalInstitutionOrganization
Id: twss-base-to-medical-institution-organization
Title: "Mapping to TWSSBase Medical Institution Organization"
Source: TWSSBaseModel
Target: "https://sfaa.gov.tw/base/StructureDefinition/MedicalInstitutionOrganization-twss-base"

* organizationBasicInfo.medicalInstitutionName -> "Organization.name"

Mapping: TWSSBaseToOrganizationAuditObservation
Id: twss-base-to-organization-audit-observation
Title: "Mapping to TWSSBase Organization Audit Observation"
Source: TWSSBaseModel
Target: "https://sfaa.gov.tw/base/StructureDefinition/OrganizationAuditObservation-twss-base"

* organizationOtherInfo.organizationAuditResult -> "Observation.code"
* organizationOtherInfo.organizationAuditResult -> "Observation.valueBoolean"

Mapping: TWSSBaseToPenaltyLegalBasisObservation
Id: twss-base-to-penalty-legal-basis-observation
Title: "Mapping to TWSSBase Penalty Legal Basis Observation"
Source: TWSSBaseModel
Target: "https://sfaa.gov.tw/base/StructureDefinition/PenaltyLegalBasisObservation-twss-base"

* organizationOtherInfo.penaltyLegalBasis -> "Observation.code"
* organizationOtherInfo.penaltyLegalBasis -> "Observation.valueString"

Mapping: TWSSBaseToProvenance
Id: twss-base-to-provenance
Title: "Mapping to TWSSBase Provenance"
Source: TWSSBaseModel
Target: "https://sfaa.gov.tw/base/StructureDefinition/Provenance-twss-base"

* organizationOtherInfo.modifiedUnitCode -> "Provenance.agent.who.identifier"
* organizationOtherInfo.createdUnitCode -> "Provenance.agent.who.identifier"

Mapping: TWSSBaseToLocation
Id: twss-base-to-location
Title: "Mapping to TWSSBase Location"
Source: TWSSBaseModel
Target: "https://sfaa.gov.tw/base/StructureDefinition/Location-twss-base"

* organizationBasicInfo.organizationLongitude -> "Location.position.longitude"
* organizationBasicInfo.organizationLatitude -> "Location.position.latitude"
* serviceProviderProfessionalInfo.childcareAddress -> "Location.address"

Mapping: TWSSBaseToRulingDateObservation
Id: twss-base-to-ruling-date-observation
Title: "Mapping to TWSSBase Ruling Date Observation"
Source: TWSSBaseModel
Target: "https://sfaa.gov.tw/base/StructureDefinition/RulingDateObservation-twss-base"

* caseService.rulingDate -> "Observation.code"
* caseService.rulingDate -> "Observation.valueDateTime"

Mapping: TWSSBaseToPractitioner
Id: twss-base-to-practitioner
Title: "Mapping to TWSSBase Practitioner"
Source: TWSSBaseModel
Target: "https://sfaa.gov.tw/base/StructureDefinition/Practitioner-twss-base"

* organizationOtherInfo.disabilityStaffName -> "Practitioner.name"
* organizationOtherInfo.sitterName -> "Practitioner.name"
* organizationOtherInfo.adoptionManagerName -> "Practitioner.name"
* organizationOtherInfo.adoptionManagerIdentifier -> "Practitioner.identifier"
* organizationOtherInfo.adoptionManagerTelcom -> "Practitioner.telecom"
* organizationOtherInfo.adoptionManagerAddress -> "Practitioner.address"
* caseService.ownerName -> "Practitioner.name"

Mapping: TWSSBaseToPractitionerRole
Id: twss-base-to-practitionerrole
Title: "Mapping to TWSSBase PractitionerRole"
Source: TWSSBaseModel
Target: "https://sfaa.gov.tw/base/StructureDefinition/PractitionerRole-twss-base"

* organizationOtherInfo.dutyVerifyDate -> "PractitionerRole.period.start"
* organizationOtherInfo.quitDate -> "PractitionerRole.period.end"
* organizationOtherInfo.disabilityStaffName -> "PractitionerRole.practitioner"
* organizationOtherInfo.sitterName -> "PractitionerRole.practitioner"
* organizationOtherInfo.adoptionManagerName -> "PractitionerRole.practitioner"
* organizationBasicInfo.organizationName -> "PractitionerRole.organization"
* caseService.ownerName -> "PractitionerRole.practitioner"

Mapping: TWSSBaseToClaimResponse
Id: twss-base-to-claimresponse
Title: "Mapping to TWSSBase ClaimResponse"
Source: TWSSBaseModel
Target: "https://sfaa.gov.tw/base/StructureDefinition/ClaimResponse-twss-base"

* subsidyApplication.reviewCheckDate -> "ClaimResponse.created"
* subsidyApplication.approvedSubsidyAmount -> "ClaimResponse.item.adjudication.where(category.coding.code = 'approved-amount').amount"
* subsidyApplication.reviewOpinion -> "ClaimResponse.processNote.text"
* subsidyApplication.nonComplianceReason -> "ClaimResponse.item.adjudication.where(category.coding.code = 'eligibility-denial').reason.text"
* subsidyApplication.reviewResult -> "ClaimResponse.extension[reviewStatus]"
* subsidyProvision.subsidyDisbursementStatus -> "ClaimResponse.extension[paymentStatus]"
* subsidyProvision.subsidyMonth -> "ClaimResponse.extension[subsidyMonth]"
* subsidyProvision.cancellationReason -> "ClaimResponse.item.adjudication.where(category.coding.code = 'benefit-termination').reason.text"
* subsidyProvision.paymentSuspensionReason -> "ClaimResponse.item.adjudication.where(category.coding.code = 'benefit-suspension').reason.text"
* subsidyProvision.subsidyServiceType -> "ClaimResponse.request"
* subsidyProvision.applicant -> "ClaimResponse.request"
* subsidyProvision.applicantBankAccount -> "ClaimResponse.request"

Mapping: TWSSBaseToAssessmentReviewTask
Id: twss-base-to-assessment-review-task
Title: "Mapping to TWSSBase Assessment Review Task"
Source: TWSSBaseModel
Target: "https://sfaa.gov.tw/base/StructureDefinition/AssessmentReviewTask-twss-base"

* caseAssessment.reviewOpinion -> "Task.note.text"
* caseAssessment.nonComplianceReason -> "Task.note.text"
* caseAssessment.reviewResult -> "Task.businessStatus"
* caseAssessment.isCaseOpened -> "Task.output[caseDisposition].valueCodeableConcept"
* caseAssessment.reviewCheckDate -> "Task.lastModified"

Mapping: TWSSBaseToReferralServiceRequest
Id: twss-base-to-referral-servicerequest
Title: "Mapping to TWSSBase Referral ServiceRequest"
Source: TWSSBaseModel
Target: "https://sfaa.gov.tw/base/StructureDefinition/ServiceRequest-referral-twss-base"

* caseReferral.caseReferDate -> "ServiceRequest.authoredOn"
* caseReferral.referralDate -> "ServiceRequest.authoredOn"
* caseReferral.caseReferTime -> "ServiceRequest.occurrenceDateTime"
* caseReferral.referralReason -> "ServiceRequest.reasonCode"
* caseReferral.caseServiceType -> "ServiceRequest.orderDetail"
* caseReferral.subsidyServiceType -> "ServiceRequest.orderDetail"
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

* serviceProviderBasicInfo.practitionAddress -> "Practitioner.address"
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
* serviceProviderProfessionalInfo.certificateNumber -> "Practitioner.qualification.identifier"
* serviceProviderProfessionalInfo.practiceRegistrationNumber -> "Practitioner.qualification.identifier"
* serviceProviderProfessionalInfo.licenseName -> "Practitioner.qualification.code"

Mapping: TWSSBaseToServicePractitionerRole
Id: twss-base-to-service-practitioner-role
Title: "Mapping to TWSSBase Service Practitioner Role"
Source: TWSSBaseModel
Target: "https://sfaa.gov.tw/base/StructureDefinition/PractitionerRole-twss-base"

* serviceProviderProfessionalInfo.childcareAddress -> "PractitionerRole.location"
* serviceProviderProfessionalInfo.jobTitle -> "PractitionerRole.code"

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
Target: "https://sfaa.gov.tw/base/StructureDefinition/QuestionnaireResponse-twss-base"

* caseAssessment.activitiesOfDailyLiving -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/twss-adl-assessment').item.where(linkId = '9')"
* caseAssessment.relationSubstanceAbuse -> "QuestionnaireResponse.where(questionnaire = 'https://sfaa.gov.tw/base/Questionnaire/related-person-risk-assessment').item.where(linkId = '3').item.where(linkId = '3.3')"

Mapping: TWSSBaseToFinalRelatedPersonField
Id: twss-base-to-final-related-person-field
Title: "Mapping to TWSS Base RelatedPerson"
Source: TWSSBaseModel
Target: "https://sfaa.gov.tw/base/StructureDefinition/RelatedPerson-twss-base"

* relatedPersonBasicInfo.isAgent -> "RelatedPerson.extension[isLegalRepresentative]"

Mapping: TWSSBaseToFinalEpisodeOfCareField
Id: twss-base-to-final-episode-of-care-field
Title: "Mapping to TWSS Base EpisodeOfCare"
Source: TWSSBaseModel
Target: "https://sfaa.gov.tw/base/StructureDefinition/EpisodeOfCare-twss-base"

* caseClosure.caseClosingDate -> "EpisodeOfCare.where(status = 'finished').period.end"
* caseClosure.caseClosingReason -> "EpisodeOfCare.extension[caseCloseReason]"

Mapping: TWSSBaseToFinalDocumentReferenceField
Id: twss-base-to-final-document-reference-field
Title: "Mapping to TWSS Base DocumentReference"
Source: TWSSBaseModel
Target: "https://sfaa.gov.tw/base/StructureDefinition/DocumentReference-twss-base"

* officialDocument.approvalDocumentDate -> "DocumentReference.content.attachment.creation"
