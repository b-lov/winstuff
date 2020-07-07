#LAlt:: ; switch to next desktop with Windows key + Left Alt key
  KeyWait LAlt
  SendInput #^{Right}
  Return

#LCtrl:: ; switch to previous desktop with Windows key + Left CTRL key
  KeyWait LCtrl
  SendInput #^{Left}
  Return