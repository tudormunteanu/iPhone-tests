//
//  spriteViewController.m
//  sprite
//
//  Created by Tudor Munteanu on 6/6/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "spriteViewController.h"

@implementation spriteViewController



- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationLandscapeLeft);
}


- (void)viewDidLoad {
    [super viewDidLoad];
	NSArray * imageArray  = [[NSArray alloc] initWithObjects:
							 [UIImage imageNamed:@"1.png"],
							 [UIImage imageNamed:@"2.png"],
							 [UIImage imageNamed:@"3.png"],
							 [UIImage imageNamed:@"4.png"],
							 [UIImage imageNamed:@"5.png"],
							 [UIImage imageNamed:@"6.png"],
							 [UIImage imageNamed:@"7.png"],
							 [UIImage imageNamed:@"8.png"],
							 [UIImage imageNamed:@"9.png"],
							 [UIImage imageNamed:@"10.png"],
							 [UIImage imageNamed:@"11.png"],
							 [UIImage imageNamed:@"12.png"],
							 nil];
	UIImageView * ryuJump = [[UIImageView alloc] initWithFrame:
							 CGRectMake(100, 125, 150, 130)];
	
	ryuJump.animationImages = imageArray;
	ryuJump.animationDuration = 1.1;
	ryuJump.contentMode = UIViewContentModeBottomLeft;
	[self.view addSubview:ryuJump];
	[ryuJump startAnimating];
}


/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
