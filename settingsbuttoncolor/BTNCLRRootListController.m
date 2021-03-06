#import "BTNCLRRootListController.h"
#import <spawn.h>
#import <sys/stat.h>

@implementation BTNCLRRootListController

- (NSArray *)specifiers
{
	if (!_specifiers)
	{
		_specifiers = [[self loadSpecifiersFromPlistName:@"Root" target:self] retain];
	}

	return _specifiers;
}

-(void)close_settings
{
	char *args[] = { "/usr/bin/killall", "-9", "Preferences", NULL };
	pid_t pid;
	int stat;
	posix_spawn(&pid, args[0], NULL, NULL, args, NULL);
	waitpid(pid, &stat, 0);
}
@end
