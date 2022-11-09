#import "SHDWAboutListController.h"

@implementation SHDWAboutListController
- (NSArray *)specifiers {
	if(!_specifiers) {
		_specifiers = [self loadSpecifiersFromPlistName:@"About" target:self];
	}

	return _specifiers;
}

- (NSString *)aboutBypassVersion:(id)sender {
	return @BYPASS_VERSION;
}

- (NSString *)aboutAPIVersion:(id)sender {
	return @API_VERSION;
}

- (NSString *)aboutBuildDate:(id)sender {
	NSString* build = [NSString stringWithFormat:@"%@ %@", @__DATE__, @__TIME__];
	return build;
}

- (NSString *)aboutSoftwareLicense:(id)sender {
	return @"BSD 3-Clause";
}

- (NSString *)aboutDeveloper:(id)sender {
	return @"jjolano";
}
@end
