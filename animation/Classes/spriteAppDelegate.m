//
//  spriteAppDelegate.m
//  sprite
//
//  Created by Tudor Munteanu on 6/6/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "spriteAppDelegate.h"
#import "spriteViewController.h"

@implementation spriteAppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
