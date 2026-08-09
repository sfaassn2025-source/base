Profile:        ConditionTWSSBase
Parent:         Condition
Id:             Condition-twss-base
Title:          "健康與障礙狀況-Condition TWSS Base"
Description:    "健康與障礙狀況-Condition TWSS Base Profile 表達社家署業務中的健康、障礙或診斷狀況。本 Profile 因 TWSS Base 的基數需求與 reference target 與 TW Core Condition 0.3.2 限制不同，故繼承原生 Condition，並沿用相容的 TW Core 0.3.2 規則。"
* ^version = "0.0.1"

* identifier MS
* identifier.use MS
* identifier.type MS
* identifier.system MS
* identifier.value MS
* identifier ^short = "此病情、問題或診斷的外部識別碼。"
* identifier ^definition = "由執行者或其他系統指定給此病情、問題或診斷的業務用識別碼，即使此 resource 作更新及在伺服器之間的傳遞，此識別碼仍保持不變。"
* identifier ^comment = "這是一個業務識別碼，不是一個 resource 識別碼。"

* clinicalStatus only CodeableConceptTW
* clinicalStatus MS
* clinicalStatus ^short = "active | recurrence | relapse | inactive | remission | resolved ，病情、問題或診斷的臨床狀態。"
* clinicalStatus ^binding.description = "應填入所綁定值集中的其中一個代碼。"
* clinicalStatus ^definition = "此病情、問題或診斷的臨床狀態"
* clinicalStatus ^comment = "data type 是 CodeableConcept，因為 clinicalStatus 涉及到一些臨床判斷，例如可能需要比所需的 FHIR 值集更多的特殊性。"

* verificationStatus only CodeableConceptTW
* verificationStatus MS
* verificationStatus ^short = "unconfirmed | provisional | differential | confirmed | refuted | entered-in-error ，支持或拒絕病情、問題或診斷的臨床狀態的驗證狀態。"
* verificationStatus ^binding.description = "應填入所綁定值集中的其中一個代碼。"
* verificationStatus ^definition = "支持此病情、問題或診斷的臨床狀態之驗證狀態"
* verificationStatus ^comment = "verificationStatus 不是必須的。例如當病人在急診室出現腹痛時，不一定會有驗證狀態。"

* category only CodeableConceptTW
* category MS
* category ^short = "problem-list-item | encounter-diagnosis ，指定病情、問題或診斷的類別。"
* category ^binding.description = "應填入所綁定值集中適合的代碼，確定無適合的代碼才可以使用其他值集的代碼來表示。"
* category ^definition = "指定此病情、問題或診斷的類別"
* category ^comment = "這種分類往往具有很強的情境性，在其他情境下可能顯得區分度不高，或沒有什麼用處。"

* severity only CodeableConceptTW
* severity MS
* severity from TWSSConditionSeverityVS (extensible)
* severity ^short = "病情、問題或診斷的主觀嚴重程度"
* severity ^binding.description = "身心障礙障礙等級或病情嚴重程度；輕度、中度、重度應優先使用 FHIR Condition severity 原值集之 SNOMED CT 代碼，無適合代碼時可使用 TWSS 補充碼。"
* severity ^definition = "臨床醫生對病情、問題或診斷嚴重程度的主觀評估"
* severity ^comment = "如有可能，最好用專門術語對嚴重程度進行編碼。"

* code only CodeableConceptTW
* code MS
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains
    icd10-cm-2023 0..1 MS and
    icd10-cm-2021 0..1 MS and
    icd10-cm-2014 0..1 MS and
    icd9-cm-2001 0..1 MS and
    health-status 0..1 MS and
    health-status-option 0..* MS and
    disease-type 0..* MS and
    absentOrUnknownProblem 0..1 MS and
    sct 0..1 MS
* code.coding[icd10-cm-2023] from TW2023ICD10CM (required)
* code.coding[icd10-cm-2021] from TW2021ICD10CM (required)
* code.coding[icd10-cm-2014] from TW2014ICD10CM (required)
* code.coding[icd9-cm-2001] from TW2001ICD9CM (required)
* code.coding[health-status] from TWSSHealthStatusVS (required)
* code.coding[health-status-option] from TWSSHealthStatusOptionVS (required)
* code.coding[disease-type] from TWSSDiseaseTypeVS (required)
* code.coding[absentOrUnknownProblem] from http://hl7.org/fhir/uv/ips/ValueSet/absent-or-unknown-problems-uv-ips (required)
* code.coding[sct] from TWConditionCodeSCT (required)
* code.coding[health-status] ^short = "身心健康狀況代碼。"
* code.coding[health-status] ^definition = "以 TWSS Base 身心健康狀況代碼表示此 Condition 所描述的身心健康或障礙相關狀況。"
* code.coding[health-status] ^binding.description = "應填入身心健康狀況值集中的其中一個代碼。"
* code.coding[health-status-option] ^short = "健康狀況選項代碼。"
* code.coding[health-status-option] ^definition = "以 TWSS Base 健康狀況選項代碼表示此 Condition 所描述的健康問題或狀況。"
* code.coding[disease-type] ^short = "疾病類型代碼。"
* code.text 0..1 MS
* code ^short = "病情、問題或診斷的識別"
* code ^binding.description = "此資料項目為可擴充綁定預設國際標準值集，但實作者可視實務專案需求使用以下 slices 中的任一值集。障礙類別應使用 TWSS Base 障礙類別代碼；ICD 診斷應使用對應 ICD slice。"
* code ^definition = "病情、問題或診斷的識別"
* code ^requirements = "0..1，主要用於說明敘述性 resource。"
* code ^comment = "並非所有術語使用都適合此一般模式；某些情況可能需要直接使用 Coding 或另行管理文字、編碼、翻譯及元素間關係。"

* bodySite only CodeableConceptTW
* bodySite MS
* bodySite from http://hl7.org/fhir/ValueSet/body-site (extensible)
* bodySite ^short = "如果相關請填寫解剖位置"
* bodySite ^binding.description = "描述解剖位置的代碼。可包括側面；應填入所綁定值集中適合的代碼，確定無適合的代碼才可以使用其他值集的代碼來表示。"
* bodySite ^definition = "此病情、問題或診斷表現出來的解剖位置。"
* bodySite ^comment = "只有在 Condition.code 中找到的代碼未隱含此資料項目概念時才使用。"

* subject only Reference(PatientTWSSBase)
* subject MS
* subject ^short = "誰有此病情、問題或診斷？"
* subject ^definition = "表示與此病情、問題或診斷紀錄相關的病人或實體集合。TWSS Base 使用 PatientTWSSBase。"

* encounter MS
* encounter ^short = "作為病情、問題或診斷紀錄的一部分的就醫（Encounter）紀錄。"
* encounter ^definition = "此病情、問題或診斷記載在哪次的 Encounter 紀錄，或者與此病情、問題或診斷紀錄密切相關的 Encounter 紀錄。"

* onset[x] only dateTime or Age or Period or Range or string
* onset[x] MS
* onset[x] ^short = "估計的或實際的日期、日期時間或年齡。"
* onset[x] ^definition = "醫師認為此病情、問題或診斷之推估或實際發生時間或日期時間等。"

* abatement[x] only dateTime or Age or Period or Range or string
* abatement[x] MS
* abatement[x] ^short = "何時解決或緩解。"
* abatement[x] ^definition = "病情、問題或診斷緩解或開始緩解的日期或估計日期。"

* recordedDate MS
* recordedDate ^short = "記錄的日期。"
* recordedDate ^definition = "recordedDate 表述此 Condition 記錄何時於系統中建立，這通常是系統產生的日期。TWSS Base 可用於鑑定日期、登錄日期或來源系統記錄日期。"

* recorder only Reference(PractitionerTWSSBase or PractitionerRoleTWSSBase)
* recorder MS
* recorder ^short = "誰記錄此病情、問題或診斷。"
* recorder ^definition = "記錄病情、問題或診斷內容並對其內容負責的個人。"

* asserter only Reference(PatientTWSSBase or RelatedPersonTWSSBase or PractitionerTWSSBase or PractitionerRoleTWSSBase)
* asserter MS
* asserter ^short = "聲稱有此病情、問題或診斷的人。"
* asserter ^definition = "提出此病情、問題或診斷說明的人。"

* stage.summary only CodeableConceptTW
* stage.type only CodeableConceptTW
* evidence.code only CodeableConceptTW
* stage.summary from http://hl7.org/fhir/ValueSet/condition-stage (extensible)
* stage.type from http://hl7.org/fhir/ValueSet/condition-stage-type (extensible)
* evidence.code from http://hl7.org/fhir/ValueSet/manifestation-or-symptom (extensible)
* note MS
* stage.summary ^short = "簡單的摘要（特定疾病）。"
* stage.summary ^binding.description = "描述病情、問題或診斷分期的代碼（例如：癌症分期）。應填入所綁定值集中適合的代碼，確定無適合的代碼才可以使用其他值集的代碼來表示。"
* stage.summary ^definition = "對分期的簡單摘要，如「第3期」。針對特定疾病的分期測定。"
* stage.type ^short = "分期的種類。"
* stage.type ^binding.description = "病情、問題或診斷分期種類的代碼（如臨床或病理）；應填入所綁定值集中適合的代碼，確定無適合的代碼才可以使用其他值集的代碼來表示。"
* stage.type ^definition = "分期的種類，如病理分期或臨床分期。"
* evidence.code ^short = "表現／症狀。"
* evidence.code ^binding.description = "病情、問題或診斷的表現或症狀之代碼；應填入所綁定值集中適合的代碼，確定無適合的代碼才可以使用其他值集的代碼來表示。"
* evidence.code ^definition = "導致記錄此病情、問題或診斷的表現或症狀。"
* note ^short = "關於此 Condition 的附加資訊。"
* note ^definition = "關於此 Condition 的附加資訊。這是一個一般的註釋／意見紀錄，用於描述病情、問題或診斷、其診斷和預後。"

// ----- TW Core 0.3.2 retained element definitions -----
// TWSS Base 以 FHIR R4 Condition 為基底；未與 TWSS 欄位需求衝突之元素說明與交換規則，沿用 TW Core Condition 0.3.2。
* asserter ^definition = "Individual who is making the condition statement.\r\nInformation source."
* . ^short = "有關病情、問題或診斷的詳細資訊"
* . ^definition = "一個臨床病情、問題、診斷或其他事件、情況、或臨床概念，已上升到需要關注的程度。"
* id ^short = "不重複的ID用以識別儲存在特定FHIR Server中的Condition紀錄，通常又稱為邏輯性ID。"
* id ^definition = "resource的邏輯ID，在resource的URL中使用。一旦指定，這個值永遠不會改變。"
* id ^comment = "一個resource使用新增操作（create operation）提交給伺服器時，此resource沒有id，它的id在resource被創建後由伺器分配/指定。"
* meta ^short = "此Condition Resource的metadata"
* meta ^definition = "關於resource的metadata。這是由基礎建設維護的內容。內容的更改可能並不總是與resource的版本更改相關聯。"
* implicitRules ^short = "創建此內容所依據的一組規則"
* implicitRules ^definition = "構建resource時遵循的一系列規則的參照，在處理內容時必須理解這些規則。通常這是對IG所定義之特殊規則及其他profiles的參照。"
* implicitRules ^comment = "宣告這套規則限制了內容只能被有限的交易夥伴所理解。這從本質上限制了資料的長期有用性。然而，現有的健康生態體系高度分裂，還沒有準備好以普遍可計算的方式定義、收集和交換資料。只要有可能，實作者和/或規範編寫者應該避免使用這個資料項目。通常在使用時，此URL是對IG的參照，此IG將這些特殊規則與其他profiles、value sets等一起定義為其敘述的一部分。"
* language ^short = "用以表述Condition Resource內容的語言。"
* language ^definition = "編寫此resource的語言"
* language ^binding.description = "人類語言；鼓勵使用CommonLanguages代碼表中的代碼，但不強制一定要使用此代碼表，你也可使用其他代碼表的代碼或單純以文字表示。"
* language ^comment = "提供語言是為了支援索引和可存取性（通常，文字表述轉語音等服務使用此語言標籤）。html lanuage tag適用於此敘述。resource上的語言標籤可用於指定從resource中的資料所產成的其他表述之語言。不是所有的內容都必須使用此語言。不應該假定Resource.language自動適用於敘述。如果指定語言，它也應該被指定在html中的div資料項目（關於xml:lang和html lang屬性之間的關係，見HTML5中的規則）。"
* text ^short = "Condition Resource之內容摘要以供人閱讀"
* text ^definition = "人可讀的敘述，包含resource的摘要，可用於向人表述resource的內容。敘述不需要對所有的結構化資料進行編碼，但需要包含足夠的細節使人在閱讀敘述時理解「臨床安全性」。resource定義有哪些內容應該在敘述中表示，以確保臨床安全。"
* text ^comment = "內嵌（contained）的resource沒有敘述，非內嵌（contained）的resource則 **建議應該（SHOULD）** 有敘述。有時resource可能只有文字表述，很少或沒有額外的結構化資料（只要滿足所有minOccurs=1的資料項目）。這可能出現在舊系統的資料，當資訊以 「文字表述區塊（text blob） 」的形式被取得，或者文字表述是原始輸入或說明，而編碼資訊稍後再添加。"
* identifier ^short = "此病情、問題或診斷的外部識別碼"
* identifier ^definition = "由執行者或其他系統指定給此病情、問題或診斷的業務用識別碼，即使此resource作更新及在伺服器之間的傳遞，此識別碼仍保持不變。"
* identifier ^requirements = "允許識別各參與系統所知的此病情、問題或診斷資訊，並在各伺服器之間保持一致的方式。"
* identifier ^comment = "這是一個業務識別碼，不是一個resource識別碼（詳見討論）。最好的做法是該識別碼只出現在單個resource實例上，但是業務實務有可能會規定可以在多個resource實例中具有相同識別碼—甚至可能具有不同的resource型例。例如：多個 「Patient（病人）」和 「Person（個人）」resource實例可能共用同一個社會保險號碼。"
* clinicalStatus ^short = "active | recurrence | relapse | inactive | remission | resolved ，病情、問題或診斷的臨床狀態。"
* clinicalStatus ^binding.description = "應填入所綁定值集中的其中一個代碼。"
* clinicalStatus ^definition = "此病情、問題或診斷的臨床狀態"
* clinicalStatus ^comment = "data type是CodeableConcept，因為clinicalStatus涉及到一些臨床判斷，例如：可能需要比所需的FHIR值集更多的特殊性。例如：SNOMED編碼可能允許更多的特殊性。"
* verificationStatus ^short = "unconfirmed | provisional | differential | confirmed | refuted | entered-in-error ，支持或拒絕病情、問題或診斷的臨床狀態的驗證狀態。"
* verificationStatus ^binding.description = "應填入所綁定值集中的其中一個代碼。"
* verificationStatus ^definition = "支持此病情、問題或診斷的臨床狀態之驗證狀態"
* verificationStatus ^comment = "verificationStatus不是必須的。例如：當病人在急診室出現腹痛時，不可能出現驗證狀態。資料類型是CodeableConcept，因為verificationStatus涉及到一些臨床判斷，因此可能需要比所需的FHIR值集更多的特殊性。例如：SNOMED編碼可能允許更多的特殊性。"
* category ^short = "problem-list-item | encounter-diagnosis ，指定病情、問題或診斷的類別。"
* category ^binding.description = "應填入所綁定值集中適合的代碼，確定無適合的代碼才可以使用其他值集的代碼來表示。"
* category ^definition = "指定此病情、問題或診斷的類別"
* category ^comment = "這種分類往往具有很強的情境性，在其他情境下可能顯得區分度不高，或沒有什麼用處。"
* severity ^short = "病情、問題或診斷的主觀嚴重程度"
* severity ^binding.description = "身心障礙障礙等級或病情嚴重程度；輕度、中度、重度應優先使用 FHIR Condition severity 原值集之 SNOMED CT 代碼，無適合代碼時可使用 TWSS 補充碼。"
* severity ^definition = "臨床醫生對病情、問題或診斷嚴重程度的主觀評估"
* severity ^comment = "如有可能，最好用專門術語對嚴重程度進行編碼。"
* code ^short = "病情、問題或診斷的識別"
* code ^binding.description = "此資料項目為可擴充綁定預設國際標準值集，但實作者可視實務專案需求使用以下 slices 中的任一值集。障礙類別應使用 TWSS Base 障礙類別代碼；ICD 診斷應使用對應 ICD slice。"
* code ^definition = "病情、問題或診斷的識別"
* code ^requirements = "0..1，主要用於說明敘述性resource。"
* code.coding ^short = "由專門術語系統（terminology system）定義的代碼。"
* code.coding ^definition = "由專門術語系統（terminology system）所定義之代碼的參照。"
* code.coding ^requirements = "允許使用者在不知道識別碼系統的情況下利用識別碼"
* code.coding ^comment = "代碼可以在列舉清單（enumerations）或代碼清單（code lists）中非常隨意地定義，直至有非常正式的定義，如SNOMED CT—更多資訊見HL7 v3核心原則（Core Principles）。編碼的排序是未定義的因而 **必須沒有（SHALL NOT）** 被用來推斷意義。一般來說，最多只有一個編碼值（coding values）會被標記為UserSelected = true。"
* code.coding[icd10-cm-2021] ^short = "此為臺灣衛生福利部中央健康保險署維護之2021年中文版ICD-10-CM代碼，涵蓋範圍相對完整，可免費使用，可優先選用此代碼。"
* code.coding[icd10-cm-2021] ^definition = "由專門術語系統（terminology system）所定義之代碼的參照。"
* code.coding[icd10-cm-2021] ^requirements = "允許使用者在不知道識別碼系統的情況下利用識別碼"
* code.coding[icd10-cm-2021] ^comment = "代碼可以在列舉清單（enumerations）或代碼清單（code lists）中非常隨意地定義，直至有非常正式的定義，如SNOMED CT—更多資訊見HL7 v3核心原則（Core Principles）。編碼的排序是未定義的因而 **必須沒有（SHALL NOT）** 被用來推斷意義。一般來說，最多只有一個編碼值（coding values）會被標記為UserSelected = true。"
* code.coding[icd10-cm-2021] ^binding.description = "病情、問題或診斷的識別；應填入所綁定值集中的其中一個代碼。"
* code.coding[icd10-cm-2014] ^short = "此為臺灣衛生福利部中央健康保險署維護之2014年中文版ICD-10-CM代碼，涵蓋範圍相對完整，可免費使用，可優先選用此代碼。"
* code.coding[icd10-cm-2014] ^definition = "由專門術語系統（terminology system）所定義之代碼的參照。"
* code.coding[icd10-cm-2014] ^requirements = "允許使用者在不知道識別碼系統的情況下利用識別碼"
* code.coding[icd10-cm-2014] ^comment = "代碼可以在列舉清單（enumerations）或代碼清單（code lists）中非常隨意地定義，直至有非常正式的定義，如SNOMED CT—更多資訊見HL7 v3核心原則（Core Principles）。編碼的排序是未定義的因而 **必須沒有（SHALL NOT）** 被用來推斷意義。一般來說，最多只有一個編碼值（coding values）會被標記為UserSelected = true。"
* code.coding[icd10-cm-2014] ^binding.description = "病情、問題或診斷的識別；應填入所綁定值集中的其中一個代碼。"
* code.coding[absentOrUnknownProblem] ^short = "不存在的問題或未知問題的代碼"
* code.coding[absentOrUnknownProblem] ^definition = "表示「absent problem」或「problems unknown」的代碼"
* code.coding[absentOrUnknownProblem] ^requirements = "允許使用者在不知道識別碼系統的情況下利用識別碼"
* code.coding[absentOrUnknownProblem] ^comment = "代碼可以在列舉清單（enumerations）或代碼清單（code lists）中非常隨意地定義，直至有非常正式的定義，如SNOMED CT—更多資訊見HL7 v3核心原則（Core Principles）。編碼的排序是未定義的因而 **必須沒有（SHALL NOT）** 被用來推斷意義。一般來說，最多只有一個編碼值（coding values）會被標記為UserSelected = true。"
* code.coding[absentOrUnknownProblem] ^binding.description = "應填入所綁定值集中的其中一個代碼。"
* code.coding[sct] ^short = "此為SNOMED CT診斷代碼，若機構已有購買相關授權，亦可使用。"
* code.coding[sct] ^definition = "由專門術語系統（terminology system）所定義之代碼的參照。"
* code.coding[sct] ^requirements = "允許使用者在不知道識別碼系統的情況下利用識別碼"
* code.coding[sct] ^comment = "代碼可以在列舉清單（enumerations）或代碼清單（code lists）中非常隨意地定義，直至有非常正式的定義，如SNOMED CT—更多資訊見HL7 v3核心原則（Core Principles）。編碼的排序是未定義的因而 **必須沒有（SHALL NOT）** 被用來推斷意義。一般來說，最多只有一個編碼值（coding values）會被標記為UserSelected = true。"
* code.coding[sct] ^binding.description = "應填入所綁定值集中的其中一個代碼。"
* code.text ^short = "概念的文字表示法"
* code.text ^definition = "輸入資料的使用者所見／所選／所說的人類可讀文字表述，和（或）其代表使用者的預期含義。"
* code.text ^requirements = "專門術語中的代碼並不總是能捕捉人類使用的細微差別的正確意義，或者根本就沒有合適的代碼；這些情況下，文字表述被用來捕捉來源的全部意義。"
* code.text ^comment = "很多時候，此文字表述與其中一個代碼的顯示名稱相同。"
* bodySite ^short = "如果相關請填寫解剖位置"
* bodySite ^binding.description = "描述解剖位置的代碼。可包括側面；應填入所綁定值集中適合的代碼，確定無適合的代碼才可以使用其他值集的代碼來表示。"
* bodySite ^definition = "此病情、問題或診斷表現出來的解剖位置"
* bodySite ^comment = "只有在Condition.code中找到的代碼未隱含此資料項目概念時才使用。如果使用案例（use-case）要求將BodySite作為一個單獨的resource來處理（例如：識別和追踪），那麼就使用標準的資料項目擴充方式來擴充bodySite。可以是一個摘要代碼，也可以是對一個非常精確位置定義的參照，或者兩者都是。"
* subject ^short = "誰有此病情、問題或診斷？"
* subject ^definition = "表示與此病情、問題或診斷紀錄相關的病人或實體集合（Group resource）"
* subject ^requirements = "實體集合（Group resource）通常用於獸醫或公共衛生的案例"
* encounter ^short = "作為病情、問題或診斷紀錄的一部分的就醫（Encounter）紀錄"
* encounter ^definition = "此病情、問題或診斷記載在哪次的「就醫（Encounter）」紀錄或者與此病情、問題或診斷紀錄密切相關的「就醫（Encounter）」紀錄"
* encounter ^comment = "通常是此病情、問題或診斷發生的就醫事件，雖然有些活動可能在就醫結束之前或之後開始，但仍與就醫事件的情境有關。這筆紀錄表明與此病情、問題或診斷紀錄相關的就醫事件（Encounter）。「新的」診斷的情況下，反映病情、問題或診斷的持續/修訂資訊可能與首次就醫所知道的病情、問題或診斷不同。"
* onset[x] ^short = "估計的或實際的日期、日期—時間或年齡。"
* onset[x] ^definition = "醫師認為此病情、問題或診斷之推估或實際發生時間或日期時間等"
* onset[x] ^comment = "onsetAge通常是指病人說明病情何時開始發生的年齡"
* abatement[x] ^short = "何時解決/緩解"
* abatement[x] ^definition = "病情、問題或診斷緩解或開始緩解的日期或估計日期。因為與「緩解（remissio）」或 「解決（resolution）」相關的許多過多含義—病情、問題或診斷不會真正解決，但它們可以緩解，所以稱為「緩解 （abatement）」，"
* abatement[x] ^comment = "解決（resolution）和緩解（remission）之間沒有明確的區別，因為在許多情況下，兩者的區別並不明顯。當病人說明病情、問題或診斷緩解的年齡時，一般使用onsetAge。如果沒有abatement這個資料項目，就不知道狀況是否已經解決或緩解；應用程式和使用者一般應假定病情、問題或診斷仍存在。當abatementString存在時，它意味著病情、問題或診斷已緩解。"
* recordedDate ^short = "記錄的日期"
* recordedDate ^definition = "recordedDate表述此Condition記錄何時於系統中建立，這通常是系統產生的日期。"
* recorder ^short = "誰記錄此病情、問題或診斷"
* recorder ^definition = "記錄病情、問題或診斷內容並對其內容負責的個人"
* asserter ^short = "聲稱有此病情、問題或診斷的人"
* asserter ^definition = "提出此病情、問題或診斷說明的人"
* stage ^short = "分期（stage）／分級（grade），通常是正式的評估。"
* stage ^definition = "病情、問題或診斷的臨床分期或分級，可能包括正式的嚴重程度評估。"
* stage.summary ^short = "簡單的摘要（特定疾病）。"
* stage.summary ^binding.description = "描述病情、問題或診斷分期的代碼（例如：癌症分期）。應填入所綁定值集中適合的代碼，確定無適合的代碼才可以使用其他值集的代碼來表示。"
* stage.summary ^definition = "對分期的簡單摘要，如「第3期」。針對特定疾病的分期測定。"
* stage.assessment ^short = "正式的評估記錄"
* stage.assessment ^definition = "分期評估所依據的證據之正式記錄"
* stage.type ^short = "分期的種類"
* stage.type ^binding.description = "病情、問題或診斷分期種類的代碼（如臨床或病理）；應填入所綁定值集中適合的代碼，確定無適合的代碼才可以使用其他值集的代碼來表示。"
* stage.type ^definition = "分期的種類，如病理分期或臨床分期。"
* evidence ^short = "支持的證據"
* evidence ^definition = "作為病情、問題或診斷驗證狀態基礎的支持證據／臨床表現，如證實或反駁病情、問題或診斷的證據。"
* evidence ^comment = "證據可以是一個簡單的編碼症狀／臨床表現的清單，或參考檢驗檢查或者正式評估，或者兩者都是。"
* evidence.code ^short = "表現／症狀"
* evidence.code ^binding.description = "病情、問題或診斷的表現或症狀之代碼；應填入所綁定值集中適合的代碼，確定無適合的代碼才可以使用其他值集的代碼來表示。"
* evidence.code ^definition = "導致記錄此病情、問題或診斷的表現或症狀"
* evidence.detail ^short = "在其他地方找到的支持資訊"
* evidence.detail ^definition = "其他相關資訊的連接，包括病理報告。"
* note ^short = "關於此Condition的附加資訊"
* note ^definition = "關於此Condition的附加資訊。這是一個一般的註釋／意見紀錄，用於描述病情、問題或診斷、其診斷和預後。"
// ----- End TW Core 0.3.2 retained element definitions -----

