//
//  HelloWorldAppDelegate.m
//  HelloWorld
//
//  Created by Tudor Munteanu on 6/6/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "MyViewController.h"
#import "HelloWorldAppDelegate.h"

@implementation HelloWorldAppDelegate

@synthesize window;
@synthesize myViewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
	// using MyViewController class
	MyViewController *aViewController = [[MyViewController alloc]
										 initWithNibName:@"MyViewController" bundle:[NSBundle mainBundle]];	
	[self setMyViewController:aViewController];	
	[aViewController release];

	// declare a sub view	
	UIView *controllersView = [myViewController view];	
	[window addSubview:controllersView];
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [window release];
	[myViewController release];
    [super dealloc];
}


@end
