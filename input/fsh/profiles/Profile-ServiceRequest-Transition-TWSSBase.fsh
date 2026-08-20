Profile: ServiceRequestTransitionTWSSBase
Parent: ServiceRequestTWSSBase
Id: ServiceRequest-transition-twss-base
Title: "個案轉銜-ServiceRequest TWSS Base"
Description: "個案轉銜 ServiceRequest Profile 表達原服務系統啟動個案轉銜並請轉銜系統處理的請求。"
* ^version = "0.0.1"
* code = TWSSEpisodeOfCareType#disability-transition "身心障礙轉銜服務"
* code from TWSSServiceRequestCodeVS (required)
* code ^short = "個案轉銜請求項目"
* subject 1..1 MS
* requester 1..1 MS
* requester ^short = "發起轉銜的原系統、單位或人員"
* performer 1..1 MS
* performer ^short = "負責處理轉銜的系統、單位或人員"
* authoredOn 1..1 MS
* authoredOn ^short = "轉銜日期"
