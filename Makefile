export ARCHS = armv7 arm64
export TARGET = iphone:clang:9.2:9.2
DEBUG = 0
PACKAGE_VERSION = $(THEOS_PACKAGE_BASE_VERSION)

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = SettingsButtonColor
$(TWEAK_NAME)_FILES = Tweak.xm
$(TWEAK_NAME)_FRAMEWORKS = UIKit
$(TWEAK_NAME)_LIBRARIES = colorpicker

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 Preferences"

clean_::
	@rm -Rf .theos
	@rm -Rf packages
	@rm -Rf obj
SUBPROJECTS += settingsbuttoncolor
include $(THEOS_MAKE_PATH)/aggregate.mk
