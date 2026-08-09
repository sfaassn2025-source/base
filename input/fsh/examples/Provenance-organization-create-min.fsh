Instance: organization-create-provenance-min
InstanceOf: ProvenanceTWSSBase
Title: "機構資料建立歷程範例"
Description: "此範例說明由機構建立機構資料時的 Provenance 紀錄。"
Usage: #example

* target[0] = Reference(org-min)
* recorded = "2026-08-09T12:30:00+08:00"
* activity = http://terminology.hl7.org/CodeSystem/v3-DataOperation#CREATE "create"
* agent[0].who = Reference(org-min)
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <h3><b>機構資料建立歷程</b></h3>
  <p><b>建立活動</b>：<span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">HL7 v3 DataOperation#CREATE</span></p>
  <p><b>被建立資料</b>：<a href="Organization-org-min.html">Organization/org-min</a></p>
  <p><b>建立單位</b>：<a href="Organization-org-min.html">Organization/org-min</a></p>
  <p><b>登錄時間</b>：2026-08-09T12:30:00+08:00</p>
</div>
"""
