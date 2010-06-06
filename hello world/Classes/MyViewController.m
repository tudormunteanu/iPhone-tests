//
//  MyViewController.m
//  HelloWorld
//
//  Created by Tudor Munteanu on 6/6/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "MyViewController.h"


@implementation MyViewController

@synthesize textField;
@synthesize label;
@synthesize string;

- (IBAction)changeGreeting:(id)sender {
	self.string = textField.text;
	NSString *nameString = string;
	
    if ([nameString length] == 0) {
        nameString = @"World";		
    }
	
    NSString *greeting = [[NSString alloc] initWithFormat:@"Hello, %@!", nameString];
	label.text = greeting;
    [greeting release];
	
}

- (BOOL)textFieldShouldReturn:(UITextField *)theTextField {
	
    if (theTextField == textField) {		
        [textField resignFirstResponder];
    }	
    return YES;
	
}

- (void)viewDidLoad {	
	
	CGRect frame = CGRectMake(30.0, 70.0, 280.0, 31.0);
    UITextField *aTextField = [[UITextField alloc] initWithFrame:frame];	
    self.textField = aTextField;	
    [aTextField release];	
	
    textField.textAlignment = UITextAlignmentCenter;	
    textField.borderStyle = UITextBorderStyleRoundedRect;
		
	textField.autocapitalizationType = UITextAutocapitalizationTypeWords;
	textField.keyboardType = UIKeyboardTypeDefault;
	textField.returnKeyType = UIReturnKeyDone;
	textField.delegate = self;
	
    [self.view addSubview:textField];
	
}



/*
 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
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
	[textField release];	
    [label release];	
    [string release];
    [super dealloc];
}


@end
