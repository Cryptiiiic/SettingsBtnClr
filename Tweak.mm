#import <version.h>

%group iOS11
%hook UINavigationBar
-(UIColor *)tintColor
{
	UIColor *color = [UIColor redColor];
	return color;
}
%end
%hook UINavigationBarBackIndicatorView
-(UIColor *)tintColor
{
        UIColor *color = [UIColor redColor];
        return color;
}
%end
%end

%group below
%hook UINavigationBar
-(UIColor *)tintColor
{
	UIColor *color = [UIColor redColor];
	return color;
}
%end
%hook _UINavigationBarBackIndicatorView
-(UIColor *)tintColor
{
        UIColor *color = [UIColor redColor];
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