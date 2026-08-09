Instance: servicerequest-base
InstanceOf: ServiceRequestTWSSBase
Title: "申請或服務請求基礎範例"
Description: "符合 ServiceRequest TWSS Base Profile 的基礎申請或服務請求範例。"
Usage: #example

* identifier[0].type.text = "申請案件編號"
* identifier[0].system = "https://example.org/twss/application-action-id"
* identifier[0].value = "BASE-APP-2026-0001"
* status = #active
* intent = #order
* category = http://snomed.info/sct#410606002 "Social service procedure (procedure)"
* code.coding[0] = TWSSEpisodeOfCareType#early-intervention "兒童發展通報轉介及個案管理服務"
* code.text = "兒童發展通報轉介及個案管理服務"
* subject = Reference(pat-min)
* authoredOn = "2026-06-30T09:00:00+08:00"
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <h3><b>申請或服務請求基礎資料</b></h3>
  <blockquote>
    <p><b>申請案件編號</b>：BASE-APP-2026-0001</p>
  </blockquote>
  <p><b>申請狀態</b>：Active</p>
  <p><b>申請意圖</b>：Order</p>
  <p><b>服務請求類型</b>：Social service procedure <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（ <a href="http://snomed.info/id/410606002">SNOMED CT</a>#410606002）</span></p>
  <p><b>申請/服務項目</b>：兒童發展通報轉介及個案管理服務 <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（ <a href="CodeSystem-twss-episode-of-care-type.html">TWSS 個案服務或補助案件類型</a>#early-intervention）</span></p>
  <p><b>個案</b>： <a href="Patient-pat-min.html">Patient/pat-min</a> "王小明"</p>
  <p><b>申請日期時間</b>：2026-06-30T09:00:00+08:00</p>
</div>
"""
