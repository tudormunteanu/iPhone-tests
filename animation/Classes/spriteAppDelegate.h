//
//  spriteAppDelegate.h
//  sprite
//
//  Created by Tudor Munteanu on 6/6/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class spriteViewController;

@interface spriteAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    spriteViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet spriteViewController *viewController;

@end

