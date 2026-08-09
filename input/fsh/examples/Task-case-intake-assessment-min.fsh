Instance: case-intake-assessment-min
InstanceOf: CaseIntakeAssessmentTaskTWSSBase
Title: "個案受理與評估範例"
Description: "符合個案受理與評估 Task TWSS Base Profile 的範例。"
Usage: #example

* status = #in-progress
* intent = #order
* businessStatus = TWSSServiceCaseStatus#6 "評估中個案"
* for = Reference(pat-min)
* focus = Reference(case-report-min)
