#import <version.h>
#import "libcolorpicker.h"
NSDictionary *prefsDict = [NSDictionary dictionaryWithContentsOfFile:@"/var/mobile/Library/Preferences/com.cryptic.prefsbuttoncolor.plist"];
%group iOS11
%hook UINavigationBar
-(UIColor *)tintColor
{
	UIColor *color = LCPParseColorString([prefsDict objectForKey:@"TextColor"], @"#007AFF");
	return color;
}
%end
%hook UINavigationBarBackIndicatorView
-(UIColor *)tintColor
{
        UIColor *color = LCPParseColorString([prefsDict objectForKey:@"ArrowColor"], @"#007AFF");
        return color;
}
%end
%end

%group below
%hook UINavigationBar
-(UIColor *)tintColor
{
	UIColor *color = LCPParseColorString([prefsDict objectForKey:@"TextColor"], @"#007AFF");
	return color;
}
%end
%hook _UINavigationBarBackIndicatorView
-(UIColor *)tintColor
{
	UIColor *color = LCPParseColorString([prefsDict objectForKey:@"ArrowColor"], @"#007AFF");
	return color;
}
%end
%end

%ctor
{
		if(kCFCoreFoundationVersionNumber > kCFCoreFoundationVersionNumber_iOS_10_3)
		{
			%init(iOS11);
		}
		else
		{
			%init(below);
		}
}
