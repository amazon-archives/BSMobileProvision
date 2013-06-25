BSMobileProvision
=================

A category for parsing your iOS app's embedded.mobileprovision at runtime. Use it to, among other things, determine at runtime whether your app is being distributed as dev, release, ad hoc, app store, or enterprise.

Usage
-----

```objective-c
#import "UIApplication+BSMobileProvision.h"

NSString *releaseModeString = @"UNKNOWN";
UIApplicationReleaseMode releaseMode = [[UIApplication sharedApplication] releaseMode];
switch (releaseMode) {
	case UIApplicationReleaseAdHoc: releaseModeString = @"AdHoc"; break;
	case UIApplicationReleaseDev: releaseModeString = @"Dev"; break;
	case UIApplicationReleaseAppStore: releaseModeString = @"AppStore"; break;
	case UIApplicationReleaseEnterprise: releaseModeString = @"Enterprise"; break;
	// case UIApplicationReleaseUnknown: releaseType = @"UNKNOWN"; break;
}
NSLog(@"LAUNCHED WITH RELEASE TYPE: %@",releaseModeString);
```

Notes
-----

If you want something less hacky, you should go with something like:

* [DTFoundation's DTASN1Parser](https://github.com/Cocoanetics/DTFoundation/blob/master/Core/Source/DTASN1Parser.m)
* [What is a provisioning profile?](http://www.doubleencore.com/2013/02/what-is-a-provisioning-profile-part-1/)

This was made in part possible due to the following [Stack Overflow](http://stackoverflow.com) contributor references:

* [what to look for in the provisioing profile](http://stackoverflow.com/a/3426899/856925)
* [building a property list from data](http://stackoverflow.com/a/1072365/856925)
* [NSScanner tips](http://stackoverflow.com/a/6826076/856925)
* [the importance of not reading it as UTF8](http://stackoverflow.com/q/17285015/793212)
