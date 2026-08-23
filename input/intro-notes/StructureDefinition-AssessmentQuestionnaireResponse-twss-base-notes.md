{% include quickstart-note.md %}

#### 使用說明

本 Profile 用於個案通報後的正式服務評估。實作者應以 `basedOn` 參照個案通報 ServiceRequest，並以 `encounter` 參照該次個案服務評估 Encounter；`subject` 應為受評估個案。

其他服務階段或結案階段的 QuestionnaireResponse，不應套用本 Profile，以避免將實際服務或結案資料誤寫成評估紀錄。
