sc stop "AdobeARMservice" 
sc stop "AGSService"

sc config "AdobeARMservice" start=disabled
sc config "AGSService" start=disabled


REG ADD "HKLM\SOFTWARE\WOW6432Node\Adobe\Adobe ARM\Legacy\Acrobat\{AC76BA86-1033-FFFF-7760-0C0F074E4100}" /v Mode /t REG_DWORD /d 0 /f
REG ADD "HKLM\SOFTWARE\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown" /v bUpdater /t REG_DWORD /d 0 /f
REG ADD "HKCU\Control Panel\Keyboard" /v InitialKeyboardIndicators /t REG_SZ /d 2 /f
REG ADD "HKU\.DEFAULT\Control Panel\Keyboard" /v InitialKeyboardIndicators /t REG_SZ /d 2 /f
REG ADD "HKU\S-1-5-18\Control Panel\Keyboard" /v InitialKeyboardIndicators /t REG_SZ /d 2 /f
REG ADD "HKU\S-1-5-19\Control Panel\Keyboard" /v InitialKeyboardIndicators /t REG_SZ /d 2 /f
REG ADD "HKU\S-1-5-20\Control Panel\Keyboard" /v InitialKeyboardIndicators /t REG_SZ /d 2 /f
