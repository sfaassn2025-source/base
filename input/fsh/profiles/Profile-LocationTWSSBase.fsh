Profile: LocationTWSSBase
Parent: TWCoreLocation
Id: Location-twss-base
Title: "服務地點及托育地址-Location TWSS Base"
Description: "繼承 TW Core IG 0.3.2 的 Location Profile，並補充社福服務地點的管理機構與座標資料。"
* ^version = "0.0.1"
* address only AddressTWSSBase
* address MS
* address ^short = "服務地點或托育地址。"
* managingOrganization only Reference(OrganizationTWSSBase)
* managingOrganization MS
* managingOrganization ^short = "此服務地點所屬機構。"
* position MS
* position.longitude MS
* position.latitude MS
* position.longitude ^short = "機構地址經度。"
* position.latitude ^short = "機構地址緯度。"
