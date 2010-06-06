//
//  MyView.m
//  HelloWorld
//
//  Created by Tudor Munteanu on 6/6/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "MyView.h"


@implementation MyView


- (id)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        // Initialization code
    }
    return self;
}


- (void)drawRect:(CGRect)rect {
    // Drawing code
	NSString *hello   = @"Hello, World!";
	
    CGPoint  location = CGPointMake(50, 20);
	
    UIFont   *font    = [UIFont systemFontOfSize:24.0];
	
    [[UIColor whiteColor] set];
	
    [hello drawAtPoint:location withFont:font];
}


- (void)dealloc {
    [super dealloc];
}


@end
