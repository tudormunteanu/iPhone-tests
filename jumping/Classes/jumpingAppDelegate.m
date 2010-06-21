#import "jumpingAppDelegate.h"
#import "jumpingViewController.h"

@implementation jumpingAppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    // allocate a new view, since we won't
	// be using the Interface Builder
	self.viewController = [jumpingViewController alloc];
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
