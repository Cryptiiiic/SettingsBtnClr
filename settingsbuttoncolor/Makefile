include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = SettingsButtonColor
SettingsButtonColor_FILES = BTNCLRRootListController.m
SettingsButtonColor_INSTALL_PATH = /Library/PreferenceBundles
SettingsButtonColor_FRAMEWORKS = UIKit
SettingsButtonColor_PRIVATE_FRAMEWORKS = Preferences

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/SettingsButtonColor.plist$(ECHO_END)
