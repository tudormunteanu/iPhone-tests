#import "jumpingViewController.h"

@implementation jumpingViewController

@synthesize player;

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}

- (void)normalStance {
	[self.player setImage:[UIImage imageNamed:@"ryu.png"]];
}

- (void)initPlayer {
	self.player = [[UIImageView alloc] initWithFrame:
				   CGRectMake(10, 100, 77.0, 94.0)];
	[self normalStance];
	// explicitly opaque for performance
	self.player.opaque = YES;
	[self.view addSubview:self.player];
}

- (void)cleanStance {
	[self.player setImage:nil];
	self.player.animationImages = nil;
}

-(void)jumpStance {
	[self cleanStance];
	NSArray *imageArray = [[NSArray alloc] initWithObjects:
						   [UIImage imageNamed:@"jump1.png"],
						   [UIImage imageNamed:@"jump2.png"],
						   nil];	
	self.player.animationImages = imageArray;
	self.player.animationDuration = 0.3;
	self.player.contentMode = UIViewContentModeBottomLeft;
	[self.view addSubview:self.player];
	[self.player startAnimating];	
}

-(void)fall:(NSString *)animationID finished:(NSNumber *)finished context:(void *)context {
	[self cleanStance];
	[self normalStance];
    [UIView beginAnimations:nil context:NULL];
	[UIView setAnimationCurve: UIViewAnimationCurveEaseOut];
	[UIView setAnimationBeginsFromCurrentState:YES];
    [UIView setAnimationDuration:0.2];
	self.player.transform = CGAffineTransformMakeTranslation(0, 0);
	[UIView commitAnimations];
}

- (void)jump:(UIImageView *)image {
	[self jumpStance];
	[UIView beginAnimations:nil context:NULL];
	[UIView setAnimationDuration: 0.3];
	[UIView setAnimationCurve: UIViewAnimationCurveEaseOut];
	[UIView setAnimationBeginsFromCurrentState:YES];
	// execute fall after the animation ended
	[UIView setAnimationDelegate:self];
	[UIView setAnimationDidStopSelector:@selector(fall:finished:context:)];	
	image.transform = CGAffineTransformMakeTranslation(0, -40);
	[UIView commitAnimations];
}

- (void)addButton {
	UIButton *button = [[UIButton buttonWithType:UIButtonTypeCustom] 
						initWithFrame:CGRectMake(240, 150, 50, 50)];
	// set the button's image
	[button setBackgroundImage:[UIImage imageNamed:@"button.png"] 
					  forState:UIControlStateNormal];
	// attach an event
	[button addTarget:self action:@selector(buttonPressed)
	 forControlEvents:UIControlEventTouchUpInside];
	//add the button to the view
	[self.view addSubview:button];

}

- (void)buttonPressed {
	[self jump:self.player];
}

- (void)loadView {
	//allocate the view
	self.view = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] applicationFrame]];
	//set the view's background color
	self.view.backgroundColor = [UIColor blackColor];
	// create the background image
	UIImageView *bg = [[UIImageView alloc] initWithFrame:CGRectMake(0 , 0, 572, 206)];
	[bg setImage:[UIImage imageNamed:@"bg.jpg"]];
	[self.view addSubview:bg];
	//create the button
	[self addButton];
	// now initialize the player
	[self initPlayer];
}


- (void)dealloc {
	[player release];
    [super dealloc];
}

@end
