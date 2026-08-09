Instance: episode-base
InstanceOf: EpisodeOfCareTWSSBase
Title: "個案服務案件基礎範例"
Description: "符合 EpisodeOfCare TWSS Base Profile 的基礎服務案件範例。"
Usage: #example

* identifier[caseNumber].value = "EOC-BASE-001"
* status = #active
* type[0].coding[0] = TWSSEpisodeOfCareType#early-intervention "兒童發展通報轉介及個案管理服務"
* type[0].text = "兒童發展通報轉介及個案管理服務案件"
* patient = Reference(pat-min)
* period.start = "2026-01-01"
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <h3><b>個案服務案件基礎資料</b></h3>
  <blockquote>
    <p><b>案件編號</b>：EOC-BASE-001 （https://example.org/twss/episode-id）</p>
  </blockquote>
  <p><b>案件狀態</b>：Active</p>
  <p><b>案件類型</b>：兒童發展通報轉介及個案管理服務 <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（ <a href="CodeSystem-twss-episode-of-care-type.html">TWSS 個案服務或補助案件類型</a>#early-intervention）</span></p>
  <p><b>個案</b>： <a href="Patient-pat-min.html">Patient/pat-min</a> "王小明"</p>
  <p><b>服務期間</b>：自 2026-01-01 起</p>
</div>
"""
