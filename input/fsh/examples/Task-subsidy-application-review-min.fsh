Instance: subsidy-application-review-min
InstanceOf: SubsidyApplicationReviewTaskTWSSBase
Title: "補助申請審查範例"
Description: "符合補助申請審查 Task TWSS Base Profile 的最小範例。"
Usage: #example

* status = #in-progress
* intent = #order
* businessStatus = TWSSApplicationReviewStatus#13 "待核定"
* authoredOn = "2026-09-15T09:00:00+08:00"
* lastModified = "2026-09-15T10:30:00+08:00"
* for = Reference(pat-min)
* focus = Reference(claim-min)
* requester = Reference(org-min)
* owner = Reference(org-min)
